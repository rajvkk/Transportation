# README

This is VarunRaju Kaluvakolanu's solution to the RoR exercise

**Things you may want to cover:**

* Ruby version 2.2.1

**Run [Bundler](http://bundler.io/) to install the project's dependencies:**

```console
$ bundle
```

**Set up the databases on your local machine:**

```console
$ rake db:create
$ rake db:migrate
```

**Finally, start the rails server:**

```console
$ rails s
```

The app should now be available at [http://localhost:3000/](http://localhost:3000/).


* Configuration

In order to access the application bound to rest api, a user has to be authenticated (should have an api key)

**Set up the user on your local machine:**

```console
$ rails c
```

```
> @user = User.create(email: "example@gmail.com", password: "1234", password_confirmation: "1234")
```

** To Log in as authenticated user, run rails s and use these url in the browser:**
	
	 http://localhost:3000/api/v1/stores?api_key=""

 
 




