if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAJOSEJKGRDNOYZTLA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['bewordy-app']
  end
end