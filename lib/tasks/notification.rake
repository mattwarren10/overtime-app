namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
  	# 1. schedule to run sunday at 5pm
  	# 2. iterate over all employees
  	# 3. skip AdminUsers
  	# 4. send a msg that has instructions and a link to log time
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end  	
  	
  	# no spaces or dashes
  	# exactly 10  characters
  	# all characters have to be a number
  end

end
