# museum.r

The Met, The MoMA and The Whitney are all a bunch of frauds. If I wanted to learn about artists and their paintings, I would just consult museum.r, a new app that gives me information about an artist and his or her paintings!

**You have been provided with data you are expected to enter into your database**


### Step 1

- Draw an ERD (or create one in Google Drawings) for the relationship between an Artist and Painting.
- **Please take a picture of your ERD or save your Google Drawing and include it in your GitHub issue tonight.**

##### Artist

An Artist should have the following attributes:
- `name`
- `img_url`
- `nationality`
- `birth_year`
- `description`

##### Painting

A Painting should have the following attributes:
- `title`
- `img_url`
- `year_made`
- Do paintings belong to an artist??!?!?!!!?

### Step 2

Now that you have wire-framed your tables, setup your rails migrations and models:

* You should have two models, one for artist and one for paintings.
* There should be relationships linking the two together. **HINT: Does a painting have many artists or does an artist have many paintings?**
* Rake your database and make sure it's all set up.


### Step 3

##### Controllers & Routes

### Artist

Define the 7 RESTful routes for an artist.

verb/route | name | view-file | description
--- | --- | --- | ---
GET /artists | index | *index.html.erb* | Display all the artists
GET /artists/new | new | *new.html.erb* | Form for creating a new artist
POST /artists | create | N/A | Create a new artist and redirect to show
GET /artists/:id | show | *show.html.erb* | Show a single artist
GET /artists/:id/edit | edit | *edit.html.erb* | Form for editing a artist
PUT /artists/:id | update | N/A | Update an existing artist and redirect to that artist's show page
DELETE /artists/:id | destroy | N/A | Delete an artist

### Painting

Define the following RESTful routes for a painting.

verb/route | name | view-file | description
--- | --- | --- | ---
GET /paintings | index | *index.html.erb* | Display all the paintings
GET /artists/:id/paintings/new | new | *new.html.erb* | Form for creating a new painting for an artist
POST /artists/:id/paintings | create | N/A | Create a new painting and redirect to show
GET /paintings/:id | show | *show.html.erb* | Show a single painting
DELETE /paintings/:id | destroy | N/A | Delete a painting

### Step 4

Now that the painting routes have been defined, edit the artist show route so that the response includes that artist's paintings.

**BONUS:** What happens when you delete an artist? Do all his or her paintings delete as well?

### Step 5

#### Input Data

The `museum_info.md` folder contains a list of paintings and artists. Enter all of these in your application so the museums have some information to track. Feel free to add your own artists and paintings.

### Step 6

Style your application!

---

### Don't Forget to Submit!
You know the drill. Submit a GitHub issue on the **class** repo with a URL to **your** fork. Don't forget:
* URL to your submission
* **URL or image of your ERD!!!!!!!!!!**
* Comfortability [0 to 5]
* Completeness [0 to 5]
* What was a win?
* What was a challenge?
* Any other comments

---

###Hints:
- Pretended we were building twitter

```rb
# Create a nested resource
post '/users/:user_id/tweets' do
	user = User.find(params[:user_id])
	user.tweets.create(params[:tweet])
	redirect "/users/#{ user.id }"
end
```

```rb
# Show a user and their tweets
get '/users/:id' do
	user = User.find(params[:id])
	erb :'users/show'
end
```

```html
<!-- Shoe all the users tweets -->
<h2><%= @user.name %></h2>

<ul>
	<% @user.tweets.each do |tweet| %>
		<li>
			<%= tweet.message %>
		</li>
	<% end %>
</ul>
```
