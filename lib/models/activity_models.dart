class Activity {
  final String id; 
  final String title;
  final String description; 
  final String url; 
  final double price; 
  final double rating;

  Activity({
    required this.id, 
    required this.title, 
    required this.description, 
    required this.url, 
    required this.price,
    required this.rating
});

  static List<Activity> activities = [
    Activity(
      id: '1', 
      title: 'Cinque Terre Day Trip', 
      description: "Explore the five idyllic fishing village's of Italy's UNESCO-listed Cinque Terre on this guided tour departing from Florence", 
      url: 'assets/images/cinque_terre.jpg', 
      price: 80.00,
      rating: 5,
    ),
    Activity(
      id: '2', 
      title: 'The Dolomites', 
      description: "The Dolomites, a UNESCO World Natural Heritage Site, offer numerous possibilities for routes and itineraries.",
      url: 'assets/images/the_dolomites.jpg', 
      price: 50.00,
      rating: 4,
    ),
    Activity(
      id: '3', 
      title: 'The Lake Braies', 
      description: "Full-day driving tour, set off from Venice to admire their soaring peaks and crystalline lakes.",
      url: 'assets/images/lake_braies.jpg', 
      price: 40.00,
      rating: 4,
    ),
    Activity(
      id: '4', 
      title: 'Colosseum Arena Floor', 
      description: "Exclusive priority access tickets allow you to skip the line and enter the Colosseum through the Gladiator's Gate.",
      url: 'assets/images/colosseum.jpg', 
      price: 70.00,
      rating: 4,
    ),
    Activity(
      id: '5', 
      title: "Venice St. Mark's Basilica", 
      description: "Guarantee your entry into two of Venice's star attractions on a skip-the-line tour of Doge's Palace.",
      url: 'assets/images/basilica.jpg', 
      price: 75.00,
      rating: 3,
    ),
    Activity(
      id: '6', 
      title: "Pompeii and Positano", 
      description: "With this Pompeii, Amalfi Coast and Positano small-group day trip you can mark three sites off your list that are so incredible!",
      url: 'assets/images/amalfi_coast.jpg', 
      price: 85.00,
      rating: 5,
    ), 
    Activity(
      id: '7', 
      title: "Duomo di Milano", 
      description: "See Milan's highlights in just a single day on this guided tour.",
      url: 'assets/images/duomo.jpg', 
      price: 75.00,
      rating: 4,
    ),
    Activity(
      id: '8', 
      title: "Food Tour at Rome", 
      description: "The popular pioneering Food Tour of Trastevere is here to welcome on this tasty experience!",
      url: 'assets/images/food_tour.jpg', 
      price: 45.00,
      rating: 3,
    ), 
    Activity(
      id: '9', 
      title: "Murano & Burano Islands", 
      description: "The islands of Murano and Burano, with their artisan glass and lace workshops.",
      url: 'assets/images/murano_burano.jpg', 
      price: 25.00,
      rating: 3,
    )
  ];


}