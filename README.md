Email Attachments to S3
=======================

This is a very simple app designed to be a turn-key Heroku deployment that will received email webooks from SendGrid's Parse Incoming API and upload all attachments from the email to a configures S3 bucket.

Prerequisites:
--------------

* Heroku account
* Amazon S3 account & access credentials
* SendGrid account

Getting Started:
----------------

1. Have your S3 credentials handy
2. Click this button -> [![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
3. Fill in the config fields for S3 credentials and the bucket + path to upload your files to
4. Click deploy button and your app should be up & running. Make note of your new app's URL.
5. Configure your Sendgrid account to send Parse webhooks to your new app's URL. (https://sendgrid.com/docs/API_Reference/Webhooks/parse.html)

