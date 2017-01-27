require 'rails_helper'

describe Api::V1::UserSerializer do
  describe '#as_json' do
    subject { described_class.new user }
    let(:user) { Fabricate(:user) }

    it 'serializes the user correctly' do
      expect(subject.as_json).to eq(
        id: user.id,
        email: user.email
      )
    end
  end
end
