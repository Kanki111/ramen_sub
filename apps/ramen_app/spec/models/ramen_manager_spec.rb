require 'rails_helper'

RSpec.describe RamenManager, type: :model do
  describe "#password=" do
  example "文字列を与えると、hashed_password は長さ 60 の文字列になる" do
    member = RamenManager.new
    member.password = "ramen"
    expect(member.hashed_password).to be_kind_of(String)
    expect(member.hashed_password.size).to eq(60)
  end

  example "nil を与えると、hashed_password は nil になる" do
    member = RamenManager.new(hashed_password: "x")
    member.password = nil
    expect(member.hashed_password).to be_nil
  end
end
end
