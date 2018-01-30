class Blogs < ActiveRecord::Migration[5.1]
  def change
  	create_table :blogs  do |f|
  		f.string :title
  		f.text :description
  		f.datetime :created_at
  		f.datetime :updated_at
  	end
  end
end
