FactoryBot.define do
  factory :s3_document do
    name { 'Document' }
    type { 'S3Document' }
    folder { create(:folder) }
  end
end