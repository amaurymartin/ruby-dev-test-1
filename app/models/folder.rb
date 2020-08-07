class Folder < ApplicationRecord
  has_many :documents
  has_many :children, class_name: 'Folder', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Folder', foreign_key: 'parent_id', optional: true

  validates_presence_of :name, :path
end
