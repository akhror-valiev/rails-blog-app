require "rails_helper"

Rspec.describe Comment, type: :model do
	describe "Need increament comments_counter" do
		author = first_user = User.create(name: "Tom", photo: "https://unsplash.com/photos/F_-0BxGuVvo", bio: "Teacher from Mexico.")
		post =  Post.new(author:, title: "This is my last post", comments_count: 1, likes_count: 2)
		before { post.comments_count = 6 }
		it 'Need to increase comments_counter to be 7' do
			comment = Comment.new(post:)
      		comment.update_comments_count
      		expect(post.comments_count).to eq(6)
      	end
    end  	
end