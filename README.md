# Rails Assessment: Job Board

It's time to put your Rails skills to the test with a more advanced domain!

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Nested Resources
+ Advanced Associations
+ Custom Business Logic
+ Stay calm, focus and code

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

You are building a job board platform. Companies can post jobs, applicants can apply to jobs, and applications track the status and cover letter for each job application. The platform should allow for rich interactions between companies, jobs, applicants, and applications, including status tracking and reporting.

Visiting `/jobs` will list all jobs. Visiting `/companies` will list all companies. The Models, Views, and Controllers for companies, jobs, applicants, and applications need to be built out to support the following requirements.

## Instructions / Deliverables

***Work through the following deliverables. These are more advanced than the original challenge.***

1. On the jobs index page, clicking a job title should take you to the job's show view.
2. On the companies index page, clicking a company's name should take you to the company's show view.
3. The job show view should list all applicants who have applied, and their application status.
4. The company show view should list all jobs posted by the company.
5. Implement a form for applicants to apply to a job, including a cover letter. Prevent duplicate applications.
6. Add a dashboard page for each applicant showing all jobs they've applied to and their statuses.
7. Add validations to ensure applicants cannot apply to the same job twice, and that cover letters are present.
8. Implement a feature for companies to update the status of applications (e.g., pending, interviewed, hired, rejected).
9. Add an admin interface to create/edit/delete jobs and companies.
10. Add a report page for each job showing all applicants and their statuses.
11. Add search functionality to find jobs by title, company, or description.
12. Add pagination to the jobs index page.
13. Add custom scopes to filter jobs (e.g., by industry, status).
14. Add API endpoints to list jobs, companies, and applications (bonus: use serializers).
15. Add notifications for applicants when their application status changes (bonus: use ActionMailer).

### Hints / Tips

+ Use nested resources for applications under jobs and applicants.
+ Use custom model methods to calculate application statistics.
+ Use strong params and model validations to ensure data integrity.
+ Consider using partials for repeated view logic (e.g., job cards, applicant lists).
+ Use Rails' built-in helpers for forms and links.
+ For search and pagination, consider gems like `kaminari` or `will_paginate`.

## Submission

Do not push your changes up to Github. When you finish:

1. If you haven't already, create a custom branch with `git checkout -b custom_branch`.
2. `git add` and `git commit` your changes.
3. From your custom branch, run `git format-patch master --stdout > your_name.patch`, replacing `your_name` with your first and last name.
4. Send the patch file to your instructor on Connect before the specified time. You can use `open .` to launch a Finder window from your current directory, and then drag your file into Connect.
