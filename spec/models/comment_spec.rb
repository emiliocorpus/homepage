require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "a valid comment" do
  	comment = Comment.create ( { author: "anon", content: "Your article is awesome!" } )
  	it 'has an author' do
  		expect(comment.author).not_to be(false)
  	end
  	it 'has content' do
  		expect(comment.content).to be_truthy
  	end

  end
end
