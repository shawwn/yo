require 'test_helper'

class YoControllerTest < ActionDispatch::IntegrationTest
  test "/yo" do
    get '/yo'
    assert_response :success
    assert_select "body", "yo"
  end

  test "/yo?name" do
    get '/yo?name=ed'
    assert_response :success
    assert_select "body", "yo ed"
  end

  test "/yo.json" do
    get '/yo.json'
    response = JSON.parse(@response.body)
    assert_equal(200, response["code"])
    assert_equal("ok", response["status"])
    assert_equal("yo", response["message"])
  end

  test "/yo.json?name" do
    get '/yo.json?name=ed'
    response = JSON.parse(@response.body)
    assert_equal(200, response["code"])
    assert_equal("ok", response["status"])
    assert_equal("yo ed", response["message"])
  end
end
