module PasswordManagerApi
  class Resource < Base

    def self.resources
      json = get('resources')

      json['operation']['Details'].collect do |resource|
        {id: resource['RESOURCE ID'], name: resource['RESOURCE NAME'], type: resource['RESOURCE TYPE'], description: resource['RESOURCE DESCRIPTION']}
      end
    end

  end
end
