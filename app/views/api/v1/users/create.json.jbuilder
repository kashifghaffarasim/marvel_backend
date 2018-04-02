json.user do 
 json.first_name @user.try(:first_name)
 json.last_name @user.try(:last_name)
 json.email @user.try(:email)
end