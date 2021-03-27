class ChangeContactColumnToString < ActiveRecord::Migration[6.1]
  def up
    change_column :profiles, :contact, :string
  end

  def down
    # Either change the column back, or mark it as irreversible with:
    raise ActiveRecord::IrreversibleMigration
  end
end
