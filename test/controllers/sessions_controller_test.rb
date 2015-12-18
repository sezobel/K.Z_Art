require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end


test "should login" do 
  katie = users(:one)
  post :create, name: katie.name, password: 'secret'
  assert_redirected_to admin_url
  assert_equal katie.id, seesion[:user_id]
end 

test "should fail login" do 
  katie = users(:one) 
  post :create, name: katie.name, password: 'wrong'
  assert_redirect_to login_url 
end 

test "should logout" do 
  delete :destroy
  assert_redirect_to store_url
end
end
