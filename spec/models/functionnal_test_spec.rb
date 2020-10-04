require 'rails_helper'

RSpec.describe 'FunctionnalTest' do           #
  context 'before publication' do  # (almost) plain English
    let(:functionnal_test) { FactoryBot.build(:functionnal_test) }
    it 'cannot have comments' do   #
      #expect { Post.create.comments.create! }.to raise_error(ActiveRecord::RecordInvalid)  # test code
      #test bidon de verif que fonctionne

      #expect(FunctionnalTest.count).to eq(1)
      expect(functionnal_test.title).to eq("hello")
    end
  end
end
