FactoryBot.define do
  factory :disc_document do
    name { 'Document' }
    type { 'DiscDocument' }
    folder { create(:folder) }
  end
end