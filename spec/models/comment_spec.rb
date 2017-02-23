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
  	
  context "nested comments" do
  	grandparent = Comment.create(author: 'Grandparent', content: "I am the grand pappy comment")
  	parent = Comment.create(author: 'Parent', content: "I am the parent comment")
  	grandparent.add_child(parent)

  	it 'have a root comment' do
  		expect(grandparent.children.length).to eq(1)
  	end


  end


  end
end
