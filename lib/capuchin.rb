require 'dotenv'
Dotenv.load

require "capuchin/version"

require "coderay"
require "date"
require "erb"
require "gibbon"
require "redcarpet"
require "yaml"

require "capuchin/markdown"
require "capuchin/email"
require "capuchin/scheduler"
require "capuchin/send"
require "capuchin/mailchimp"

module Capuchin; end
