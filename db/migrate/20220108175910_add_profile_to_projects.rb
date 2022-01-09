class AddProfileToProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :profile, null: false, foreign_key: true
  end
end
