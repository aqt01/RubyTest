require 'yaml'
class Post
attr_accessor :title, :text, :date, :user

	def initialize(title=nil,text=nil, date=nil, user=nil,tag_name=nil, filename=nil) 

		if filename == nil		
			@title = title
			@text = text
			@date = date
			@user = user
		else
			saved_post = Post.new filename
			@title = saved_post.title
			@text = saved_post.text 
			@date = saved_post.date
			@user = saved_post.user
		end
	
	end
	
	
	def summary()
		print @text.split.first(10).join(' ')
	end

	def tag_me(N)
		
	end

	def same?(post)
		if post.date == @date and post.text == @text and post.title == @title
			true
		else
			false

		 
		end
	end
	def save()
	filename = @title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
	filename = filename + '.yml'
	File.open filename, 'w' do |f|
		f.write YAML::dump self	
	end
	end
end


