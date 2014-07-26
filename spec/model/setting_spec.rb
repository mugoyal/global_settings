require 'spec_helper'

describe Setting do

  let(:setting) { FactoryGirl.create(:setting) }

  it "has a valid factory" do
    setting.should be_valid
  end

  it "should store data type correctly" do
    new_setting = FactoryGirl.create(:setting, setting_type: "boolean")
    new_setting.setting_type.should == "boolean"
  end

  it "should return correct value according to data type" do
    new_setting = FactoryGirl.create(:setting, setting_type: "boolean", value: "true")
    eval(new_setting.value).should be true
  end

end