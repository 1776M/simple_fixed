class CreateCholeksyirs < ActiveRecord::Migration
  def self.up
    create_table :choleksyirs do |t|
      t.float :EBITDA_EBITDA
      t.float :EBITDA_EUR
      t.float :EBITDA_USD
      t.float :EBITDA_GBP
      t.float :EBITDA_YEN
      t.float :EBITDA_BRL
      t.float :EUR_EBITDA
      t.float :EUR_EUR
      t.float :EUR_USD
      t.float :EUR_GBP
      t.float :EUR_YEN
      t.float :EUR_BRL
      t.float :USD_EBITDA
      t.float :USD_EUR
      t.float :USD_USD
      t.float :USD_GBP
      t.float :USD_YEN
      t.float :USD_BRL
      t.float :GBP_EBITDA
      t.float :GBP_EUR
      t.float :GBP_USD
      t.float :GBP_GBP
      t.float :GBP_YEN
      t.float :GBP_BRL
      t.float :YEN_EBITDA
      t.float :YEN_EUR
      t.float :YEN_USD
      t.float :YEN_GBP
      t.float :YEN_YEN
      t.float :YEN_BRL
      t.float :BRL_EBITDA
      t.float :BRL_EUR
      t.float :BRL_USD
      t.float :BRL_GBP
      t.float :BRL_YEN
      t.float :BRL_BRL
      t.timestamps
    end
  end

  def self.down
    drop_table :choleksyirs
  end
end
