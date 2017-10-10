# Using URI and Net:HTTP which are already included with Rails

uri = URI('https://urlxray.expeditedaddons.com')

# Change the input parameters here
uri.query = URI.encode_www_form({
  api_key: 'DG3R6H4UL3E9JSY72XP0KC891ZWB16057T84NIOVFAMQ25',
  url: 'http://www.forexarena.com',
  fetch_content: false
})

# Results are returned as a JSON object
result = JSON.parse(Net::HTTP.get_response(uri).body)

# For reference, here are all the outputs

# Is this a valid well-formed URL
result['valid']

# Is this URL actually serving real content
result['real']

# True if this URL responded with an HTTP OK (200) status
result['http_ok']

# The HTTP status code this URL responded with
result['http_status']

# The HTTP status message assoicated with the status code
result['http_status_message']

# True if this URL responded with a HTTP redirect
result['http_redirect']

# The fully qualified URL. This may be different to the URL requested if http-redirect is True
result['url']

# The URL protocol (usually http or https)
result['url_protocol']

# The URL port
result['url_port']

# The URL path
result['url_path']

# A key:value map of the URL query paramaters
result['query']

# The actual content this URL responded with. This is only set if the 'fetch-content' parameter was set
result['content']

# The size of the URL content in bytes
result['content_size']

# The content-type the URL points to
result['content_type']

# The encoding type the URL uses
result['content_encoding']

# The time taken to load the URL content (in seconds)
result['load_time']

# The IP address of the server hosting this URL
result['server_ip']

# The name of the server software hosting this URL
result['server_name']

# Server IP geo-location: full country name
result['server_country']

# Server IP geo-location: ISO 2-letter country code
result['server_country_code']

# Server IP geo-location: full city name (if detectable)
result['server_city']

# Server IP geo-location: full region name (if detectable)
result['server_region']

# The server hostname (PTR)
result['server_hostname']


Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Attempt to read encrypted secrets from `config/secrets.yml.enc`.
  # Requires an encryption key in `ENV["RAILS_MASTER_KEY"]` or
  # `config/secrets.yml.key`.
  config.read_encrypted_secrets = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = true

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = 'http://assets.example.com'

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # for Apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for NGINX

  # Mount Action Cable outside main process or domain
  # config.action_cable.mount_path = nil
  # config.action_cable.url = 'wss://example.com/cable'
  # config.action_cable.allowed_request_origins = [ 'http://example.com', /http:\/\/example.*/ ]

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # Use the lowest log level to ensure availability of diagnostic information
  # when problems arise.
  config.log_level = :debug

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "forex_#{Rails.env}"
  config.action_mailer.perform_caching = false

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use a different logger for distributed setups.
  # require 'syslog/logger'
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
