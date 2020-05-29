class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      ## email informations:
      t.string :from
      t.string :to
      t.string :object
      t.text :body

      ## email timestamps:
      t.timestamps
    end
  end
end
