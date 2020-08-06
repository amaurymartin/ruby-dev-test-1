class CreateParentIdOnFolders < ActiveRecord::Migration[5.2]
  def change
    add_reference :folders, :parent
  end
end
