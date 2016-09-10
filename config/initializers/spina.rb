Spina.configure do |config|
  config.NEGATIVE_CAPTCHA_SECRET = '349b9479ff92d63a04c74e4c58d1fa34959ccf99e63c41120fa908dd4b47f253e815330cbca0d940c548e37000474b359e53279326a1dcf19893575156e1aaa1'

  # Important Note
  # ==============

  # You MUST restart your server before changes to this file
  # will take effect.

  # Specify a backend path. Defaults to /admin.
  # config.backend_path = 'admin'

  # Pages Options
  # ===============

  # Note that you might need to remove cached asset after changing this value
  # config.max_page_depth = 5

  # Storage Options
  # ===============

  # Please specify how you want to store photos, your logo, and
  # other files. We use CarrierWave for storage. See
  # https://github.com/denkGroot/Spina/tree/master/app/uploaders/spina

  # config.storage = :file

  # If you want to use s3 to store uploads (recommended)

  # config.storage = :s3
  # config.aws_region = "eu-west-1"
  # config.aws_access_key_id = "abc123"
  # config.aws_secret_key = "abc123"
  # config.s3_bucket = "mybucket"
  # If you want to store your files localy (not recommended for
  # production, in large part because it's more difficult to ensure
  # that files are backed up in sync with your database):

end
