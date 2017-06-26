# Overtime App

Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI

## Features:
- Approval workflow 
- SMS Sending -> link to approval or overtime input
- X Administrate admin dashboard
- X Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- X Bootstrap -> formatting
- Icons from Font Awesome
- X Update the styles for forms

## Refactor Todos:
- Refactor user association integration test in post_spec
- Refactor posts/_form for admin user with status
- Fix post_spec.rb:82 to use factories
- Fix post_spec.rb:49 to have correct user reference and not require update
- Fix post_spec.rb:28 to have correct user reference and not require update

## Misc:
- Fix search for posts
- Redirect admin user to admin page when logging in