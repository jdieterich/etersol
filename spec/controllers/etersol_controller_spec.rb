require 'spec_helper'

describe EtersolController do

  describe "GET 'inicio'" do
    it "returns http success" do
      get 'inicio'
      response.should be_success
    end
  end

end
