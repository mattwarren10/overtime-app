@user = User.create(email: "test@test.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "Larry", 
					last_name: "Bird",
					phone: "8126060312")

puts "1 user created"

AdminUser.create(email: "admin@test.com", 
				password: "asdfasdf", 
				password_confirmation: "asdfasdf", 
				first_name: "Reggie", 
				last_name: "Miller",
				phone: "8126060312")

puts "1 user created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.4)
end

puts "100 posts have been created."

100.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created."