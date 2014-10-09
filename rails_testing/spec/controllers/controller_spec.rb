require 'rails_helper'

describe HomeController do
  describe 'GET #index' do
    context 'when user requests homepage' do
      it 'renders a homepage when the user requests it' do
        get :index
        expect(response).to render_template :index
      end
    end
    context 'populates homepage with a list of users' do
      it 'retrieves the list of users from the model' do
        get :index
        expect(assigns(:user)).to eq(User.all)
      end
    end
  end



end
