module PasswordManagerApi

  class Base


    protected

    def self.get(method)
      fail "The connection is not initialized" if PasswordManager.connection.nil?
      connection = PasswordManager.connection

      http = Net::HTTP.new(connection.host, connection.port)
      http.instance_eval { @ssl_context = OpenSSL::SSL::SSLContext.new(:SSLv3)}
      http.use_ssl = true
      http.ssl_version = 'SSLv3'
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      response = nil
      http.start do |sock|
        response = sock.get("/restapi/json/v1/#{method}/?AUTHTOKEN=#{connection.auth_token}")
      end
      pp response
      pp response.body
      if (Integer(response.code) == 200 )
        JSON.load( response.body )
      else
        fail "Error response - The response code was #{response.code} body: #{response.body}"
      end
    end




  end


end