require 'spec_helper'

describe Movie do
   it "should have proper validations" do
  	should validate_presence_of(:title)
  	should validate_presence_of(:cast)
  	should validate_presence_of(:genre)
  	should validate_presence_of(:duration)
  	should validate_presence_of(:rating)
  end
end
