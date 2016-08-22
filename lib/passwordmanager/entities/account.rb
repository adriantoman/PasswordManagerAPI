module PasswordManagerApi
  class Account < Base

    def self.accounts(resource_id)
      json = get "resources/#{resource_id}/accounts"
      json['operation']['Details']['ACCOUNT LIST'].collect do |resource|
        {id: resource['ACCOUNT ID'], name: resource['ACCOUNT NAME']}
      end
    end

  end
end
