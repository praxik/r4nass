require 'minitest/autorun'
require 'r4nass'


class ApplicationTest < Minitest::Test
  def test_configure_api_key
     R4Nass::Application.configure( api_key: 'a fake key' )
     assert_equal R4Nass::Application.api_key, 'a fake key'  
  end

  def test_throws_on_missing_required_key
    assert_raises RuntimeError do
      R4Nass::Application.configure( mystery: 'xxx' )
    end
  end
end
