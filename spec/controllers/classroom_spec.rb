require "spec_helper"

describe "POST 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

describe "PUT 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

describe "POST 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end