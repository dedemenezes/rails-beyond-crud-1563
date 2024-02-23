### Full MVC Rails app

#### Model(s)

- *Model* -> *singular*, eg: 'car' , 'child'
- *table* -> *plural*,   eg: 'cars', 'children'

Which columns/attributes should we add to our table? After give it a thought ⤵️

`rails g model :ModelName <attribute_one>:<type> <attribute_two>/<type> ...`

- Check [Migrations](https://guides.rubyonrails.org/active_record_migrations.html#generating-migrations) (add default values?)
- Run migrations `rails db:migrate`
- IS your schema correct? Check your schema file at `db/schema.rb`
- Add [Validations](https://guides.rubyonrails.org/active_record_validations.html#validation-helpers)
- Test crash your models:
  - `rails c`
  - Create a new one instance
  - Ensure validations with `#valid?`
  - Check validations errors using `<instance>.errors.messages`
- Populate database with some data (seeds?)

#### Application part

- Route -------> **only the one you need at the moment**
  - Syntax: verb '/<model_in_plural>', to: 'controller_name#action', as: :prefix
  - Example: get '/books/new', to: 'books#new', as: :new_book
- Controller --> **only the one you need at the moment**
  - Define action method and think about which ActiveRecord method we should use
  - Example⤵️
  ```ruby
  def new
    @book = Book.new
  end
  ```
- View --------> **only the one you need at the moment**
  - Create html to display information
  - Example: `new.html.erb`

🔁 REPEAT
🔁 FOR
🔁 EVERY
🔁 USER
🔁 STORY
