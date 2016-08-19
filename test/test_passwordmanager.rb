require 'minitest/autorun'
require 'passwordmanager'

class PasswordManagerApiTest < MiniTest::Test
  def setup
    PasswordManagerApi::PasswordManager.connect(ENV['host'], 443, ENV['token'])
  end
  def test_get_password_by_name
    assert_equal 'just-a-test', PasswordManagerApi::Password.get_password_by_name('PasswordManagerAPI-Test', 'PasswordManagerAPI-TestAccount')
  end
end
