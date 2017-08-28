class Like

	attr_accessor :id, :image, :title, :body

	def	self.open_connection
		PG.connect(dbname: "faketinder")
	end

	def self.hydrate data
		post = Like.new
		post.id = data['id']
		post.image = data['image']
		post.title = data['title']
		post.body = data['body']

		post
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT id, image, title, body FROM love ORDER BY id"
		results = conn.exec(sql)

		posts = results.map do |result|
			self.hydrate result
		end

		posts
	end

	def self.find id
		conn = self.open_connection
		sql = "SELECT id, image, title, body FROM love WHERE id = '#{id}' LIMIT 1"
		posts = conn.exec(sql)
		post = self.hydrate posts[0]

		post
	end

	def save
		conn = Like.open_connection

		if (!self.id)
			sql = "INSERT INTO love(image,title,body) Values('#{self.image}','#{self.title}','#{self.body}')"
		else
			sql = "UPDATE love SET image='#{self.image}', title='#{self.title}', body='#{self.body}' WHERE id= #{self.id}"
		end
		conn.exec(sql)
	end

	def self.destory id
		conn = self.open_connection
		sql = "DELETE FROM love WHERE id = '#{id}'"
		conn.exec(sql)

	end
end


