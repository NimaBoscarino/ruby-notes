## More on Active Record

For the code, take a look at the `breakout` folder in this repo: https://github.com/NimaBoscarino/ruby-notes

Also, I suggest reading through these:

http://guides.rubyonrails.org/active_record_callbacks.html
http://guides.rubyonrails.org/active_record_validations.html
http://guides.rubyonrails.org/association_basics.html

### One easy trick to becoming a better Ruby dev – doctors HATE them!

https://github.com/pry/pry

In a similar vein, take a look at `rails c` after your lecture tomorrow (or even better, ask the lecturer about it!).

------

For this breakout we explored some more things that Active Record provides, following the demo that we had set up in the lecture. In these notes I have things for Authors and Books, but in the code it's for Shows, Actors, and Networks.


### 1. Associations

`:has_one` and `:belongs_to` are just the beginning! By using the associations that Active Record provides, we make it simple to connect models. As we saw , if we set the column names properly (e.g. author_id for a books table), we can do things like

```ruby
harry_potter_author = Book.find_by(title: "Harry Potter").author
```

and get an actual Author instance. We also saw that we can make one model **depend** on another model. For example, we can make an Author have many Books, which depend on the author. 

```ruby
# from http://guides.rubyonrails.org/association_basics.html
class Author < ApplicationRecord
    has_many :books, dependent: :destroy
end

class Book < ApplicationRecord
    belongs_to :author
end
```

If an Author then gets deleted, all of their Books also get destroyed. This makes housekeeping a lot easier!

### 2. Validations

There are many cases where we want to ensure that the values being inserted into our database fit certain standards. In these cases we can use **validations**. Validations are declared inside of the model. Validations let us ensure that values be of a certain type, fit within specified ranges, have specific lengths, or more! We're also free to write our own validation methods. If the validation fails, the transaction being performed (e.g. insertion, update) won't be completed.

### 3. Callbacks

You thought you'd escaped callbacks, eh? Callbacks in Active Record provide convenient ways for tapping into the lifecycle of Active Record object. We can **register** the callbacks in the model, and we provide the callback definitions as private methods inside the class. There are tons of options for callback hooks, available when creating, updating, or destroying an object. In the example we looked at, we used a callback to capitalize a song's name before it was inserted into the database.

### More stuff

Here's a post about destroying parents when there are no children left: https://stackoverflow.com/questions/47884847/activerecord-destroy-parent-if-no-children-left

Someone asked a great question about many-to-many things. Here's a post that I think might help: https://stackoverflow.com/questions/5120703/creating-a-many-to-many-relationship-in-rails

If I get some time this week I'll integrate a many-to-many example into my demo!

Cheers,
Nima