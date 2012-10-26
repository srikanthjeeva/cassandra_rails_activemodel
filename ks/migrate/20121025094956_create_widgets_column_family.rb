class CreateWidgetsColumnFamily < ActiveColumn::Migration

  def self.up
    create_column_family :widgets
  end

  def self.down
    drop_column_family :widgets
  end

end