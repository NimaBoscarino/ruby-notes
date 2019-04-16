# W 7 D 2: Breakout w/ Active Record

CRUD actions

```
User.all
Show.find_by
Actor.first
```

```
User.create 'Nima'
Show.create 'New Girl'
Actor.create name: 'Zooey Deschanel', show: 
```

Validations
- form validation (is the password between 5 and 10 characters)

Callbacks
- tap into the lifecycle of an activerecord object

Actor.new






Associations

ONE OBJECT GETS SOMEHOW TIED TO ANOTHER OBJECT(S)

An owner may have many dogs

class Owner < ActiveRecord
  has_many :dogs # any Owner now has a .dogs method that returns an array of dogs
end

class Dog < ActiveRecord
  belongs_to :owner # gives Dog a .owner method
end

