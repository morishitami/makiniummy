require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it "全ての値が正しく入力されていれば登録できる" do
        expect(@user).to be_valid
      end
      it 'stage_nameは空でも保存できること' do
        @user.stage_name = ""
        expect(@user).to be_valid
      end
    end
    context '新規登録できない場合' do
      it "codeが空では登録できない" do
        @user.code = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Code Please confirm \"会員番号\"")
      end
      it "nameが空では登録できない" do
        @user.name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "同一emailが既に登録されている場合は登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "emailに＠が含まれていない場合は登録できない" do
        @user.email = "aaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it "passwordとpassword_confirmationが不一致では登録できない" do
        @user.password = "aaaaa1"
        @user.password_confirmation = "bbbbb1"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "passwordが5文字以下では登録できない" do
        @user.password = "1234a"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "passwordに英字が含まれていない場合は登録できない" do
        @user.password = "123456"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password  Include both letters and numbers")
      end
      it "passwordに数字が含まれていない場合は登録できない" do
        @user.password = "abcdef"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password  Include both letters and numbers")
      end
      it "passwordに全角文字が含まれている場合は登録できない" do
        @user.password = "12345aあ"
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include("Password  Include both letters and numbers")
      end
    end
  end
end
