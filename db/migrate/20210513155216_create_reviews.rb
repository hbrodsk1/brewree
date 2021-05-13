class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.boolean :would_recommend
      t.text :comment

      t.timestamps
    end
  end
end
