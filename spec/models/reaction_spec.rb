require 'rails_helper'

RSpec.describe Reaction, type: :model do
  context 'a proper reaction' do
  	comment = Comment.create(content: "this is a comment")
  	reaction = Reaction.create(category: 1 )
  	comment.reactions << reaction
  	it 'is an integer' do
  		expect(comment.reactions.first.category).to eq(1)
  	end
  	it 'should belong to a comment' do
  		expect(reaction.comment_id).to eq(comment.id)
  	end
  end
end
