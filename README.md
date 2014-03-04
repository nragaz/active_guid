# ActiveGuid

Add a GUID column to Active Record instances. Useful for providing an unambiguous ID that doesn't also reveal anything about your database.

There is no way to customize the column name at this time - it has to be `guid`, a string of 32 characters.

Requires UUIDTools ~> 2.1, Rails >= 3 and Ruby 1.9.2.

# Usage

```ruby
create_table :users do |t|
  t.string :guid, limit: 32, unique: true, null: false
end

class User < ActiveRecord::Base
  include ActiveGuid
end

u = User.new
u.guid # => 'e5a49bdd-72a0-4e72-802a-637c22ab6507' or whatever
```

# Changelog

0.0.5: Allows use with Rails 4. Removed `attr_protected :guid` in favor of `strong_parameters`

0.0.3: Use `default_value_for` instead of a `before_validation` callback. So the GUID will be populated when the record is instantiated and can be passed to the client before the record is saved. See [default_value_for](http://github.com/FooBarWidget/default_value_for) for more information.

0.0.2: Handle situations where the default of the GUID column is "" instead of NULL

0.0.1: Initial release
