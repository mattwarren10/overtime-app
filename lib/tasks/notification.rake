namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      
    # 1. schedule to run sunday at 5pm
    # 2. iterate over all employees
    # 3. skip AdminUsers
    # 4. send a msg that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    end
  end
  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all
    if submitted_posts.count > 0
      admin_users.each do |a|
        ManagerMailer.email(a).deliver_later
      end
    end
  end

end
