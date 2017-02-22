require 'rails_helper'

RSpec.describe Tag, type: :model do
	context 'a valid tag' do
		tag = Tag.create ( { name: "coding" } )
		it 'should have a valid name' do
			expect(tag.name).to eq("coding")
		end

		it 'should be unique' do
			pending
		end
	end
end
