require 'spec_helper'

describe User do
  it "is valid with a firstname, lastname and email" do
    user = User.new(
      firstname: 'Tom',
      lastname: 'Brennan',
      email: 'tom@example.com')
    expect(user).to be_valid
  end

  it "is invalid without a firstname" do
    expect(User.new(firstname: nil)).to have(1).errors_on(:firstname)
  end

  it "is invalid without a lastname" do
    expect(User.new(lastname: nil)).to have(1).errors_on(:lastname)
  end

  it "is invalid without an email address" do
    expect(User.new(email: nil)).to have(1).errors_on(:email)
  end

  it "is invalid with a duplicate email address" do
    User.create(
      firstname: 'Joe', lastname: 'Tester',
      email: 'tester@example.com')
    user = User.create(
      firstname: 'Jane', lastname: 'Tester',
      email: 'tester@example.com')
    expect(user).to have(1).errors_on(:email)
  end
end
