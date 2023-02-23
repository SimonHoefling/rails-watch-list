class AddReferencesToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookmarks, :list, index: true, foreign_key: true
    add_reference :bookmarks, :movie, index: true, foreign_key: true
  end
end
