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
end
