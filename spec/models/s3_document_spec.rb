require 'rails_helper'

RSpec.describe S3Document, type: :model do
  subject { build(:s3_document) }

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
      subject { build(:s3_document, name: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:s3_document, folder: nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end

      subject { build(:s3_document, "type": nil) }
      it 'return false' do
        expect(subject.valid?).to eq false
      end
    end
  end
end
