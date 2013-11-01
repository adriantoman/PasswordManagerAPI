module PasswordManagerApi

  class Resource < Base


    def self.resources_list
      json = get("resources")

      resource_list = []
      json["operation"]["Details"].each do |detail|
        resource_list.push(:id => detail["RESOURCE ID"],:name => detail["RESOURCE NAME"],:type => detail["RESOURCE TYPE"],:description => detail["RESOURCE DESCRIPTION"])
      end
      resource_list
    end

    #def self.accounts(resource_id)
    #  json = get("resources/#{resource_id}/accounts")
    #  accounts_list = []
    #  #json["operation"][]
    # end






  end
end