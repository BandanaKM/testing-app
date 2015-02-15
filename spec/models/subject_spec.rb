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


end

