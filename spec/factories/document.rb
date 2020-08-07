FactoryBot.define do
  factory :document do
    name { 'Document' }
    folder { create(:folder) }
  end
end