class AddNameAndEmailToCandidates < ActiveRecord::Migration[6.0]
  def change
    add_column :candidates, :name, :string
    add_column :candidates, :email, :string
  end
end
