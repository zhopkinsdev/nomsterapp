# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIARCDWWDYVCJPPB2VB"],        # required
    aws_secret_access_key: ENV["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"],
  }
  config.fog_directory  = ENV["nomster01"]              # required
end