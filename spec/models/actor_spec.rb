require 'rails_helper'

RSpec.describe Actor, type: :model do
  before do
    @actor = FactoryBot.build(:actor)
  end

  describe '俳優ページ投稿' do
    context '俳優ページが投稿できる場合' do
      it 'imageとcommentが存在していれば保存できる' do
        expect(@actor).to be_valid
      end
      it 'commentが空でも保存できる' do
        @actor.comment = ""
        expect(@actor).to be_valid
      end
    end
    context '俳優ページが投稿できない場合' do
      it 'imageが空では保存できない' do
        @actor.image = nil
        @actor.valid?
        expect(@actor.errors.full_messages).to include("Image can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @actor.user = nil
        @actor.valid?
        expect(@actor.errors.full_messages).to include("User must exist")
      end
    end
  end
end