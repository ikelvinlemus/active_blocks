# ActiveBlocks::Form
Form Objects

## Usage

Use the `attribute` class method to add fields to the form.

```ruby
class Form < ActiveBlocks::Form
  attribute :name
  attribute :admin, virtual: true
end
```

## The API

Instance methods:  

1. `initialize(model, attributes={})` accepts an instance of the model that the form represents. 

Class methods:  

1. `attribute` accepts the names of attributes to define on the form, you can pass the following options:  
 
- `virtual: true` 
- `type: [Integer]` TODO
