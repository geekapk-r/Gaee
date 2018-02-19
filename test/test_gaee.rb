require 'minitest/autorun'
require 'gaee'

TEST_UID = ENV['GA_UID']
TEST_TOKEN = ENV['GA_TOKEN']
TEST_IS_ADMIN = ENV['GA_ISADMIN'] || Gaee::Meta.authors.include? TEST_UID

# Test for GeekApk API Library
# Tests needs admin rights/user rights to do will be skipped if no login info. is set
class GaeeTest < Minitest::Test
  # Prints a simple 'Hello'
  def test_say_hello
    puts 'Hello'
  end
end
