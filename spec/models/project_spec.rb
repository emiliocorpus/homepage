require 'rails_helper'

RSpec.describe Project, type: :model do
  context "a completed project" do
  	project = Project.create( { title: "My Cool Project", description: "A cool project made via TDD/BDD", pic_url:"image.png", web_url: "www.mycoolproject.com", github_url: "https://github.com/emiliocorpus/my_cool_project.git" } )
  	it 'has a title' do
  		expect(project.title).not_to be_empty
  	end
  	it 'has a description' do
  		expect(project.description).not_to be_empty
  	end
  	it 'has a proper github url' do
  		expect(project.github_url).to start_with("https://github.com")
  	end
  end
end
