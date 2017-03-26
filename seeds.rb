require('pry-byebug')
require_relative('models/film')
require_relative('models/ticket')
require_relative('models/customer')

Film.delete_all()
Customer.delete_all()
Ticket.delete_all()

#Setting Up Films

  film1 = Film.new({'title' => 'Pulp Fiction', 'price' => 10})
    film1.save()
  film2 = Film.new({'title' => 'Star Wars: Episode VI', 'price' => 10})
    film2.save()
  film3 = Film.new({'title' => 'The Thing', 'price' => 7})
    film3.save()
  film4 = Film.new({'title' => 'Superbad', 'price' => 10})
    film4.save()
  film5 = Film.new({'title' => 'Alien', 'price' => 10})
    film5.save()
  film6 = Film.new({'title' => 'Aliens', 'price' => 10})
    film6.save()
  film7 = Film.new({'title' => 'Jaws 2', 'price' => 1})
    film7.save()
  film8 = Film.new({'title' => 'Blade Runner', 'price' => 10})
    film8.save()
  film9 = Film.new({'title' => 'Django', 'price' => 10})
    film9.save()
  film10 = Film.new({'title' => 'The Ring', 'price' => 10})
    film10.save()
  film11 = Film.new({'title' => 'Peppa Pigs Adventures', 'price' => 10})
    film11.save()

