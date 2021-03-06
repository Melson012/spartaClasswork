class Post

	attr_accessor :id, :title, :body

	def	self.open_connection
		PG.connect(dbname: "blog")
	end

	def self.hydrate data
		post = Post.new
		post.id = data['id']
		post.title = data['title']
		post.body = data['body']

		post
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT id, title, body FROM post ORDER BY id"
		results = conn.exec(sql)

		posts = results.map do |result|
			self.hydrate result
		end

		posts
	end

	def self.find id
		conn = self.open_connection
		sql = "SELECT id, title, body FROM post WHERE id = '#{id}' LIMIT 1"
		posts = conn.exec(sql)
		post = self.hydrate posts[0]

		post
	end

	def save
		conn = Post.open_connection

		if (!self.id)
			sql = "INSERT INTO post(title,body) Values('#{self.title}','#{self.body}')"
		else
			sql = "UPADTE post SET title='#{self.title}','#{self.body}' WHERE id= '#{self.id}'"
		end
		conn.exec(sql)
	end

	def self.destory id
		conn = self.open_connection
		sql = "DELETE FROM post WHERE id= '#{id}'"
		conn.exec(sql)

	end
end


