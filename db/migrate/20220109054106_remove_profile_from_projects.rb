class RemoveProfileFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_reference :projects, :profile, null: false, foreign_key: true
  end
end
