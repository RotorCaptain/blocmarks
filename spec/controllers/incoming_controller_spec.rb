require 'rails_helper'

RSpec.describe IncomingController, type: :controller do
  describe "create" do
    let!(:user) do 
      user = User.new email: "me@gmail.com", password: "password", password_confirmation: "password"
      user.skip_confirmation! 
      user.save!
      user
    end

    def do_post
      post :create, sender: "me@gmail.com", "stripped-text" => "http://bloc.io", subject: "mytopic"
    end

    it "finds the user based on sender param" do
      #testing that user var assigned in the controller is our user
      #POST to create action
      do_post
      expect(assigns(:user)).to eq(user)
    end

    it "sets URL var based on stripped-text" do
      do_post
      expect(assigns(:url)).to eq("http://bloc.io")
    end

    it "creates a topic based on email subject" do  
      expect {do_post}.to change {user.topics.count}
      expect(Topic.last.title).to eq("mytopic")
    end

    #What are we expecting the do_post to change in this spec?
    it "creates a bookmark and associates with topic" do
      do_post
      expect(Topic.first.title).to eq("mytopic")
      expect(Topic.first.bookmarks.first.url).to eq(assigns(:url))      
      #expect (Topic.last.title).to be_a_new()
      #expect(Topic.title).to eq


      #take the subject and create a topic
      #take the url and assign to topic
      #

      
    end


  end
end
