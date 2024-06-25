CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['DO_SPACES_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['DO_SPACES_SECRET_ACCESS_KEY'],
    region:                ENV['DO_SPACES_REGION'],
    endpoint:              ENV['DO_SPACES_ENDPOINT']
  }
  config.fog_directory  = ENV['DO_SPACES_BUCKET']
  config.fog_public     = true  # Đặt là true nếu bạn muốn công khai tệp
end
