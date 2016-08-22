module PasswordManagerApi
  class Password < Base

    def self.get_password_by_name(resource_name, account_name)
      resource_id = Resource.resources.find { |r| r[:name] == resource_name }[:id]
      account_id = Account.accounts(resource_id).find { |a| a[:name] == account_name }[:id]
      get_password_by_id resource_id, account_id
    end

    def self.get_password_by_id(resource_id, account_id)
      json = get "resources/#{resource_id}/accounts/#{account_id}/password"
      json['operation']['Details']['PASSWORD']
    end

  end
end
