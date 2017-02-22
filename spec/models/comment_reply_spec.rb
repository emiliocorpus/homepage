require 'rails_helper'

RSpec.describe CommentReply, type: :model do
  context "a valid reply to a comment" do
  	comment_reply =  CommentReply.create( { author: "anon2", content: "you are horrible at coding!" } )
  	it 'should have an author and content' do
  		expect(comment_reply.author).to eq('anon2')
  		expect(comment_reply.content).not_to be(nil)
  	end
  end
end
