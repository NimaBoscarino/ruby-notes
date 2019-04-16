## More Ruby and OOP

### OOPs I did it again

For today's code, check the `jan-07-lecture` folder in this repo: https://github.com/NimaBoscarino/ruby-notes

There are a bunch of other little demos in the other folders.

Also, I suggest reading through this (and the other related Rails docs): http://guides.rubyonrails.org/active_record_basics.html

Today we took a look at a couple different things!

1. Gems, Gemfiles, and using Bundler to install a project's dependencies.

We can list out a project's dependencies, different dependency "groups" (e.g. testing, development, etc.), and different sources for the dependencies. Installing all the required gems can be done by running `bundle install`. All gems are installed system-wide (like a global npm install). Check out the sample `Gemfile` for a really simple example, and also take a look at the Gemfile documentation!

2. What is an ORM?

ORM stands for Object Relational Mapping. Instead of using a query builder like Knex, an ORM will map entries in our database to instances of specific classes, giving us the ability to execute the methods that the class possesses. For example, the entries of a table `People` will be mapped to instances of the class `Person`, which may have the method `<Person>.wave`. With an ORM, we don't have to create these mappings ourselves. The ORM also provides handy querying methods.

3. Active Record

The ORM we are using is called Active Record. Combined with the Active Support gem, we get data-handling super powers! Active Record lets us easily connect to a database and start querying. (Take a look at the `app_config.rb` for this.) All we have to do is set up "models", which are special classes for the objects we are storing in our database.

Active Record uses Active Support to figure out how to interact with our database. For example, Active Support provides the `.pluralize` and `.singularize` methods which allow Active Record to figure out the relationships between models and tables. (Remember to look at the documentation to follow along with the conventions that Active Record expects. E.g. Models are singular, and tables are plural.)

Active Record also makes dealing with "associations" simple. If there is a "books" table and a "authors" table (plus a Book model and an Author model) with "Books" having an "author_id" column, Active Record knows to follow the "author_id" and resolve it to the proper Author.

These are called "associations". Examples of these are `:belongs_to` and `:has_many`. Associations can be one-to-one, one-to-many, many-to-one, or many-to-many. In the example we covered in lecture, we saw a couple of these with Track -> Genre, and Genre -> Tracks.

Once we have our models set up, we can start querying. There are many helpful query functions that Active Record provides. Let's assume we have a model "Person".

- `Person.all`
- `Person.where(name: "Timothy")`
- `Person.find_by(age: 21)`
- `Person.first`
- and many more! http://guides.rubyonrails.org/active_record_querying.html

We also talked a *little* about validation, but we'll see that some more in the Breakout notes.