#Setting Up Customers

  customer1 = Customer.new({'name' => 'Jonathan Mcphee', 'funds' => 22})
  customer1.save()
  customer2 = Customer.new({'name' => 'John Snow', 'funds' => 23})
  customer2.save()
  customer3 = Customer.new({'name' => 'Harry Enfield', 'funds' => 33})
  customer3.save()
  customer4 = Customer.new({'name' => 'Judy Basheer', 'funds' => 42})
  customer4.save()
  customer5 = Customer.new({'name' => 'Lucas Vandross', 'funds' => 52})
  customer5.save()
  customer6 = Customer.new({'name' => 'Larry King', 'funds' => 24})
  customer6.save()
  customer7 = Customer.new({'name' => 'Iam Thompson', 'funds' => 28})
  customer7.save()
  customer8 = Customer.new({'name' => 'Michael Gordon', 'funds' => 44})
  customer8.save()
  customer9 = Customer.new({'name' => 'laura Lammond', 'funds' => 28})
  customer9.save()
  customer10 = Customer.new({'name' => 'Nicole Kidman', 'funds' => 33})
  customer10.save()
  customer11 = Customer.new({'name' => 'Emma Thompson', 'funds' => 13})
  customer11.save()
  customer12 = Customer.new({'name' => 'Tom Hardy', 'funds' => 65})
  customer12.save()
  customer13 = Customer.new({'name' => 'Ewan Watson', 'funds' => 28})
  customer13.save()
  customer14 = Customer.new({'name' => 'Cillian Murphy', 'funds' => 19})
  customer14.save()
  customer15 = Customer.new({'name' => 'Keria Knightley', 'funds' => 29})
  customer15.save()
  customer16 = Customer.new({'name' => 'Jim Roberston', 'funds' => 26})
  customer16.save()
  customer17 = Customer.new({'name' => 'Susan Hockey', 'funds' => 14})
  customer17.save()
  customer18 = Customer.new({'name' => 'Chris Brat', 'funds' => 24})
  customer18.save()
  customer19 = Customer.new({'name' => 'Ridley Scott', 'funds' => 300})
  customer19.save()
  customer20 = Customer.new({'name' => 'Ryan Gosling', 'funds' => 14})
  customer20.save()
  customer21 = Customer.new({'name' => 'Eva Mendes', 'funds' => 54})
  customer21.save()

  # Setting Up Tickets

  ticket1 = Ticket.new({"film_id" => film1.id, "customer_id" => customer1.id})
  ticket2 = Ticket.new({"film_id" => film2.id, "customer_id" => customer17.id})
  ticket3 = Ticket.new({"film_id" => film2.id, "customer_id" => customer11.id})
  ticket4 = Ticket.new({"film_id" => film2.id, "customer_id" => customer1.id})
  ticket5 = Ticket.new({"film_id" => film2.id, "customer_id" => customer12.id})
  ticket6 = Ticket.new({"film_id" => film2.id, "customer_id" => customer7.id})
  ticket7 = Ticket.new({"film_id" => film3.id, "customer_id" => customer8.id})
  ticket8 = Ticket.new({"film_id" => film5.id, "customer_id" => customer19.id})
  ticket9 = Ticket.new({"film_id" => film5.id, "customer_id" => customer19.id})
  ticket10 = Ticket.new({"film_id" => film6.id, "customer_id" => customer19.id})
  ticket11 = Ticket.new({"film_id" => film7.id, "customer_id" => customer3.id})
  ticket12 = Ticket.new({"film_id" => film7.id, "customer_id" => customer20.id})
  ticket13 = Ticket.new({"film_id" => film7.id, "customer_id" => customer16.id})
  ticket14 = Ticket.new({"film_id" => film7.id, "customer_id" => customer17.id})
  ticket15 = Ticket.new({"film_id" => film7.id, "customer_id" => customer3.id})
  ticket16 = Ticket.new({"film_id" => film8.id, "customer_id" => customer16.id})
  ticket17 = Ticket.new({"film_id" => film8.id, "customer_id" => customer17.id})
  ticket18 = Ticket.new({"film_id" => film8.id, "customer_id" => customer3.id})
  ticket19 = Ticket.new({"film_id" => film8.id, "customer_id" => customer5.id})
  ticket20 = Ticket.new({"film_id" => film8.id, "customer_id" => customer1.id})
  ticket21 = Ticket.new({"film_id" => film9.id, "customer_id" => customer6.id})
  ticket22 = Ticket.new({"film_id" => film9.id, "customer_id" => customer19.id})
  ticket23 = Ticket.new({"film_id" => film9.id, "customer_id" => customer4.id})
  ticket24 = Ticket.new({"film_id" => film9.id, "customer_id" => customer17.id})
  ticket25 = Ticket.new({"film_id" => film9.id, "customer_id" => customer12.id})
  ticket26 = Ticket.new({"film_id" => film9.id, "customer_id" => customer11.id})
  ticket27 = Ticket.new({"film_id" => film10.id, "customer_id" => customer20.id})
  ticket28 = Ticket.new({"film_id" => film10.id, "customer_id" => customer17.id})
  ticket29 = Ticket.new({"film_id" => film10.id, "customer_id" => customer15.id})
  ticket30 = Ticket.new({"film_id" => film10.id, "customer_id" => customer7.id})
  ticket31 = Ticket.new({"film_id" => film10.id, "customer_id" => customer5.id})
  ticket32 = Ticket.new({"film_id" => film10.id, "customer_id" => customer1.id})
  ticket33 = Ticket.new({"film_id" => film1.id, "customer_id" => customer4.id})
  ticket34 = Ticket.new({"film_id" => film1.id, "customer_id" => customer14.id})
  ticket35 = Ticket.new({"film_id" => film1.id, "customer_id" => customer2.id})
  ticket36 = Ticket.new({"film_id" => film2.id, "customer_id" => customer4.id})
  ticket37 = Ticket.new({"film_id" => film2.id, "customer_id" => customer7.id})
  ticket38 = Ticket.new({"film_id" => film2.id, "customer_id" => customer9.id})
  ticket39 = Ticket.new({"film_id" => film2.id, "customer_id" => customer3.id})
  ticket40 = Ticket.new({"film_id" => film3.id, "customer_id" => customer16.id})
  ticket41 = Ticket.new({"film_id" => film3.id, "customer_id" => customer12.id})
  ticket42 = Ticket.new({"film_id" => film3.id, "customer_id" => customer11.id})
  ticket43 = Ticket.new({"film_id" => film11.id, "customer_id" => customer1.id})
  ticket44 = Ticket.new({"film_id" => film11.id, "customer_id" => customer12.id})
  ticket45 = Ticket.new({"film_id" => film11.id, "customer_id" => customer3.id})
  ticket46 = Ticket.new({"film_id" => film11.id, "customer_id" => customer9.id})
  ticket47 = Ticket.new({"film_id" => film11.id, "customer_id" => customer10.id})
  ticket48 = Ticket.new({"film_id" => film9.id, "customer_id" => customer4.id})
  ticket49 = Ticket.new({"film_id" => film4.id, "customer_id" => customer10.id})
  ticket50 = Ticket.new({"film_id" => film7.id, "customer_id" => customer1.id})
  ticket51 = Ticket.new({"film_id" => film11.id, "customer_id" => customer20.id})
  ticket52 = Ticket.new({"film_id" => film9.id, "customer_id" => customer19.id})
  ticket53 = Ticket.new({"film_id" => film4.id, "customer_id" => customer18.id})
  ticket54 = Ticket.new({"film_id" => film7.id, "customer_id" => customer17.id})
  ticket55 = Ticket.new({"film_id" => film2.id, "customer_id" => customer21.id})

  ticket1.save
  ticket2.save
  ticket3.save
  ticket4.save
  ticket5.save
  ticket6.save
  ticket7.save
  ticket8.save
  ticket9.save
  ticket10.save
  ticket11.save
  ticket12.save
  ticket13.save
  ticket14.save
  ticket15.save
  ticket16.save
  ticket17.save
  ticket18.save
  ticket19.save
  ticket20.save
  ticket21.save
  ticket22.save
  ticket23.save
  ticket24.save
  ticket25.save
  ticket26.save
  ticket27.save
  ticket28.save
  ticket29.save
  ticket30.save
  ticket31.save
  ticket32.save
  ticket33.save
  ticket34.save
  ticket35.save
  ticket36.save
  ticket37.save
  ticket38.save
  ticket39.save
  ticket40.save
  ticket41.save
  ticket42.save
  ticket43.save
  ticket44.save
  ticket45.save
  ticket46.save
  ticket47.save
  ticket48.save
  ticket49.save
  ticket50.save
  ticket51.save
  ticket52.save
  ticket53.save
  ticket54.save
  ticket55.save

  binding.pry
  nil



