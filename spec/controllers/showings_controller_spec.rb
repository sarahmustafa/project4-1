require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ShowingsController do

  # This should return the minimal set of attributes required to create a valid
  # Showing. As you add validations to Showing, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    m = Movie.create(:title => "2 Day in New York", 
    :cast => "Julie Delpy, Chris Rock and Albert Delpy",
    :genre => "Comedy", 
    :rating => "R", 
    :duration => "1 hr 36 mins")
    { 
      :movie_id => m.id,
      :showing_time => Time.now,
      :number_of_available_seats => 40
      }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ShowingsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all showings as @showings" do
      showing = Showing.create! valid_attributes
      get :index, {}, valid_session
      assigns(:showings).should eq([showing])
    end
  end

  describe "GET show" do
    it "assigns the requested showing as @showing" do
      showing = Showing.create! valid_attributes
      get :show, {:id => showing.to_param}, valid_session
      assigns(:showing).should eq(showing)
    end
  end

  describe "GET new" do
    it "assigns a new showing as @showing" do
      get :new, {}, valid_session
      assigns(:showing).should be_a_new(Showing)
    end
  end

  describe "GET edit" do
    it "assigns the requested showing as @showing" do
      showing = Showing.create! valid_attributes
      get :edit, {:id => showing.to_param}, valid_session
     assigns(:showing).should eq(showing)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Showing" do
        expect {
          post :create, {:showing => valid_attributes}, valid_session
        }.to change(Showing, :count).by(1)
      end

      it "assigns a newly created showing as @showing" do
        post :create, {:showing => valid_attributes}, valid_session
        assigns(:showing).should be_a(Showing)
        assigns(:showing).should be_persisted
      end

      it "redirects to the created showing" do
        post :create, {:showing => valid_attributes}, valid_session
        response.should redirect_to(Showing.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved showing as @showing" do
        # Trigger the behavior that occurs when invalid params are submitted
        Showing.any_instance.stub(:save).and_return(false)
        post :create, {:showing => { "movie_id" => "invalid value" }}, valid_session
        assigns(:showing).should be_a_new(Showing)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Showing.any_instance.stub(:save).and_return(false)
        post :create, {:showing => { "movie_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

 
end
