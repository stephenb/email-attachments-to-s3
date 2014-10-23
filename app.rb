require 'sinatra'
require 'aws/s3'

# AWS::S3::Base.establish_connection!(
#   :access_key_id => ENV['S3_ACCESS_KEY_ID'],
#   :secret_access_key => ENV['S3_SECRET_ACCESS_KEY']
# )

get '/' do
  "Email Attachments to S3: Running"
end

get '/welcome' do
  "Welcome. Remember you'll also have to configure a Sendgrid account to send Parse Incoming webhooks to this server."
end

post '/parse' do

  puts params

  # AWS::S3::S3Object.store(
  #     "#{id}.html",
  #     result,
  #     ENV['S3_BUCKET'],
  #     :content_type => 'text/html',
  #     :access => :public_read
  # )

  "OK."
end