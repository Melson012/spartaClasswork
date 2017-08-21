class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 21

    end

    def children
        # create children array here
        children =["child1","child2","child3","child4"]

    end

    def address

        # create address hash here
        address ={
            :house_number => 28,
            :street => "Lion road",
            :town => "harrow",
            :county => "Brent",
            :postcode => "JHG 2HJ",
            :email_addresses => ["mememe@mail.com","mememe2@mail.com"],
            
        }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end