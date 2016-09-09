namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    if not_the_weekend
      employees = Employee.all
      notification_message = "Please log into the time tracking dashboard to submit your hours for yesterday: https://wlp-overtime.herokuapp.com"

      employees.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message) if Employee.submitted_yesterday(employee).empty?
      end
    end
  end

  desc "Sends mail notification to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end

  private

    def not_the_weekend
      !Time.now.sunday? || !Time.now.saturday?
    end

end