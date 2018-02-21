require 'minitest/autorun'
require 'gaee'

TEST_UID = ENV['GA_UID']
TEST_TOKEN = ENV['GA_TOKEN']
TEST_IS_ADMIN = ENV['GA_ISADMIN'] || false # Test as super user?

# Test for GeekApk API Library
# Tests needs admin perm/user perm to do will be skipped if no login info is set
class GaeeTest < Minitest::Test
  # Prints a simple 'Hello'
  def test_say_hello
    puts 'Hello'
  end
end
