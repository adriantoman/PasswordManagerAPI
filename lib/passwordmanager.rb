#require "always_verify_ssl_certificates"
require 'httparty'

require './lib/connection.rb'
require './lib/entities/base.rb'
require './lib/entities/resource.rb'
require './lib/entities/account.rb'
require './lib/entities/password.rb'

module PasswordManagerApi

  class PasswordManager

    def self.connect(host, port, auth_token)
      @connection = Connection.new host, port, auth_token
    end

    def self.connection
      @connection
    end

  end
end
