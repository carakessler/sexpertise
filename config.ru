# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'sass/plugin/rack'

use Sass::Plugin::Rack
run Rails.application
 
Sass::Plugin.options[:syntax] = :scss

Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = "2j7frdcg4775m9g5"
Braintree::Configuration.public_key = "kkxmr5r88hjpvxjp"
Braintree::Configuration.private_key = "f575b6580450c93b868e2368f4ea37b"
