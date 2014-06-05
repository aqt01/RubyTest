require 'spec_helper'
require 'post'
describe Post do
	let(:post) {Post.new 'The post', 'This is the very very real post', '04-04-2014','aqt01' }

  describe "#initialize" do
	
    context "with a yaml file" do
      it "should properly load a post from a yaml file"
    end

    context "with proper attributes" do
      it "should properly initialize a post instance" do
	expect(post).to be_instance_of(Post)
	end
    end

  end
  describe "#summary" do
    it "should display the first 10 words of text" do
	expect(post.text.split.first(10).join('')).to be_kind_of(String)
    end

  end

  describe "#tagme" do
    it "should be able to tag with 1 tag"
    it "should be able to tag with 4 tags"
  end

  describe "#same?" do
	
    it "should return true if Title, Date and Text are the same" do
	same_post = Post.new 'The post', 'This is the very very real post', '04-04-2014','aqt01' 

	expect(post.same?(same_post)).to eql(true)
	
	end

    it "should return false if Title, Date and Text are not the same" do

	not_same_post = Post.new 'A post', 'This is the very real post', '04-04-2012','aqt02' 

	expect(post.same?(not_same_post)).to eql(false)

	end

  end

  describe "#display_entry" do
    it "should properly output a post entry"
  end

  describe "#save" do
    it "should save the post to a YAML file"
  end

end
