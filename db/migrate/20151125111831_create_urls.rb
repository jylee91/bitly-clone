class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |a|
			a.string :original_url
			a.string :short_url
			a.integer :counter, default:0

			a.timestamps null: false
		end
	end
end
