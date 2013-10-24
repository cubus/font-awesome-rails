require 'test_helper'

class FontAwesomeRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine is loaded" do
    assert_equal ::Rails::Engine, FontAwesome::Rails::Engine.superclass
  end

  test "fonts are served" do
    get "/assets/fontawesome-webfont.eot"
    assert_response :success
    get "/assets/fontawesome-webfont.ttf"
    assert_response :success
    get "/assets/fontawesome-webfont.woff"
    assert_response :success
  end

  private

    def clean_sprockets_cache
      FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
    end

end
