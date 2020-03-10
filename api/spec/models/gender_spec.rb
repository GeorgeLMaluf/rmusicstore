require 'rails_helper'

RSpec.describe Gender, type: :model do
  it "is valid when have description" do
    genero = Gender.new( description: 'Blues')
    expect(genero).to be_valid
  end

  it "is not valid when the description is null" do
    genero = Gender.new(description: nil)
    genero.valid?
    expect(genero.errors[:description]).to include("can't be blank")
  end

  it "is not valid when the description is duplicated" do
    genero = Gender.create( description: 'Blues')
    genero = Gender.new(description: 'Blues')
    genero.valid?
    expect(genero.errors[:description]).to include('has already been taken')
  end
end
