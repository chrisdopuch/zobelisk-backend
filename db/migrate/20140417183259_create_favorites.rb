class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :favorable, :polymorphic => true
      t.references :user, index: true
      t.timestamps
    end
  end
end
