class CreateProfesseurs < ActiveRecord::Migration
  def self.up
    create_table :professeurs do |t|
      t.string :nom
      t.string :prenom
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :professeurs
  end
end
