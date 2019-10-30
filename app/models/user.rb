class User < ApplicationRecord
	has_many :tickets
	has_many :bookings
	
	def User.create_user
		
		user = User.create([{name:'Arif',email: 'Arifm507@gmail.com', age:21},{name:'Tanisha',email: 'abcd@gmail.com', age:20},
			{name:'shubham',email: 'shubham@gmail.com', age:22},{name:'Ravi',email:'Ravi@gmail.com',age:22}])
	
	end
end