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
        expect(subject.valid?).to eq false
      end
    end
  end

  describe 'parent and children' do
    context 'with subject as parent' do
      subject { create(:folder) }
      let(:child) { create(:folder, parent: subject) }

      it 'should be able to do parent tree' do
        expect(subject.children).to include(child)
        expect(child.parent).to eq subject
      end
    end
  end
end
