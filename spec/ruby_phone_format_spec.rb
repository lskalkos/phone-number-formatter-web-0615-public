require 'spec_helper'

# Question 1
describe "#normalize_phone_number" do
  it "should format a number without spaces or special characters" do 
    expect(normalize_phone_number("1234567890")).to eq("(123) 456-7890")
  end

  it "should format a phone number with parenthesis" do
    expect(normalize_phone_number("(123)4567890")).to eq("(123) 456-7890")
  end

  it "should format a phone number with spaces" do
    expect(normalize_phone_number("123 456 7890")).to eq("(123) 456-7890")
  end

  it "should format a phone number with one hyphen" do
    expect(normalize_phone_number("123-4567890")).to eq("(123) 456-7890")
  end

  it "should format a phone number with hyphens and no parenthesis" do
    expect(normalize_phone_number("123-456-7890")).to eq("(123) 456-7890")
  end

  it "should not format an invalid phone number" do
    expect(normalize_phone_number("123ABF90")).to eq("123ABF90")
  end
end