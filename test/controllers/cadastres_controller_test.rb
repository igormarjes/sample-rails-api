require "test_helper"

class CadastresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastre = cadastres(:one)
  end

  test "should get index" do
    get cadastres_url, as: :json
    assert_response :success
  end

  test "should create cadastre" do
    assert_difference("Cadastre.count") do
      post cadastres_url, params: { cadastre: { born: @cadastre.born, cpf: @cadastre.cpf, name: @cadastre.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cadastre" do
    get cadastre_url(@cadastre), as: :json
    assert_response :success
  end

  test "should update cadastre" do
    patch cadastre_url(@cadastre), params: { cadastre: { born: @cadastre.born, cpf: @cadastre.cpf, name: @cadastre.name } }, as: :json
    assert_response :success
  end

  test "should destroy cadastre" do
    assert_difference("Cadastre.count", -1) do
      delete cadastre_url(@cadastre), as: :json
    end

    assert_response :no_content
  end
end
