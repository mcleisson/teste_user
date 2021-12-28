require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    
    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    }

    describe "GET #index" do
        it "returns a success response" do
            User.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful 
        end
    end
end