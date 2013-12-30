class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.string :subject
      t.text :description
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
