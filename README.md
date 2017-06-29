# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI
- X AuditLog

## Features:
- Approval workflow 
- SMS Sending -> link to approval or overtime input - integrate with Heroku scheduler
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- X Needs to be documented if employee did not log overtime

## Todos:

## Misc:
- Fix search for posts
- Redirect admin user to admin page when logging in