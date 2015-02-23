require 'spec_helper'

describe "retwets/show" do
  before(:each) do
    @retwet = assign(:retwet, stub_model(Retwet,
      :user_id => 1,
      :twet_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
