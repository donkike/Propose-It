class CreateProposals < ActiveRecord::Migration
  def self.up
    create_table :proposals do |t|
      t.string :title, :null => false
      t.text :description, :null => false  
      t.string :status, :null => false, :default => Proposal::STATUS[0] 

      t.timestamps
    end
  end

  def self.down
    drop_table :proposals
  end
end
