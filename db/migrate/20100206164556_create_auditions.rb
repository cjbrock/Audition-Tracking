class CreateAuditions < ActiveRecord::Migration
  def self.up
    create_table :auditions do |t|
      t.string :title, :null => false
      t.string :location, :null => false
      t.datetime :date, :null => false
      t.text :reqs, :null => false
      t.integer :status, :null => false, :default => 0
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :auditions
  end
end
