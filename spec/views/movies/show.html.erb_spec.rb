require 'spec_helper'

describe "movies/show" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "Title",
      :cast => "MyText",
      :genre => "Genre",
      :rating => "Rating",
      :duration => "Duration"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Genre/)
    rendered.should match(/Rating/)
    rendered.should match(/Duration/)
  end
end
