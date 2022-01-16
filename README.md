# README

*Purpose*
------------

1. As a user, I should be able to login on the platform using email address and password.

2. As a logged-in user, I should be able to see a list of all the files that I have uploaded.
  This list should be private and not visible to other users on the platform or to external
  parties.

3. As a logged-in user, I should be able to delete an already uploaded file.

4. As a logged-in user, I should be able to upload a new file while specifying some
  additional info such as a title, description, etc. Once uploaded, the platform should
  figure out the file type and optionally compress it for storage. The file size could be
  anything upto 1GB.

5. As a logged-in user, I should be able to share one of my files publicly.


*TODO*:
------------

1. create tinyURL for uploaded file.
2. We can use Amazon S3 bucket to upload documents.


*Versions*:
------------

* Ruby version - 2.6

* Rails version - 6.1



*IMP GEMs*
------------

  - For user management
      - devise
  - For File Upload management
      - activestorage-validator
  - For Code linting
      - rubocop
  - For Dubugging
      - pry


*Database*
------------
  - postgresql



*STEPS to Run th Project*
------------
 
 1. rake db:create (make changes as per need in config/database.yml)

 2. rails db:migrate

 3. Go to http://localhost:3000/


