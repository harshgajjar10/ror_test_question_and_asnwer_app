## Project setup

Install below ruby version:

```sh
ruby-3.1.0
```

Using rails version : 
```sh
Rails 7.0.7
```

Database :
```sh
PostgreSQL
```

Hit below command in terminal to create gemset and install all gems:

```sh
$ cd .
$ bundle install
```

Hit below command in terminal for Creating database, executing all migration and run seed file:
```sh
$ rails db:setup
```

Now turn on the server:
```sh
$ rails s
```



Cover all Steps which mentioned in Question sheet.

- User can create questions, topics and give answers of other question which asked by another user.

- 'Home' button in nav bar redirect to screen where all questions list shown.
- 'My Questions' button in nav bar redirect to screen where all questions list which asked by current logged in user. By clicking on Add Question button user can add more questions too.
- By clicking on Show button of question, current user can read all answers for the question where recent answer showing first.
- By typing in text area user can give answer on that perticular question also.
- 'My Answers' button redirect to screen where all answers list which given by current logged in user.
-  In 'My answers' button in nav bar, listing all answers and can check also those answer's question by clickng on 'Go to Question' button.
- In 'Topics' button in nav bar, user can create topics, follow topics, and see all topics.
- In 'Users' button in nav bar, user can follow another user by clicking on follow button.

- Add validations to models also.
- Cover this On login failure Username/Password incorrect.
- Cover also If someone tries to follow a following topic, Already following.