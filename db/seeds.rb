require "ffaker" 
15.times do 
  Employee.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, email: FFaker::Internet.email, phone: FFaker::PhoneNumber.phone_number, job_title: FFaker::Job.title) 
end 

Department.create(name: "Pringles", manager: "Julius", code: "123")
Department.create(name: "HR", manager: "Tommy", code: "456")
Department.create(name: "Finance", manager: "Michael Scott", code: "666")