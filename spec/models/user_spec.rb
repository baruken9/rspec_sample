require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    it "年齢１：ユーザーの名前が取得できること" do
      user = User.new(name: "satou",age: 1)
      expect(user.disp_name).to eq "satouちゃん"
    end
    it "年齢１５：ユーザーの名前が取得できること" do
      user = User.new(name: "satou",age: 15)
      expect(user.disp_name).to eq "satou君"
    end
    it "年齢２０：ユーザーの名前が取得できること" do
      user = User.new(name: "satou",age: 30)
      expect(user.disp_name).to eq "satouさん"
    end
  end
end
