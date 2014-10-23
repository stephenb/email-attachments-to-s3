require 'sinatra'
require 'aws/s3'

AWS::S3::Base.establish_connection!(
  :access_key_id => ENV['S3_ACCESS_KEY_ID'],
  :secret_access_key => ENV['S3_SECRET_ACCESS_KEY']
)

get '/' do
  "Email Attachments to S3: Running"
end

get '/welcome' do
  "Welcome. Remember you'll also have to configure a Sendgrid account to send Parse Incoming webhooks to this server."
end

post '/parse' do

  puts "Received params: #{params}"
  num_attachments = params["attachments"].to_i

  if num_attachments > 0
    puts "Processing #{num_attachments} attachments..."
    num_attachments.times do |n|
      attachment = params["attachment#{n+1}"]
      filename = attachment.original_filename
      data = attachment
      AWS::S3::S3Object.store("#{ENV['S3_PATH']}#{filename}", data, ENV['S3_BUCKET'])
      puts "Uploaded attachment #{n+1}"
    end

  else
    puts "No attachments."
  end

  "Done."
end