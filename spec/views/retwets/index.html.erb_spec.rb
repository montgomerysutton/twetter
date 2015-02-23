require 'spec_helper'

describe "retwets/index" do
  before(:each) do
    assign(:retwets, [
      stub_model(Retwet,
        :user_id => 1,
        :twet_id => 2
      ),
      stub_model(Retwet,
        :user_id => 1,
        :twet_id => 2
      )
    ])
  end

  it "renders a list of retwets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
