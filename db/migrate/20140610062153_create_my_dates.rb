class CreateMyDates < ActiveRecord::Migration
  def change
    create_table :my_dates do |t|
      t.string :org_value

      t.timestamps
    end
  end
end
