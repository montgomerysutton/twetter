require 'spec_helper'

describe "retwets/new" do
  before(:each) do
    assign(:retwet, stub_model(Retwet,
      :user_id => 1,
      :twet_id => 1
    ).as_new_record)
  end

  it "renders new retwet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", retwets_path, "post" do
      assert_select "input#retwet_user_id[name=?]", "retwet[user_id]"
      assert_select "input#retwet_twet_id[name=?]", "retwet[twet_id]"
    end
  end
end
