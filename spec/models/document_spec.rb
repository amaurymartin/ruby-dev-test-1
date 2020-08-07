require 'rails_helper'

RSpec.describe Document, type: :model do
  subject { build(:document) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:type) }
    it { belong_to(:folder) }

    context 'with no type' do
      it 'return false' do
        expect(subject.valid?).to eq false
      end
    end

    context 'with invalid params' do
      subject { build(:document, name: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:document, folder: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end
    end
  end
end
