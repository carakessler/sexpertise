# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'sass/plugin/rack'

use Sass::Plugin::Rack
run Rails.application
 
Sass::Plugin.options[:syntax] = :scss

Braintree::Configuration.environment = :production
Braintree::Configuration.merchant_id = "wbygj344hp542skh"
Braintree::Configuration.public_key = "55tm3tfcq5r9v6qq"
Braintree::Configuration.private_key = "7ee50010d7c4db425e4d7d4458445a30"
