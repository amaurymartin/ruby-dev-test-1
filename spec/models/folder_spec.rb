require 'rails_helper'

RSpec.describe Folder, type: :model do
  subject { build(:folder) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:path) }

    context 'with valid params' do
      it 'return true' do
        expect(subject.valid?).to eq true
      end
    end

    context 'with invalid params' do
      subject { build(:folder, name: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:folder, path: nil) }
      it 'return false' do
        byebug
        expect(subject.valid?).to eq false
      end
    end
  end
end
