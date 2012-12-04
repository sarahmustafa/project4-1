require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :cast => "MyText",
      :genre => "MyString",
      :rating => "MyString",
      :duration => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path(@movie), :method => "post" do
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "textarea#movie_cast", :name => "movie[cast]"
      assert_select "input#movie_genre", :name => "movie[genre]"
      assert_select "input#movie_rating", :name => "movie[rating]"
      assert_select "input#movie_duration", :name => "movie[duration]"
    end
  end
end
