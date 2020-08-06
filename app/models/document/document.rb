class Document < ApplicationRecord
  belongs_to :folder

  validates_presence_of :name, :type
  validates_associated :folder
end
