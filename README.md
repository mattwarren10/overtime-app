# Overtime App

Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- X Post -> date:date rationale:text
- X User -> Devise
- X AdminUser -> STI

## Features:
- Approval workflow 
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting

## Refactor Todos:
- Refactor user association integration test in post_spec
- Add full_name method for users