require 'rails_helper'

RSpec.describe Article, type: :model do
	context 'a published Article' do
		article = Article.create( { title: "Blog1", summary: "this is 1 blog", content: "this is one blog that i made" } )
		it 'has all of the appropriate fields filled in' do
			expect(article.title).to eq('Blog1')
			expect(article.summary).not_to be(nil)
			expect(article.content).to eq('this is one blog that i made')
		end
	end
end
