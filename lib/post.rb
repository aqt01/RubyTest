class Post

attr_accessor :title, :text, :date, :user

	def initialize(title,text, date, user) 
		@title = title
		@text = text
		@date = date
		@user = user
	end
	
	def summary()
		print @text.split.first(10).join(' ')
	end

	def same?(post)
		if post.date == @date and post.text == @text and post.title == @title
			true
		else
			false

		 
		end
	end
end
