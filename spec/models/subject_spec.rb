require 'rails_helper'

RSpec.describe Subject, :type => :model do
  
  it "is valid with a name" do
  	subject = Subject.new(
  		name: 'Jian')
  end 

  it "is invalid without a name" do
    subject = Subject.new(name: nil)
    subject.valid?
    expect(subject.errors[:name]).to include("can't be blank")
  end

  it "is valid with a name shorter than or equal to 20 letters" do
    subject = Subject.new(name: "a")
    subject.valid?
    expect(subject).to be_valid
  end 


  # it "is invalid with a name longer than 20 letters" do
  #   subject = Subject.new(
  #   	name: "t" * 25)
  #   subject.valid?
  #   expect(subject.errors[:name]).to include("can't have a name longer than 20 letters")
  # end 

  # need to figure out above

   it "should have many projects" do
    projects_association = Subject.reflect_on_association(:projects)
    expect(projects_association.macro).to eq(:has_many), "Subject should specify it has a `has_many` association called `projects`."
  end


end

