module HelloGay
  VERSION = "0.1.0"

  class Greeter
    # creates a new instance of `Greeter` with optional parameter
    # `custom_greeting : String` set to `String.new` by default.
    # if no `custom_greeting` is specified, `@greeting` is set to
    # "Hello, Gay" until the `set_greeting` method is called.
    def initialize(custom_greeting : String = String.new)
      if custom_greeting == ""
        @greeting = custom_greeting
      else
        @greeting = "Hello, Gay"
      end
    end

    # prints `@greeting` to screen
    def greet
      p @greeting
    end

    # prints "`@greeting`, `someone : String`" to screen
    def greet_someone(someone : String)
      p "#{@greeting}, #{someone}"
    end

    # sets `@greeting` to `new_greeting : String`
    def set_greeting(new_greeting : String)
      @greeting = new_greeting
    end

    # sets `@greeting` to default value "Hello, Gay"
    def set_default
      @greeting = "Hello, Gay"
    end
  end
end
