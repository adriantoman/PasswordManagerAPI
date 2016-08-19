module PasswordManagerApi
  class Connection

    attr_accessor :host, :port, :auth_token

    def initialize(host,port,auth_token)
      @host = host
      @port = port
      @auth_token = auth_token
    end

  end
end
