ActiveAdmin.register User do

 permit_params :email, :encrypted_password, :first_name, :last_name, :username, :phone, :birthday, :gender


end
