require "test_helper"

class ModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model = models(:one)
  end

  test "should get index" do
    get models_url
    assert_response :success
  end

  test "should get new" do
    get new_model_url
    assert_response :success
  end

  test "should create model" do
    assert_difference("Model.count") do
      post models_url, params: { model: { Entry: @model.Entry, calories: @model.calories, carbohydrates: @model.carbohydrates, fats: @model.fats, meal_type: @model.meal_type, proteins: @model.proteins } }
    end

    assert_redirected_to model_url(Model.last)
  end

  test "should show model" do
    get model_url(@model)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_url(@model)
    assert_response :success
  end

  test "should update model" do
    patch model_url(@model), params: { model: { Entry: @model.Entry, calories: @model.calories, carbohydrates: @model.carbohydrates, fats: @model.fats, meal_type: @model.meal_type, proteins: @model.proteins } }
    assert_redirected_to model_url(@model)
  end

  test "should destroy model" do
    assert_difference("Model.count", -1) do
      delete model_url(@model)
    end

    assert_redirected_to models_url
  end
end
