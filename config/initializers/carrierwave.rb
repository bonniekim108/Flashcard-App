
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => "placeholder",
      :aws_secret_access_key => "placeholder",
      :region                => "placeholder",
    }
    config.fog_directory     =  "placeholder"
  end

