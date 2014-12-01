class CreateUsers < ActiveRecord::Migration

  def up
    create_table :users do |t|
    	t.column 'first_name', :string, :limit =>25, :null => false
    	t.string 'last_name', :limit =>25, :null => false
    	t.string 'username', :limit =>20, :null =>false
    	t.string 'email', :limit => 40
    	t.string 'password', :limit => 40, :null =>false
    	t.string 'salt', :limit => 40
    	t.text 'encrypted_password'
      t.timestamps
    end
  end

  def down
  	drop_table :users
  end

end
