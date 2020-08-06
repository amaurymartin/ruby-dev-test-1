require 'rails_helper'

RSpec.describe BlobDocument, type: :model do
  subject { build(:blob_document) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:type) }
    it { belong_to(:folder) }

    context 'with valid params' do
      it 'return true' do
        expect(subject.valid?).to eq true
      end
    end

    context 'with invalid params' do
      subject { build(:blob_document, name: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:blob_document, folder: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:blob_document, "type": nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end
    end
  end
end
