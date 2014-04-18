class CreatePredictionData < ActiveRecord::Migration
  def change
    create_table :prediction_data do |t|
      t.integer  :gameid
      t.float    :goalswinhome
      t.float    :goalswinaway
      t.integer  :goalslikelyscorehome
      t.integer  :goalslikelyscoreaway
      t.float    :goalslikelyprobability
      t.float    :cornerswinhome
      t.float    :cornerswinaway
      t.integer  :cornerslikelyscorehome
      t.integer  :cornerslikelyscoreaway
      t.float    :cornerslikelyprobability
      t.timestamps
    end
  end
end
