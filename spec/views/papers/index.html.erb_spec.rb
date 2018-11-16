require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      (FactoryBot.create :paper),
      (FactoryBot.create :paper)
    ])
  end

  it "renders a list of papers" do
    render
  end
end
