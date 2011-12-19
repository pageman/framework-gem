class TestHelloWorld < MiniTest::Unit::TestCase
  def setup
    @user = User.new
  end
  
  def test_knock_knock_joke
    assert_equal "Who's there?", @user.knock_knock
  end
end