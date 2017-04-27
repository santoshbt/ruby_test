This small applicaiton demonstrates the Hard and Soft deletes process.<br />
It uses the Ruby 2.3 and Rails 5.0 versions

Classes:  <br />
Parent Class - Restaurant <br />
Child Class - Cuisine<br />

Associations :
restataurant has_many cuisines <br />
cuisine belongs_to restaurant<br />

Functionality :
--------------

Restaurant: <br />
Creation, Listing, Show, Hard Delete and Soft Delete of Restaurant. <br />
Hard Delete will permanantly delete the restaurant data <br />
Soft Delete will just update a delete flag to true, which makes them inactive<br />
Listing will list only active Restaurants.<br />
Delete will delete all associated cuisines.<br />

Cuisine: <br />
Creation, Hard Delete and listing the cuisines for respective restaurant.<br />
There is no Soft delete for cuisine, which can be same logic as that of Restaurant.<br />
When you open the show page of each restaurant, it will list the cuisines of that restaurant only.<br />

It has the Feature spec covered in spec/features folder
Rspec and Capybara is used.<br />
The tests shows most of the user behaviours while visiting the website pages.<br />


Thanks and Regards,<br />
Santosh T
