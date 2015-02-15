require 'rails_helper'

describe Project do 
  
  it "is valid with a title, creator, image" do
  	project = Project.new(
  		title: 'Soundbox', 
  		creator: 'Billo', 
  		image: 'image')
  	expect(project).to be_valid
  end 


  it "is invalid without a title" do
    project = Project.new(title: nil)
    project.valid?
    expect(project.errors[:title]).to include("can't be blank")
  end


  it "is invalid without a creator" do
    project = Project.new(creator: nil)
    project.valid?
    expect(project.errors[:creator]).to include("can't be blank")
  end


  it "is invalid without an image" do
    project = Project.new(image: nil)
    project.valid?
    expect(project.errors[:image]).to include("can't be blank")
  end





end
