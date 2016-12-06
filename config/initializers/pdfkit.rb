# config/initializers/pdfkit.rb
PDFKit.configure do |config|
  config.wkhtmltopdf = '/usr/local/rvm/gems/ruby-2.3.0/bin/wkhtmltopdf'
  config.default_options = {
    :page_size => 'A4',
    :orientation => 'landscape',
    :print_media_type => true,
    :margin_top    => '0.15in',
    :margin_right  => '0.15in',
    :margin_bottom => '0.15in',
    :margin_left   => '0.15in',
    :disable_smart_shrinking=>false
  }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://0.0.0.0:8080"
  config.verbose = false
end

