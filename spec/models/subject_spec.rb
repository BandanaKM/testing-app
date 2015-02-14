require 'rails_helper'

RSpec.describe Subject, :type => :model do

  it "is valid with a name" do
  	subject = Subject.new(
  		name: 'Art')
  	expect(subject).to be_valid
  end 

  # we use Rspec's be_valid match to verify what it has to look like to be valid


end
