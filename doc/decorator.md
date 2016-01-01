# ActiveBlocks::Decorator


## Usage
```ruby

class UserDecorator < ActiveBlocks::Decorator

  attribute :name
  attribute :email
  attribute :admin, virtual: true

end

```

## Constructor
```ruby
User = Struct.new(:name, :email)

user = User.new('John Doe')
user_decorator = UserDecorator.new(user)
```
