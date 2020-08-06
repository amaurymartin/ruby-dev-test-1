class Folder < ApplicationRecord
  validates_presence_of :name, :path
end
