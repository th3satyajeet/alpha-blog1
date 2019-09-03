require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new }
  
  it "requires a category name" do
    expect(category).not_to be_valid
    expect(category.errors[:name].any?).to be_truthy
    
    category.name = "Players"
    expect(category).to be_valid
    expect(category.errors[:name].any?).to be_falsey
  end
  
end

