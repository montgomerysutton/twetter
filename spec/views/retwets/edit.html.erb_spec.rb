require 'spec_helper'

describe "retwets/edit" do
  before(:each) do
    @retwet = assign(:retwet, stub_model(Retwet,
      :user_id => 1,
      :twet_id => 1
    ))
  end

  it "renders the edit retwet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", retwet_path(@retwet), "post" do
      assert_select "input#retwet_user_id[name=?]", "retwet[user_id]"
      assert_select "input#retwet_twet_id[name=?]", "retwet[twet_id]"
    end
  end
end
