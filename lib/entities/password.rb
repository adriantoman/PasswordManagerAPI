module PasswordManagerApi

  class Password < Base

    def self.get_password_by_name(resource_name,account_name)
      json = get("resources/resourcename/#{resource_name}/accounts/accountname/#{account_name}")
      resource_id = json["operation"]["Details"]["RESOURCEID"]
      account_id = json["operation"]["Details"]["ACCOUNTID"]
      get_password_by_id(resource_id,account_id)
    end

    def self.get_password_by_id(resource_id,account_id)
      json = get("resources/#{resource_id}/accounts/#{account_id}/password")
      json["operation"]["Details"]["PASSWORD"]
    end

  end


end