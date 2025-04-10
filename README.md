# instagram_clone_data_analysis

The Instagram Clone Database is designed using SQL and consists of multiple tables to store user information, photos, likes, comments, hashtags, and more. Below are the main tables in the schema:
•	Users: Connected to every other table in the dataset
•	Photos: Stores image URL and the user who has posted it
•	Comments: Stores details of comment text, user, and picture
•	Likes: Stores details of the user who has liked the picture
•	Follows: Stores relationship between users i.e., followers & following
•	tags: Stores different hashtags used
•	Photo_tags: Connects hashtags with posted pictures 


Challenges and Queries: Practical Scenarios
Here are a few scenarios I tackled, along with MySQL queries used and their significance:
1.	Finding the Five Oldest Users
2.	Most Popular Registration Days
3.	Users Who Never Posted a Photo
4.	The Most Liked Photo
5.	How many times does the average user post?
6.	Top 5 Most Used Tags
7.	Users Who Liked Every Photo
8.	User who have never commented on a photo
9.	Find the percentage of our users who have either never commented on a photo or have commented on every photo
10.	Retrieve a list of users along with their usernames and the rank of their account creation
11.	Show the tag name and the number of photos associated with that tag. Rank the tags
12.	List the usernames of users who have posted photos along with the count of photos they have posted. Rank them by the number of photos
