# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week

## Models
- x Post -> date:date rationale:text
- x User -> Devise
- x AdminUser -> STI
- AuditLog

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input -> integrate with Heroku scheduler
- x Administrate admin dashboard
- x Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## TODOS: