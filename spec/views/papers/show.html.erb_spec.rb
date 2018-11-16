require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = FactoryBot.create :paper  
  end

  it "renders attributes in <p>" do
    render
  end
end
