require 'rails_helper'

RSpec.describe Article, type: :model do
  
  before do
    @article = Article.new(title: 'Demo article for testing', description: 'This article is created for testing purpose only', user_id: 11)
  end


  it "creates a new article" do
    expect(@article).to be_valid
    expect(@article.errors[:title].any?).to be_falsey
    expect(@article.errors[:description].any?).to be_falsey
    expect(@article.errors[:user_id].any?).to be_falsey
  end

  # require a title
  it "requires a title of the Article" do

    @article.title = nil
    
    expect(@article).not_to be_valid
    expect(@article.errors[:title].any?).to be_truthy
  end

  # require a description
  it "requires a description of the Article" do
  
    @article.description = nil
    
    expect(@article).not_to be_valid
    expect(@article.errors[:description].any?).to be_truthy
  end

end
