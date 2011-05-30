class CreateFxrates < ActiveRecord::Migration
  def self.up
    create_table :fxrates do |t|
      t.string :currency_pair
      t.float :fx_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :fxrates
  end
end
