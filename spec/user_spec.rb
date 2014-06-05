require 'spec_helper'

describe User do
	before :all do
	user = User.new('aqt01')
      	user.add_post("Mouse", "This is an awesome mouse", "4-4-2014")
	user.add_post("Keyboard", "Is the most awesome keyboard", "4-4-2014")
	user.add_post("Bed", "A Goodbed","4-4-2014")

	File.open "user.yml", 'w' do |f|
		       f.write YAML::dump orders
		end
	end


  describe "#initialize" do
    it "should properly initialize with an username"
	
	end
  end


  describe "#add_post" do
    it "should add a post to the posts list" do
	user.add_post('The post','A simple post', '4-4-2014')		

	end
  end



  describe "#list" do
    it "should properly ouput all posts" do
	expect(user.list).to be_kind_of(String)
	end
  end

  describe "#find_post_by_title" do

    it "should return a post by title" do
    end

    it "should return the first one if there are several with the same name" do
    end

  end

end
