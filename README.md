# README

Team 34

App Website: https://boiling-journey-26265.herokuapp.com/

-There are not many Pull Requests, because we did a lot of google drive sharing. We know it is not good practice. We will try to do better next project.


## Sign Up && Log In && Update Profile && Delete Account && Log Out

* You can sign up with your first name, last name, email, and password as a **Recruiter or Job Seeker**.

* One email can be signed up only once. However, you can **update your roles** between Recruiter and Job Seeker, via _Update Profile_ LINK.

* You will receive a **welcome email** after you sign up, if you provide a **real email address**.

* You will be logged in after you sign up.

* You can log in with your **Facebook account**, using the _Sign in with Facebook_ BUTTON on the sign in page, as long as you haven't supplied a phone number to Facebook. You will be signed up as a **Job Seeker**. If you want to change your role, please click on the _Update Profile_ LINK on the upper corner after you log in, and update your info.

* If you forget your password when you try to log in, just click on the _Forgot your password?_ BUTTON on the sign in page. Provided that you have a **real email address** and are signed up with, it will send you an instrution email for resetting your password.

* If you want to update your profile or delete your account, you can do this via _Update Profile_ LINK.

* After you sign in, if you want to log out, click on the _Log Out_ LINK on the upper corner.




## Admin

**Admin Email: test@test.com**

**Admin Password: password**

#### Create/Read/Update/Delete User

* On **Admin's Homepage**, the _List All Users_ LINK would let Admin to CRUD users. Also Admin will be able to find information such as job seekers' applications and jobs posted by recruiters.

* If a job seeker is deleted by the Admin, job seeker's applications will be deleted as well.

* If a recruiter is deleted by the Admin, job posted by this person will be deleted as well.

#### Create/Read/Update/Delete Application

* On **Admin's Homepage**, the _Show All Applications_ LINK would let Admin to CRUD applications. Also Admin will be able to change application **status**.

* If a application status is updated, job seeker will receive an email notification.

#### Create/Read/Update/Delete Company

* On the **Side Bar**, the _Show All Companies_ LINK would let Admin to CRUD companies. Also Admin will be able to find current job openings from each company.

* If a company is deleted by the Admin, jobs from this company will be deleted as well.

#### Create/Read/Update/Delete Job

* On the **Side Bar**, the _Show All Jobs_ LINK would let Admin to CRUD jobs. Also Admin will be able to find applications for each job. 

* If a job is deleted by the Admin, applications for this job will be deleted as well.




## Recruiter

#### Read/Edit his/her Company && Read all Companies && Create new Company

* On the **Recruiter's Homepage**, the _Show My Company_ LINK would let Recruiter to Read/Edit his/her company.

* On the **Side Bar**, the _Show All Companies_ LINK would let Recruiter to Read all companies, and create new company.

* Recruiter is **NOT ALLOWED** to delete any company.

* Recruiter is **ONLY ALLOWED** to update his/her company.

#### Read/Create/Update/Delete Job

* On the **Recruiter's Homepage**, the _List All Current Job Openings in My Company_ LINK would let Recruiter to Read all the jobs in his/her company, and create new jobs for his/her company. Also Recruiter will be able to find applications for each job in his/her company, and update application submission status for those applications. If a application status is updated, job seeker will receive an email notification.

* On the **Recruiter's Homepage**, the _List All Jobs Posted by Me_ LINK would let Recruiter to CRUD the jobs he/she posted. If Recruiter deletes the job he/she posted, all the applicants will receive an email notification.

* On the **Side Bar**, the _Show All Jobs_ LINK would let Recruiter to Read all jobs, and create new jobs for his/her company.

* Recruiter is **NOT ALLOWED** to Create/Update/Delete jobs posted by other Recruiters.

#### Read Application

* Recruiter is **NOT ALLOWED** to Create/Update/Delete applications.

* Recruiter is **ONLY ALLOWED** to Read applications for the jobs in his/her company.

* Recruiter is **ONLY ALLOWED** to change the submission status for applications for the jobs in his/her company.

* If a application status is updated, job seeker will receive an email notification.




## Job Seeker

#### Read Company

* On the **Side Bar**, the _Show All Companies_ LINK would let Job Seeker Read all companies.

* Job Seeker is **ONLY ALLOWED** to read the company info.

#### Read Job

* On the **Side Bar**, the _Show All Jobs_ LINK would let Job Seeker Read all jobs.

* Job Seeker is **ONLY ALLOWED** to read the job info.

#### Read/Create/Update/Delete his/her Application

* On the **Job Seeker's Homepage**, if Job Seeker has never applied the job, _Apply For Job_ LINK would let Job Seeker Create new application.

* On the **Job Seeker's Homepage**, if Job Seeker has applications, _List All My Applications_ LINK would let Job Seeker CRUD his/her applications, and also read submission status for each application.




## Search Jobs By Companies

* After you sign in, you can find available jobs from the companies you search via name, headquarter, size, industry, etc.




## Testing

* Companies Controller is tested via default test.

* Company Model is tested via RSpec (use this command in terminal: bundle exec rspec spec/models/company_spec.rb).

* We do the testing after writing the code. We know it is not agile at all. We will try to improve next project.




## A Few More Notes:

* For a job seeker, en email will be sent to you if a recruiter changes your application's submission status or closes a job you applied. If you want to test this feature, please use your real email.

* Facebook Login: if you have supplied a phone number to Facebook, and Facebook uses it as it's main authentication method instead of the email address, the Facebook Login will not work.

* We don't provide _BACK_ LINK/functionality, because browser provides this functionality.


