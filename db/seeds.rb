@employee = Employee.create(email: "test@test.com", 
                    password: "asdfasdf", 
                    password_confirmation: "asdfasdf", 
                    first_name: "Jon", 
                    last_name: "snow",
                    phone: "8040056847")

puts "1 employee created"

AdminUser.create(email: "admin@test.com", 
                password: "asdfasdf", 
                password_confirmation: "asdfasdf", 
                first_name: "Admin", 
                last_name: "Name",
                phone: "8040056847")

puts "1 Admin user created"

AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))


puts "3 Posts have been created"

100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur
            adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim ven
            iam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iru
            re dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur s
            int occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",user_id: @employee.id, overtime_request: 2.5)
end

puts "100 Posts have been created"