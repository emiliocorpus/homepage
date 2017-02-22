require 'rails_helper'

RSpec.describe Skill, type: :model do
  
  context "a properly created skill" do
  	skill = Skill.create( { name: "Rails" } )
  	it 'has a name' do
  		expect(skill.name).to eq('Rails')
  	end

  end
end
