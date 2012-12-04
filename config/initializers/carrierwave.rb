CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['S3_ACCESS_KEY_ID'],      # required
    :aws_secret_access_key  => ENV['S3_SECRET_ACCESS_KEY'],                        # required
    # :region                 => 'eu-west-1'                   # optional, defaults to 'us-east-1'
    # :hosts                  => 's3.example.com'              # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'salsa-dev'                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end