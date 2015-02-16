require 'rails_helper'

RSpec.describe SubjectsController, :type => :controller do

  describe 'GET #index' do
    it "sets @subjects to an array of all subjects" do 
	  art = FactoryGirl.create(:subject, name: 'Art')
	  music = FactoryGirl.create(:subject, name: 'Music')
	  get :index
	  expect(assigns(:subjects)).to match_array([art, music])
	end 

	 it "renders the :index template" do
	   contact = FactoryGirl.create(:subject)
	   get :index
	   expect(response).to render_template :index
	 end
	 
   end 


   describe 'GET #show' do
	  it "sets @subject to the selected subject" do 
	    subject = FactoryGirl.create(:subject)
	    get :show
	    expect(assigns(:subject)).to eq contact
	  end 

	  it "renders the :show template" do
	    contact = FactoryGirl.create(:subject)
	    get :show, id: subject
	    expect(response).to render_template :show
	  end
   end 


   describe 'POST #create' do
	  it "creates a new subject" do 
	    subject = FactoryGirl.create(:subject)
	    existing_subjects = Subject.all
        get :create, subject: {name: "test"}
        expect(assigns(:subject)).to_not be_nil, "Did you assign a subject to @subject?"
    end

	  it "renders the :index template" do
	    contact = FactoryGirl.create(:subject)
	    get :index
	    expect(response).to render_template :index
	  end
   end 


   # describe 'DELETE #destroy' do 
   #   it "deletes the contact" do 
   #     @subject = FactoryGirl.create(:subject)
   #     expect {
   #     delete :destroy, id: @subject
   #     }.to change(Subject, :count).by(-1)
   #   end 

   #  it "redirects to subjects#index"
   #    delete :destroy, id: @subject
   #    expect(response).to redirect_to subjects_url
   #  end 


end