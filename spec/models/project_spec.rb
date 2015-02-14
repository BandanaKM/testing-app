require 'rails_helper'

describe Project do 
  
  it "is valid with a title, creator, image" do
  	project = Project.new(
  		title: 'Soundbox', 
  		creator: 'Billo', 
  		image: 'image')
  	expect(project).to be_valid
  end 


end
