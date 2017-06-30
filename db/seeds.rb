@employee = Employee.create(email: "test@test.com", 
					password: "asdfasdf", 
					password_confirmation: "asdfasdf", 
					first_name: "Larry", 
					last_name: "Bird",
					phone: "8126060312")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", 
				password: "asdfasdf", 
				password_confirmation: "asdfasdf", 
				first_name: "Reggie", 
				last_name: "Miller",
				phone: "8126060312")

puts "1 Admin employee created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 5.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 12.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 19.days))


puts "3 audit logs have been created."

30.times do |post|
	Post.create!(date: Date.today - 3.days, rationale: "ID: #{post}. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum minus, hic assumenda ad alias est reiciendis autem molestias fugit aut explicabo nobis ipsam ducimus et nam aspernatur cumque quae dolores?", user_id: @employee.id, overtime_request: 2.4)
end

30.times do |post|
	Post.create!(date: Date.today - 10.days, rationale: "ID: #{post}. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Harum minus, hic assumenda ad alias est reiciendis autem molestias fugit aut explicabo nobis ipsam ducimus et nam aspernatur cumque quae dolores?", user_id: @employee.id, overtime_request: 2.4)
end

puts "60 posts have been created."

