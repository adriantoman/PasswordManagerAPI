module PasswordManagerApi
  class Base

    protected

    def self.get(method)
      fail 'The connection is not initialized' if PasswordManager.connection.nil?
      connection = PasswordManager.connection

      http = Net::HTTP.new connection.host, connection.port
      http.use_ssl = true
      http.ssl_version = 'TLSv1'

      request = Net::HTTP::Get.new "/restapi/json/v1/#{method}?AUTHTOKEN=#{connection.auth_token}"
      response = http.request request

      fail "Error response - The response code was #{response.code} body: #{response.body}" unless response.is_a? Net::HTTPSuccess
      JSON.load response.body
    end

  end
end
