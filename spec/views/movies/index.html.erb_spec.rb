require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :cast => "MyText",
        :duration => "Duration",
        :genre => "Genre",
        :rating => "Rating"
      ),
      stub_model(Movie,
        :title => "Title",
        :cast => "MyText",
        :duration => "Duration",
        :genre => "Genre",
        :rating => "Rating"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
  end
end
