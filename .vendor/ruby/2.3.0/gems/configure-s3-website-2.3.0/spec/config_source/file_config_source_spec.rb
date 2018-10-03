require 'rspec'
require 'configure-s3-website'
require 'tempfile'

describe ConfigureS3Website::FileConfigSource do
  let(:yaml_file_path) {
    'spec/sample_files/_config_file_with_eruby.yml'
  }

  let(:config_source) {
    ConfigureS3Website::FileConfigSource.new(yaml_file_path)
  }

  it 'can parse files that contain eRuby code' do
    expect(config_source.s3_access_key_id).to eq('hello world')
    expect(config_source.s3_secret_access_key).to eq('secret world')
    expect(config_source.s3_bucket_name).to eq('my-bucket')
  end

  it 'returns the yaml file path as description' do
    expect(config_source.description).to eq(yaml_file_path)
  end

  it 'does not require s3_id, s3_secret or profile ' do
    config_no_credentials = ConfigureS3Website::FileConfigSource.new('spec/sample_files/_config_file_no_credentials.yml')
    expect(config_no_credentials.s3_access_key_id).to be_nil
    expect(config_no_credentials.s3_secret_access_key).to be_nil
    expect(config_no_credentials.profile).to be_nil
    expect(config_no_credentials.s3_bucket_name).to eq('my-bucket')
  end

  describe 'setter for cloudfront_distribution_id' do
    let(:original_yaml_contents) {
      %Q{
s3_id: foo
s3_secret: <%= ENV['my-s3-secret'] %>
s3_bucket: helloworld.com

# This is a comment
      }
    }

    let(:result) {
      config_file = Tempfile.new 'testfile'
      config_file.write original_yaml_contents
      config_file.close
      config_source = ConfigureS3Website::FileConfigSource.new(config_file.path)
      config_source.cloudfront_distribution_id = 'xxyyzz'
      File.open(config_file.path).read
    }

    it 'retains the ERB code' do
      expect(result).to include "<%= ENV['my-s3-secret'] %>"
    end

    it 'appends the CloudFront id as the last enabled value in the YAML file' do
      expected = %Q{
s3_id: foo
s3_secret: <%= ENV['my-s3-secret'] %>
s3_bucket: helloworld.com
cloudfront_distribution_id: xxyyzz

# This is a comment
      }
      expect(result).to eq(expected)
    end
  end
end
