class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text  :body
      t.string  :commenter
      t.references  :commentable, polymorphic: true, index: true
    end
  end
end
