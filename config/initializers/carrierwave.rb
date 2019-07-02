# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AKIARCDWWDYVPTJUMLWP"],        # required
    aws_secret_access_key: ENV["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"],
    :region => ENV[‘US East(N .Virginia)’]        # required
  }
  config.fog_directory  = ENV["nomster01"]              # required
end