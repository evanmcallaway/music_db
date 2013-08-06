class CreateMusicDatabase < ActiveRecord::Migration
  def up
    create_table :compositions do |t|
      t.timestamps
      t.string :title
      t.string :subtitle
    end

    create_table :musicians do |t|
      t.timestamps
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birthdate
      t.date :deathdate
    end

    create_table :arrangerships do |t|
      t.timestamps
      t.references :score
      t.references :musician
    end

    create_table :compositionships do |t|
      t.timestamps
      t.references :composition
      t.references :musician
    end

    create_table :performerships do |t|
      t.timestamps
      t.references :performance
      t.references :musician
    end

    create_table :performances do |t|
      t.timestamps
      t.references :composition
      t.references :score
    end

    create_table :scores do |t|
      t.timestamps
      t.references :composition
    end

    create_table :parts do |t|
      t.timestamps
      t.references :score
    end
  end

  def down
  end
end
