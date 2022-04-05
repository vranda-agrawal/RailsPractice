class CreateBooktitles < ActiveRecord::Migration[7.0]
  def change
    create_table :booktitles do |t|
      t.text :content

      t.timestamps
    end
  end
end
