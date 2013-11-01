# Passwordmanager

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'passwordmanager'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install passwordmanager

## Usage


$PasswordManagerApi::PasswordManager.connect("IP_ADDRESS","PORT","AUTH_TOKEN")

##List resources
$PasswordManagerApi::Resource.resources_list

##Get password by resource and accout name
$PasswordManagerApi::Password.get_password_by_name("RESOURCE_NAME","ACCOUNT_NAME")
##Get password by ids
$PasswordManagerApi::Password.get_password_by_id(resource_id,account_id)



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
