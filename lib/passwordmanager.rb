$: << File.expand_path(File.dirname(__FILE__) + "/")
#require "always_verify_ssl_certificates"
require 'pry'
require 'httparty'

require 'connection'
%w(base password resource).each {|a| require "entities/#{a}"}

module PasswordManagerApi

  class PasswordManager


    def self.connect(host,port,auth_token)
      @connection = Connection.new(host,port,auth_token)
    end

    def self.connection
      @connection
    end



  end
end