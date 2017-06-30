# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI
- X AuditLog

## Features:
- X Approval workflow 
- X SMS Sending -> link to approval or overtime input - integrate with Heroku scheduler
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- X Needs to be documented if employee did not log overtime
- X Create audit log for each text message
- X Need to update end_date when confirmed
- X Need to update audit_log status when an overtime is rejected
- X Update buttons on employee homepage to be responsive
- X Update buttons to include time span
- X Update button sort order on employee homepage
- X Remove unnecessary nav bar buttons for managers
- X Fix admin dashboard bug
- Implement honeybadger error reporting
- Implement new relic for keeping site alive

## Todos:

## Misc:
- Fix search for posts
- Redirect admin user to admin page when logging in