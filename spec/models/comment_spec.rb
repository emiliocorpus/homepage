require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "a valid comment" do
  	article = Article.create( title: "First Post", content: "This is first post content")
  	comment = Comment.create ( { author: "anon", content: "Your article is awesome!" } )
  	article.comments << comment
  	
  	it 'has an author' do
  		expect(comment.author).not_to be(false)
  	end
  	it 'has content' do
  		expect(comment.content).to be_truthy
  	end

  	it 'belongs to an article' do
  		expect(comment.article).to be_kind_of (Article)
  	end
  end
  	
  context "nested comments" do
  	parent = Comment.create(author: 'parent', content: "I am the daddy comment")
  	parent.add_child(Comment.create(author: 'child', content: "I am the child comment"))
  	it 'have a root comment' do
  		expect(parent.children.length).to eq(1)
  	end
  end

end
