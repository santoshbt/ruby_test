This small applicaiton demonstrates the Hard and Soft deletes process.

Classes:  <br />
Parent Class - Restaurant <br />
Child Class - Cuisine

Associations :
restataurant has_many cuisines <br />
cuisine belongs_to restaurant

Functionality :
--------------

Restaurant: <br />
Creation, Listing, Show, Hard Delete and Soft Delete of Restaurant.
Hard Delete will permanantly delete the restaurant data
Soft Delete will just update a delete flag to true, which makes them inactive
Listing will list only active Restaurants.
Delete will delete all associated cuisines.

Cuisine: <br />
Creation, Hard Delete and listing the cuisines for respective restaurant.
There is no Soft delete for cuisine, which can be same logic as that of Restaurant.
When you open the show page of each restaurant, it will list the cuisines of that restaurant only.

It has the Feature spec covered in
spec/features folder
Rspec and Capybara is used.
The tests shows most of the user behaviours while visiting the website pages.


Thanks and Regards,<br />
Santosh T
