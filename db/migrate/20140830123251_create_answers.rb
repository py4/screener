class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :choice
      t.references :submission, index: true

      t.timestamps
    end
  end
end
