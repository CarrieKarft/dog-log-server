# Dog Log

  Dog Log is an application for professional dog wlakers to track the dogs that they walk and the walks that they take the dogs on. This README is attached to the dog-log-server repo. The client portion of this application is located in the dog-log-client repo.

## Tools

  The server is set up using Sinatra
  ActiveRecord is the ORM tool being used to manage the database

## Setup

  Run $bundle install to install gems in Gemfile
  Run $rake db:migrate to execute the migrations of the currently configured migration directory
  Run $rake db:db:seed to seed dtatbase with example data
  Run $rake server to start server at port (http://localhost:9292)

## Rake tasks

  Rake tasks available: 
    $rake server
    $rake console
    $rake --tasks will provide a list of all available rake tasks
    
## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
