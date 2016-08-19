#require "always_verify_ssl_certificates"
require 'httparty'

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

require 'passwordmanager/connection'
require 'passwordmanager/entities/base'
require 'passwordmanager/entities/resource'
require 'passwordmanager/entities/account'
require 'passwordmanager/entities/password'
