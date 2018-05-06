App name: Ingreetients

Tagline: Ingreetients is a social app centered around food.

Backend repo:

Short description: Ingreetients enables people to socialise and meet new people by hosting cooking nights. Users can either create an event or join an existing one. Initially, the app will be targeted at Cornell students. Many students rely on parties to make friends at Cornell. This app will offer an alternative way to socialise for people who don’t like alcohol-based socials but who like cooking.

Implemented features (both iOS and backend implementation):
-Users can see all the upcoming events on the lauch screen (events are downloaded from the server)
-Users can see more information about an event by clicking on a CollectionViewCell
-Users can crate events which are uploaded to the server
-Users can see their profile page with information relating to them, they can change their profile picture by clicking on 'Edit Account'

Additional features (only backend implementation):
-

The app satisfies the iOS project requirements in the following ways:
-it uses Autolayout
-it displays upcoming events using UICollectionView
-it has multiple screens which are presented either modally or using a UITabBarController

Additional information: We didn't have time to implement all the features we planned. However, the following link demonstrates how the final version of our app would look like: https://zpl.io/VDOd7P3. We didn't have time to properly implement the login page, therefore, we hardcoded a valid session token in 'NetwrokManager.swift' as 'sessionToken'.

