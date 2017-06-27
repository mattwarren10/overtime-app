# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI
- AuditLog

## Features:
- Approval workflow 
- SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- X Bootstrap -> formatting
- X Icons from glyphicons
- X Update the styles for forms

## Todos:
- Integrate validation for phone attr in User
	* No spaces or dashes 
	* exactly 10 characters
	* all characters have to be a number

## Misc:
- Fix search for posts
- Redirect admin user to admin page when logging in