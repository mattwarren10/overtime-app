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