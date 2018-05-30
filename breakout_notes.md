## More on Active Record

Here is a gist with some of the code we worked with today: https://gist.github.com/NimaBoscarino/79e079477e3f0f64767235636b739d6e

Also, I suggest reading through these:

http://guides.rubyonrails.org/active_record_callbacks.html
http://guides.rubyonrails.org/active_record_validations.html
http://guides.rubyonrails.org/association_basics.html

Following the lecture, we explored some more things that Active Record provides.


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
