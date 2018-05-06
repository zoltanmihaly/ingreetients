App name: Ingreetients

Tagline: Ingreetients is a social app centered around food.

Backend repo: https://github.coecis.cornell.edu/kc875/Backend-final-project (public)

Short description: Ingreetients enables people to socialise and meet new people by hosting cooking nights. Users can either create an event or join an existing one. Initially, the app will be targeted at Cornell students. Many students rely on parties to make friends at Cornell. This app will offer an alternative way to socialise for people who don’t like alcohol-based socials but who like cooking.

Implemented features (both iOS and backend implementation):
-Users can see all the upcoming events on the lauch screen (events are downloaded from the server)
-Users can see more information about an event by clicking on a CollectionViewCell
-Users can crate events which are uploaded to the server
-Users can see their profile page with information relating to them, they can change their profile picture by clicking on 'Edit Account'

Additional features (only backend implementation):
-Users can log in and create accounts.
-When an account is created, a verification link is sent to the email used to register the account. Until the link is clicked and the email is verified, the account cannot do anything meaningful. The link expires within 60 minutes.
-Users can request another verification link to be emailed to them at any time.
-Users can edit their events and their profiles, updating the information in the database.
-Users can post comments about events, and view comments made by other users on other events.

=Backend endpoints=:

All responses look like: {success: true, data: ...}.
All endpoints marked with $ require a session_token for authentication.

==Events==
$Add event (POST /events): name, time, location, description; returns id of new event
Add user to event (POST /events/add-user): id, email
Remove event (DELETE /events): id
Get future events (GET /events/all): all event data as json
Get event by id (GET /events): id; returns event data as json

==Login==
Login user (POST /users/login): email, password; returns session_token
Create user (POST /users/create): email, password, fname, lname, (profile_picture)

Note that the profile picture is a URL.

==User==
Get user details (GET /users): email; returns user data as json

==Updating==
$Update event (POST /events/update): id, (name), (time), (location), (description); returns event data as json
$Update user (POST /users/update): email, [user details, all optional]; returns user data as json

==Comments==
$Post new comment (POST /comments/new): event_id, text, returns new comment id
Get all comments for an event (GET /comments/event/<event_id>): returns comment data as json array of dictionaries
Get all comments by a user (GET /comments/user): email; returns comment data as json array of dictionaries


The app satisfies the iOS project requirements in the following ways:
-it uses Autolayout
-it displays upcoming events using UICollectionView
-it has multiple screens which are presented either modally or using a UITabBarController

Additional information: We didn't have time to implement all the features we planned. However, the following link demonstrates how the final version of our app would look like: https://zpl.io/VDOd7P3. We didn't have time to properly implement the login page, therefore, we hardcoded a valid session token in 'NetwrokManager.swift' as 'sessionToken'.

Note: both the database and the flask app are deployed on AWS and not on Google Cloud, due to issues with deploying there.
