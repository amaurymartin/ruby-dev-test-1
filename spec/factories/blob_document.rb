FactoryBot.define do
  factory :blob_document do
    name { 'Document' }
    type { 'BlobDocument' }
    folder { create(:folder) }
  end
end