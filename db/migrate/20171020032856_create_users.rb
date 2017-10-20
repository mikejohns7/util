class CreateUsers < ActiveRecord::Migration[5.1]
    def change
        create_table :users do |t|
            t.string        :name
            t.string        :email
            t.string        :password_hash
            t.integer       :active
            t.integer       :admin
            t.timestamps
        end
    end
end
