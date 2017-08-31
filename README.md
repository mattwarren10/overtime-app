# Overtime App

## Key requirement
Company needs documentation that salaried employees did or did not get overtime each week

## Models
- Post -> date:date work_performed:text
- User -> Devise
- AdminUser -> STI
- AuditLog

## Features:
- Approval workflow 
- SMS Sending
  - Link to approval or overtime input
  - Integrate with Heroku scheduler 
  - Use Twilio API
  - Develop modules
- Use Administrate gem to create admin dashboard
- Block non admin and guest users
  - Pundit gem
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime
- Create audit log for each text message
- Need to update end_date when confirmed
- Need to update audit_log status when an overtime is rejected
- Update buttons on employee homepage to be responsive
- Update buttons to include time span
- Update button sort order on employee homepage
- Remove unnecessary nav bar buttons for managers
- Fix admin dashboard bug
- Implement honeybadger error reporting
- Implement new relic for keeping site alive

## Todos:

## Misc:
- Fix search for posts
- Redirect admin user to admin page when logging in