# Showoff Widgets API application

Showoff widgets application is developed using Ruby on Rails. This application performs the following task:
1. Landing Page should present a list of Visible Widgets
   . This should be searchable, using the API.
2. Allow Users to Login/Logout/Register/Reset Password via Modal.
3. On the landing page, each item in the list of Widgets should include a reference to the User that
created it.
4. Once logged in the User should be able to navigate to a view of their Widgets.
   . They should also be able to create a new widget from this view.

#### Technology Stack
1. Ruby version: 2.7.0
2. Ruby on Rails Version: 5.2.4.1
3. HTML5
4. CSS3
 

#### User Stories
- [x] As a guest user, I should be able to view the index page.
- [ ] As a guest user, I should be able to register with valid credetial.
- [ ] As a guest user, I should should not be able to register with invalid credetial.
- [x] As a guest user, I should be able to login with valid credential.
- [ ] As a guest user, I should not be able to login with invalid credential.
- [x] As a logged in user, I should view the list visible widgets on landing page.
- [x] As a logged in user, I should be able to search visible widgets on landing page.
- [ ] As a logged in user, I should see a message if no result found on landing page.
- [x] As a logged in user, I should be able to view the reference of Users for each widgets.
- [x] As a logged in user, I should view my widget page.
- [x] As a logged in user, I should be able to create a widget.


#### TODO

- [ ] Need to implement cache for API calls.
- [ ] 


#### IMPORTANT NOTE:
1. The Logo is used under non copyright license, and anyone can use it.
2. For table I could have used datatables framework, but as this is a test assignment so I thought of using minimum third party packages / libraries.
3. 


### Required Widgets application API
1. Once logged in the User should be able to navigate to a view of their Widgets.
**URL:**  https://showoff-rails-react-production.herokuapp.com/api/v1/users/me/widgets
**client_id:** XXXX
**client_secret:** XXXX

2. They should also be able to create a new widget from this view.
**URL:** https://showoff-rails-react-production.herokuapp.com/api/v1/widgets
**BODY:**
```json
{
	"widget": {
		"name": "A Hidden Widget",
		"description": "Widget 1",
		"kind": "hidden"
	}
}
```

3. Allow Users to Login/Logout/Register/Reset Password via Modal.
__LOGIN:__
**URL:**  https://showoff-rails-react-production.herokuapp.com/oauth/token
**BODY:**
```json
{
    "grant_type": "password",
    "client_id": "XXXX",
    "client_secret": "XXXX",
    "username": "user@example.com",
    "password": "password"
}
```

__LOGOUT:__
**URL:** https://showoff-rails-react-production.herokuapp.com/oauth/revoke
**BODY:**
```json
{
	"token":"b530f9ad13a061b36aa342b255608e18960db09cfd977cab8c1de9a0f8226024"
}
```

__Register:__
**URL:** https://showoff-rails-react-production.herokuapp.com/api/v1/users
**BODY:**
```json
{
	"client_id": "XXXX",
	"client_secret": "XXXX",
	"user": {
		"first_name": "A",
		"last_name": "User",
		"password": "password",
		"email": "user@example.ie",
		"image_url": "https://static.thenounproject.com/png/961-200.png"
	}
}
```

__Reset Password:__
**URL:** https://showoff-rails-react-production.herokuapp.com/api/v1/users/reset_password
**BODY:**
```json
{
   "user" : {
       "email" : "michael@showoff.ie"
   },
   "client_id": "XXXX",
   "client_secret": "XXXX"
}
```




* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
.


