# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Question.destroy_all
User.destroy_all

#seeding a user to test log in etc, even after a db:drop
User.create(
    first_name: "Claire", 
    last_name: "Steinhoff", 
    username: "claire", 
    password_digest: "$2a$12$0yPXp0QdIpMOdlwp6OvAk.W2KPRjD0q2gX7txK24b/eE4Y9MCg8UO",
    image_url: "https://media-exp1.licdn.com/dms/image/D5603AQF9uigUo2kWQA/profile-displayphoto-shrink_800_800/0/1668648375793?e=1676505600&v=beta&t=WZE3PBjYY0Wr3MFcB9N8LI2ljJ62M_WQwrjm5VUVQJk"
  )

User.create(
    username: "claire2",
    first_name: "Claire", 
    last_name: "Steinhoff",
    password_digest: "$2a$12$sLsUammUFB0JG9bEUJjdZOZ8MHkiRBHq5FjppDdjpT1//7uuryR8W",
    image_url: ""
)


### I'm going to start by seeding questions by category and difficulty:


## Film, difficulty: easy ##

[
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "What name did Tom Hanks give to his volleyball companion in the film `Cast Away`?",
      correct_answer: "Wilson",
      incorrect_answer_1: "Friday",
      incorrect_answer_2: "Jones",
      incorrect_answer_3: "Billy"
      
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "Which actress danced the twist with John Travolta in &#039;Pulp Fiction&#039;?",
      correct_answer: "Uma Thurman",
      incorrect_answer_1: "Kathy Griffin", 
      incorrect_answer_2: "Pam Grier", 
      incorrect_answer_3: "Bridget Fonda"
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "This movie contains the quote, &quot;I feel the need ... the need for speed!&quot;",
      correct_answer: "Top Gun",
      incorrect_answer_1: "Days of Thunder",
      incorrect_answer_2: "The Color of Money",
      incorrect_answer_3: "Cocktail"
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "What is the orange and white bot&#039;s name in &quot;Star Wars: The Force Awakens&quot;?",
      correct_answer: "BB-8",
      incorrect_answer_1: "BB-3",
      incorrect_answer_2: "AA-A",
      incorrect_answer_3: "R2-D2"
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "Who is the main protagonist in, the 1985 film, Back to the Future?",
      correct_answer: "Marty McFly",
      incorrect_answer_1: "Emmett &quot;Doc&quot; Brown",
      incorrect_answer_2: "Biff Tannen",
      incorrect_answer_3: "George McFly"
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "In &quot;Jurassic World&quot;, what is the name of the dinosaur that is a genetic hybrid?",
      correct_answer: "Indominus Rex",
      incorrect_answer_1: 'Mosasaurus', 
      incorrect_answer_2: 'Pteranodon', 
      incorrect_answer_3: 'Tyrannosaurus Rex'
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "When does &quot;Rogue One: A Star Wars Story&quot; take place chronologically in the series?",
      correct_answer: "Between Episode 3 and 4",
      incorrect_answer_1: 'After Episode 6',
      incorrect_answer_2: 'Before Episode 1',
      incorrect_answer_3: 'Between Episode 4 and 5'
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "Who plays the character of Po in the Kung Fu Panda movies?",
      correct_answer: "Jack Black",
      incorrect_answer_1: 'Mirana Jonnes', incorrect_answer_2: 'McConahey Ramses', incorrect_answer_3: 'Jim Petersson'
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "In the movie &quot;Blade Runner&quot;, what is the term used for human-like androids ?",
      correct_answer: "Replicants",
      incorrect_answer_1: 'Cylons', incorrect_answer_2: 'Synthetics', incorrect_answer_3: 'Skinjobs'
    },
    {
      category: "Entertainment: Film",
      type: "multiple",
      difficulty: "easy",
      question: "In the 1995 film &quot;Balto&quot;, who are Steele&#039;s accomplices?",
      correct_answer: "Kaltag, Nikki, and Star",
      incorrect_answer_1: 'Dusty, Kirby, and Ralph', incorrect_answer_2: 'Nuk, Yak, and Sumac', incorrect_answer_3: 'Jenna, Sylvie, and Dixie'
    }
  ]


## film::medium
  
film_medium_1  = Question.create(category: "Film", format: "multiple", question: "Which of the following James Bond villains is not affiliated with the SPECTRE organization?", correct_answer: "Auric Goldfinger", difficulty: "medium", incorrect_answer_1: "Dr. Julius No", incorrect_answer_2: "Rosa Klebb", incorrect_answer_3: "Emilio Largo")
film_medium_2  = Question.create(category: "Film", format: "multiple", question: "Who played Batman in the 1997 film &quot;Batman and Robin&quot;?", correct_answer: "George Clooney", difficulty: "medium", incorrect_answer_1: "Michael Keaton", incorrect_answer_2: "Val Kilmer", incorrect_answer_3: "Christian Bale")
film_medium_3  = Question.create(category: "Film", format: "multiple", question: "This movie contains the quote, &quot;I love the smell of napalm in the morning!&quot;", correct_answer: "Apocalypse Now", difficulty: "medium", incorrect_answer_1: "Platoon", incorrect_answer_2: "The Deer Hunter", incorrect_answer_3: "Full Metal Jacket")
film_medium_4  = Question.create(category: "Film", format: "multiple", question: "Who plays the Nemesis in the Resident Evil movies?", correct_answer: "Matthew Taylor", difficulty: "medium", incorrect_answer_1: "Jason Dip", incorrect_answer_2: "Eric Mabius", incorrect_answer_3: "Jimmy Matts")
film_medium_5  = Question.create(category: "Film", format: "multiple", question: "Darth Vader&#039;s famous reveal to Luke is iconic. But which of these is the right one?", correct_answer: "&quot;No. I am your father.&quot;", difficulty: "medium", incorrect_answer_1: "&quot;Luke, I am your father.&quot;", incorrect_answer_2: "&quot;You&#039;re wrong. I am your father.&quot;", incorrect_answer_3: "&quot;The truth is that I am your father.&quot;")
film_medium_6  = Question.create(category: "Film", format: "multiple", question: "This trope refers to minor characters that are killed off to show how a monster works.", correct_answer: "Red Shirt", difficulty: "medium", incorrect_answer_1: "Minions", incorrect_answer_2: "Expendables", incorrect_answer_3: "Cannon Fodder")
film_medium_7  = Question.create(category: "Film", format: "multiple", question: "What type of cheese, loved by Wallace and Gromit, had it&#039;s sale prices rise after their successful short films?", correct_answer: "Wensleydale", difficulty: "medium", incorrect_answer_1: "Cheddar", incorrect_answer_2: "Moon Cheese", incorrect_answer_3: "Edam")
film_medium_8  = Question.create(category: "Film", format: "multiple", question: "In the Friday The 13th series, what is Jason&#039;s mother&#039;s first name?", correct_answer: "Pamela", difficulty: "medium", incorrect_answer_1: "Mary", incorrect_answer_2: "Christine", incorrect_answer_3: "Angeline")
film_medium_9  = Question.create(category: "Film", format: "multiple", question: "After India, which country produces the second most movies per year?", correct_answer: "Nigeria", difficulty: "medium", incorrect_answer_1: "United States", incorrect_answer_2: "China", incorrect_answer_3: "France")
film_medium_0  = Question.create(category: "Film", format: "multiple", question: "What is the name of the foley artist who designed the famous sounds of Star Wars, including Chewbacca&#039;s roar and R2-D2&#039;s beeps and whistles?", correct_answer: "Ben Burtt", difficulty: "medium", incorrect_answer_1: "Ken Burns", incorrect_answer_2: "Ralph McQuarrie", incorrect_answer_3: "Miranda Keyes")


## Video Games::Easy

vg_easy_0 = Question.create(category: "Video Games", format: "multiple", question: "How many games in the Crash Bandicoot series were released on the original Playstation?", correct_answer: "5", difficulty: "easy", incorrect_answer_1: "4", incorrect_answer_2: "3", incorrect_answer_3: "6")
vg_easy_1 = Question.create(category: "Video Games", format: "multiple", question: "What year was the game Team Fortress 2 released?", correct_answer: "2007", difficulty: "easy", incorrect_answer_1: "2009", incorrect_answer_2: "2005", incorrect_answer_3: "2010")
vg_easy_2 = Question.create(category: "Video Games", format: "multiple", question: "Who is the main antagonist in the Portal franchise?", correct_answer: "GLaDOS", difficulty: "easy", incorrect_answer_1: "Chell", incorrect_answer_2: "Wheatley", incorrect_answer_3: "Rick")
vg_easy_3 = Question.create(category: "Video Games", format: "multiple", question: "What is the name of Team Fortress 2&#039;s Heavy Weapons Guy&#039;s minigun?", correct_answer: "Sasha", difficulty: "easy", incorrect_answer_1: "Betty", incorrect_answer_2: "Anna", incorrect_answer_3: "Diana")
vg_easy_4 = Question.create(category: "Video Games", format: "multiple", question: "Who is Sonic&#039;s sidekick?", correct_answer: "Tails", difficulty: "easy", incorrect_answer_1: "Shadow", incorrect_answer_2: "Amy", incorrect_answer_3: "Knuckles")
vg_easy_5 = Question.create(category: "Video Games", format: "multiple", question: "What was the name of the cancelled sequel of Team Fortress?", correct_answer: "Team Fortress 2: Brotherhood of Arms", difficulty: "easy", incorrect_answer_1: "Team Fortress 2: Desert Mercenaries", incorrect_answer_2: "Team Fortress 2: Operation Gear Grinder", incorrect_answer_3: "Team Fortress 2: Return to Classic")
vg_easy_6 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT a main playable character in &quot;Grand Theft Auto V&quot;?", correct_answer: "Lamar", difficulty: "easy", incorrect_answer_1: "Trevor", incorrect_answer_2: "Michael", incorrect_answer_3: "Franklin")
vg_easy_7 = Question.create(category: "Video Games", format: "multiple", question: "In the fighting game &quot;Skullgirls,&quot; which character utilizes a folding chair called the &quot;Hurting&quot; as a weapon?", correct_answer: "Beowulf", difficulty: "easy", incorrect_answer_1: "Big Band", incorrect_answer_2: "Squigly", incorrect_answer_3: "Cerebella")
vg_easy_8 = Question.create(category: "Video Games", format: "multiple", question: "Which eSports team came first place in The International Dota 2 Championship 2016?", correct_answer: "Wings Gaming", difficulty: "easy", incorrect_answer_1: "Digital Chaos", incorrect_answer_2: "Evil Geniuses", incorrect_answer_3: "Fnatic")
vg_easy_9 = Question.create(category: "Video Games", format: "multiple", question: "How many Chaos Emeralds are there in the &quot;Sonic the Hedgehog&quot; universe?", correct_answer: "7", difficulty: "easy", incorrect_answer_1: "6", incorrect_answer_2: "8", incorrect_answer_3: "14")
vg_easy_10 = Question.create(category: "Video Games", format: "multiple", question: "What is the title of song on the main menu in Halo?", correct_answer: "Halo", difficulty: "easy", incorrect_answer_1: "Opening Suite", incorrect_answer_2: "Shadows", incorrect_answer_3: "Suite Autumn")
vg_easy_11 = Question.create(category: "Video Games", format: "multiple", question: "In what year was the game &quot;Fallout&quot; released?", correct_answer: "1997", difficulty: "easy", incorrect_answer_1: "1998", incorrect_answer_2: "1999", incorrect_answer_3: "1996")
vg_easy_12 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT the name of a rival gang in the video game Saint&#039;s Row 2?", correct_answer: "The Zin Empire", difficulty: "easy", incorrect_answer_1: "The Brotherhood", incorrect_answer_2: "The Ronin", incorrect_answer_3: "The Sons of Samedi")
vg_easy_13 = Question.create(category: "Video Games", format: "multiple", question: "In most FPS video games such as Counter-Strike, shooting which part of the body does the highest damage?", correct_answer: "Head", difficulty: "easy", incorrect_answer_1: "Arm", incorrect_answer_2: "Leg", incorrect_answer_3: "Chest")
vg_easy_14 = Question.create(category: "Video Games", format: "multiple", question: "What year was the game &quot;Overwatch&quot; revealed?", correct_answer: "2014", difficulty: "easy", incorrect_answer_1: "2015", incorrect_answer_2: "2011", incorrect_answer_3: "2008")
vg_easy_15 = Question.create(category: "Video Games", format: "multiple", question: "When was Minecraft first released to the public?", correct_answer: "May 17th, 2009", difficulty: "easy", incorrect_answer_1: "September 17th, 2009", incorrect_answer_2: "November 18th, 2011", incorrect_answer_3: "October 7th, 2011")
vg_easy_16 = Question.create(category: "Video Games", format: "multiple", question: "Which Game Boy from the Game Boy series of portable video game consoles was released first?", correct_answer: "Game Boy Color", difficulty: "easy", incorrect_answer_1: "Game Boy Advance", incorrect_answer_2: "Game Boy Micro", incorrect_answer_3: "Game Boy Advance SP")
vg_easy_17 = Question.create(category: "Video Games", format: "multiple", question: "In Undertale, what&#039;s the prize for answering correctly?", correct_answer: "More questions", difficulty: "easy", incorrect_answer_1: "New car", incorrect_answer_2: "Mercy", incorrect_answer_3: "Money")
vg_easy_18 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Fallout 4&quot; which faction is not present in the game?", correct_answer: "The Enclave", difficulty: "easy", incorrect_answer_1: "The Minutemen", incorrect_answer_2: "The Brotherhood of Steel", incorrect_answer_3: "The Institute")
vg_easy_19 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT a playable character in &quot;Left 4 Dead&quot;?", correct_answer: "Nick", difficulty: "easy", incorrect_answer_1: "Louis", incorrect_answer_2: "Zoey", incorrect_answer_3: "Bill")
vg_easy_20 = Question.create(category: "Video Games", format: "multiple", question: "What year was the game Dishonored released?", correct_answer: "2012", difficulty: "easy", incorrect_answer_1: "2011", incorrect_answer_2: "2008", incorrect_answer_3: "2013")
vg_easy_21 = Question.create(category: "Video Games", format: "multiple", question: "In vanilla Minecraft, which of the following cannot be made into a block?", correct_answer: "Charcoal", difficulty: "easy", incorrect_answer_1: "Coal", incorrect_answer_2: "Wheat", incorrect_answer_3: "String")
vg_easy_22 = Question.create(category: "Video Games", format: "multiple", question: "Who is the leader of Team Mystic in Pok&eacute;mon Go?", correct_answer: "Blanche", difficulty: "easy", incorrect_answer_1: "Candela", incorrect_answer_2: "Spark", incorrect_answer_3: "Willow")
vg_easy_23 = Question.create(category: "Video Games", format: "multiple", question: "In the videogame Bully, what is the protagonist&#039;s last name?", correct_answer: "Hopkins", difficulty: "easy", incorrect_answer_1: "Smith", incorrect_answer_2: "Kowalski", incorrect_answer_3: "Crabblesnitch")
vg_easy_24 = Question.create(category: "Video Games", format: "multiple", question: "How many flagship monsters appear in Monster Hunter Gernerations?", correct_answer: "4", difficulty: "easy", incorrect_answer_1: "1", incorrect_answer_2: "2", incorrect_answer_3: "3")
vg_easy_25 = Question.create(category: "Video Games", format: "multiple", question: "Which Pokemon generation did the fan-named &quot;Masuda Method&quot; first appear in? ", correct_answer: "Diamond/Pearl", difficulty: "easy", incorrect_answer_1: "Ruby/Sapphire", incorrect_answer_2: "Black/White", incorrect_answer_3: "X/Y")
vg_easy_26 = Question.create(category: "Video Games", format: "multiple", question: "Which water-type Pok&eacute;mon starter was introduced in the 4th generation of the series?", correct_answer: "Piplup", difficulty: "easy", incorrect_answer_1: "Totodile", incorrect_answer_2: "Oshawott", incorrect_answer_3: "Mudkip")
vg_easy_27 = Question.create(category: "Video Games", format: "multiple", question: "In the video game &quot;Team Fortress 2&quot;, which class is able to double jump?", correct_answer: "Scout", difficulty: "easy", incorrect_answer_1: "Spy", incorrect_answer_2: "Engineer", incorrect_answer_3: "Pyro")
vg_easy_28 = Question.create(category: "Video Games", format: "multiple", question: "In Rust, how many Timed Explosive Charges does it take to destroy a Ladder Hatch?", correct_answer: "1", difficulty: "easy", incorrect_answer_1: "3", incorrect_answer_2: "2", incorrect_answer_3: "5")
vg_easy_29 = Question.create(category: "Video Games", format: "multiple", question: "Who turns out to be the true victor in the Battle of Armageddon in Mortal Kombat?", correct_answer: "Shao Kahn", difficulty: "easy", incorrect_answer_1: "Liu Kang", incorrect_answer_2: "Shang Tsung", incorrect_answer_3: "Raiden")
vg_easy_30 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Mario &amp; Sonic at the Olympic Games&quot;, characters are split into how many types?", correct_answer: "4", difficulty: "easy", incorrect_answer_1: "6", incorrect_answer_2: "5", incorrect_answer_3: "3")
vg_easy_31 = Question.create(category: "Video Games", format: "multiple", question: "What minimum level in the Defence skill is needed to equip Dragon Armour in the MMO RuneScape?", correct_answer: "60", difficulty: "easy", incorrect_answer_1: "65", incorrect_answer_2: "55", incorrect_answer_3: "70")
vg_easy_32 = Question.create(category: "Video Games", format: "multiple", question: "In Minecraft, which two items must be combined to craft a torch?", correct_answer: "Stick and Coal", difficulty: "easy", incorrect_answer_1: "Stick and Fire", incorrect_answer_2: "Wood and Coal", incorrect_answer_3: "Wood and Fire")
vg_easy_33 = Question.create(category: "Video Games", format: "multiple", question: "&quot;The Potato Sack&quot; was a collection of indie games released on Steam in 2011 as a promotion for which game?", correct_answer: "Portal 2", difficulty: "easy", incorrect_answer_1: "Left 4 Dead 2", incorrect_answer_2: "Half-Life 3", incorrect_answer_3: "Dota 2")
vg_easy_34 = Question.create(category: "Video Games", format: "multiple", question: "Which &quot;Fallout: New Vegas&quot; quest is NOT named after a real-life song?", correct_answer: "They Went That-a-Way", difficulty: "easy", incorrect_answer_1: "Come Fly With Me", incorrect_answer_2: "Ain&#039;t That a Kick in the Head", incorrect_answer_3: "Ring-a-Ding Ding")
vg_easy_35 = Question.create(category: "Video Games", format: "multiple", question: "Which franchise was NOT featured in the 2015 video game &quot;Lego Dimensions&quot;?", correct_answer: "Breaking Bad", difficulty: "easy", incorrect_answer_1: "Portal", incorrect_answer_2: "Doctor Who", incorrect_answer_3: "Back to the Future")
vg_easy_36 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Overwatch&quot;, which hero is able to wallride?", correct_answer: "Lucio", difficulty: "easy", incorrect_answer_1: "Reinhardt", incorrect_answer_2: "Sombra", incorrect_answer_3: "Mercy")
vg_easy_37 = Question.create(category: "Video Games", format: "multiple", question: "What was the release date of &quot;Grand Theft Auto IV&quot;?", correct_answer: "April 29, 2008", difficulty: "easy", incorrect_answer_1: "May 21, 2009", incorrect_answer_2: "June 22, 2010", incorrect_answer_3: "July 28, 2008")
vg_easy_38 = Question.create(category: "Video Games", format: "multiple", question: "Who created the &quot;Metal Gear&quot; Series?", correct_answer: "Hideo Kojima", difficulty: "easy", incorrect_answer_1: "Hiroshi Yamauchi", incorrect_answer_2: "Shigeru Miyamoto", incorrect_answer_3: "Gunpei Yokoi")
vg_easy_39 = Question.create(category: "Video Games", format: "multiple", question: "What is the name of the main protagonist in &quot;Xenoblade Chronicles&quot;?", correct_answer: "Shulk", difficulty: "easy", incorrect_answer_1: "Reyn", incorrect_answer_2: "Fiora", incorrect_answer_3: "Dunban")
vg_easy_40 = Question.create(category: "Video Games", format: "multiple", question: "In the &quot;Hitman&quot; series, what is the name of the main character?", correct_answer: "Agent 47", difficulty: "easy", incorrect_answer_1: "Agent 27", incorrect_answer_2: "Agent Smith", incorrect_answer_3: "Agent 67")
vg_easy_41 = Question.create(category: "Video Games", format: "multiple", question: "What are Sans and Papyrus named after in &quot;Undertale&quot;?", correct_answer: "Fonts", difficulty: "easy", incorrect_answer_1: "Plants", incorrect_answer_2: "Companies", incorrect_answer_3: "Ancient writing paper")
vg_easy_42 = Question.create(category: "Video Games", format: "multiple", question: "In Counter-Strike: Global Offensive, what&#039;s the rarity of discontinued skins called?", correct_answer: "Contraband", difficulty: "easy", incorrect_answer_1: "Discontinued", incorrect_answer_2: "Diminshed", incorrect_answer_3: "Limited")
vg_easy_43 = Question.create(category: "Video Games", format: "multiple", question: "Which Final Fantasy game consisted of a female-only cast of party members?", correct_answer: "Final Fantasy X-2", difficulty: "easy", incorrect_answer_1: "Final Fantasy IX", incorrect_answer_2: "Final Fantasy V", incorrect_answer_3: "Final Fantasy XIII-2")
vg_easy_44 = Question.create(category: "Video Games", format: "multiple", question: "Rincewind from the 1995 Discworld game was voiced by which member of Monty Python?", correct_answer: "Eric Idle", difficulty: "easy", incorrect_answer_1: "John Cleese", incorrect_answer_2: "Terry Gilliam", incorrect_answer_3: "Michael Palin")
vg_easy_45 = Question.create(category: "Video Games", format: "multiple", question: "In the &quot;Metal Gear Solid&quot; series, what&#039;s the name of Solid Snake&#039;s brother?", correct_answer: "Liquid Snake", difficulty: "easy", incorrect_answer_1: "Kulus Snake", incorrect_answer_2: "Billy Snake", incorrect_answer_3: "Gilur Snake")
vg_easy_46 = Question.create(category: "Video Games", format: "multiple", question: "Which Grand Theft Auto (GTA) games have the same setting?", correct_answer: "GTA V and GTA San Andreas", difficulty: "easy", incorrect_answer_1: "GTA V and GTA Vice City", incorrect_answer_2: "GTA IV and GTA San Andreas", incorrect_answer_3: "GTA IV and GTA Vice City")
vg_easy_47 = Question.create(category: "Video Games", format: "multiple", question: "In the survival horror game, &quot;Cry of Fear,&quot; what was the name of Simon&#039;s close friend/potential love interest?", correct_answer: "Sophie", difficulty: "easy", incorrect_answer_1: "Olivia", incorrect_answer_2: "Jessica", incorrect_answer_3: "Alice")
vg_easy_48 = Question.create(category: "Video Games", format: "multiple", question: "Who is the main protagonist in the game Life is Strange: Before The Storm?", correct_answer: "Chloe Price ", difficulty: "easy", incorrect_answer_1: "Max Caulfield", incorrect_answer_2: "Rachel Amber", incorrect_answer_3: "Frank Bowers")
vg_easy_49 = Question.create(category: "Video Games", format: "multiple", question: "Which psychopath(s) in Dead Rising 1 gave you the small chainsaw?", correct_answer: "Adam the Clown", difficulty: "easy", incorrect_answer_1: "Cliff Hudson", incorrect_answer_2: "The convicts", incorrect_answer_3: "Larry the butcher")



## Video Games::Medium

vg_medium_0 = Question.create(category: "Video Games", format: "multiple", question: "Who&#039;s the creator of Geometry Dash?", correct_answer: "Robert Topala", difficulty: "medium", incorrect_answer_1: "Scott Cawthon", incorrect_answer_2: "Adam Engels", incorrect_answer_3: "Andrew Spinks")
vg_medium_1 = Question.create(category: "Video Games", format: "multiple", question: "What is Solid Snake&#039;s real name?", correct_answer: "David", difficulty: "medium", incorrect_answer_1: "Solid Snake", incorrect_answer_2: "John", incorrect_answer_3: "Huey")
vg_medium_2 = Question.create(category: "Video Games", format: "multiple", question: "How many Chaos Emeralds can you collect in the first Sonic The Hedgehog?", correct_answer: "Six", difficulty: "medium", incorrect_answer_1: "Seven", incorrect_answer_2: "Five", incorrect_answer_3: "Eight")
vg_medium_3 = Question.create(category: "Video Games", format: "multiple", question: "Which of these games was the earliest known first-person shooter with a known time of publication?", correct_answer: "Spasim", difficulty: "medium", incorrect_answer_1: "Doom", incorrect_answer_2: "Wolfenstein", incorrect_answer_3: "Quake")
vg_medium_4 = Question.create(category: "Video Games", format: "multiple", question: "In what engine was Titanfall made in?", correct_answer: "Source Engine", difficulty: "medium", incorrect_answer_1: "Frostbite 3", incorrect_answer_2: "Unreal Engine", incorrect_answer_3: "Cryengine")
vg_medium_5 = Question.create(category: "Video Games", format: "multiple", question: "What is the name the location-based augmented reality game developed by Niantic before Pok&eacute;mon GO?", correct_answer: "Ingress", difficulty: "medium", incorrect_answer_1: "Aggress", incorrect_answer_2: "Regress", incorrect_answer_3: "Digress")
vg_medium_6 = Question.create(category: "Video Games", format: "multiple", question: "In the game series &quot;The Legend of Zelda&quot;, what was the first 3D game?", correct_answer: "Ocarina of Time", difficulty: "medium", incorrect_answer_1: "Majora&#039;s Mask", incorrect_answer_2: "A Link to the Past", incorrect_answer_3: "The Wind Waker")
vg_medium_7 = Question.create(category: "Video Games", format: "multiple", question: "Who voices Max Payne in the 2001 game &quot;Max Payne&quot;?", correct_answer: "James McCaffrey", difficulty: "medium", incorrect_answer_1: "Sam Lake", incorrect_answer_2: "Troy Baker", incorrect_answer_3: "Hideo Kojima")
vg_medium_8 = Question.create(category: "Video Games", format: "multiple", question: "When was &quot;Garry&#039;s Mod&quot; released?", correct_answer: "December 24, 2004", difficulty: "medium", incorrect_answer_1: "November 13, 2004", incorrect_answer_2: "December 13, 2004", incorrect_answer_3: "November 12, 2004")
vg_medium_9 = Question.create(category: "Video Games", format: "multiple", question: "Which of these Counter-Strike maps is a bomb defuse scenario?", correct_answer: "Prodigy", difficulty: "medium", incorrect_answer_1: "747", incorrect_answer_2: "Havana", incorrect_answer_3: "Oilrig")
vg_medium_10 = Question.create(category: "Video Games", format: "multiple", question: "In the Portal series, Aperture Science was founded under what name in the early 1940s?", correct_answer: "Aperture Fixtures", difficulty: "medium", incorrect_answer_1: "Aperture Lavatories", incorrect_answer_2: "Aperture Science Innovators", incorrect_answer_3: "Wheatley Laboratories")
vg_medium_11 = Question.create(category: "Video Games", format: "multiple", question: "Capcom&#039;s survival horror title Dead Rising, canonically starts on what day of September 2006?", correct_answer: "September 19th", difficulty: "medium", incorrect_answer_1: "September 21st", incorrect_answer_2: "September 30th", incorrect_answer_3: "September 14th")
vg_medium_12 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT a playable character race in the video game &quot;Starbound&quot;?", correct_answer: "Fenerox", difficulty: "medium", incorrect_answer_1: "Floran", incorrect_answer_2: "Novakid", incorrect_answer_3: "Hylotl")
vg_medium_13 = Question.create(category: "Video Games", format: "multiple", question: "In vanilla Minecraft, you can make armor out of all BUT which of the following?", correct_answer: "Emeralds", difficulty: "medium", incorrect_answer_1: "Diamonds", incorrect_answer_2: "Iron", incorrect_answer_3: "Leather")
vg_medium_14 = Question.create(category: "Video Games", format: "multiple", question: "In PROTOTYPE 2, which of the following abilities/weapons is NOT obtained by an Evolved?", correct_answer: "Tendrils", difficulty: "medium", incorrect_answer_1: "Blade", incorrect_answer_2: "Bio-Bomb", incorrect_answer_3: "Pack Leader")
vg_medium_15 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT the name of a team leader in Pok&eacute;mon GO?", correct_answer: "Leif", difficulty: "medium", incorrect_answer_1: "Blanche", incorrect_answer_2: "Spark", incorrect_answer_3: "Candela")
vg_medium_16 = Question.create(category: "Video Games", format: "multiple", question: "Which company did Bethesda purchase the Fallout Series from?", correct_answer: "Interplay Entertainment ", difficulty: "medium", incorrect_answer_1: "Capcom", incorrect_answer_2: "Blizzard Entertainment", incorrect_answer_3: "Nintendo")
vg_medium_17 = Question.create(category: "Video Games", format: "multiple", question: "In the game Destiny, who succeeded Peter Dinklage in voicing the protagonist&#039;s &quot;Ghost&quot;?", correct_answer: "Nolan North", difficulty: "medium", incorrect_answer_1: "John DiMaggio", incorrect_answer_2: "Mark Hamill", incorrect_answer_3: " Troy Baker")
vg_medium_18 = Question.create(category: "Video Games", format: "multiple", question: "Who created the pump &quot;F.L.U.D.D.&quot; Mario uses in Super Mario Sunshine?", correct_answer: "Elvin Gadd", difficulty: "medium", incorrect_answer_1: "Robert Fludd", incorrect_answer_2: "Nirona", incorrect_answer_3: "Crygor")
vg_medium_19 = Question.create(category: "Video Games", format: "multiple", question: "Which Game Development company made No Man&#039;s Sky?", correct_answer: "Hello Games", difficulty: "medium", incorrect_answer_1: "Dovetail Games", incorrect_answer_2: "Valve", incorrect_answer_3: "Blizzard Entertainment")
vg_medium_20 = Question.create(category: "Video Games", format: "multiple", question: "In Hitman: Blood Money, what is the name of the target in the mission &quot;Death of a Showman&quot;?", correct_answer: "Joseph Clarence", difficulty: "medium", incorrect_answer_1: "The Swing King", incorrect_answer_2: "Maynard John", incorrect_answer_3: "Manuel Delgado")
vg_medium_21 = Question.create(category: "Video Games", format: "multiple", question: "Which of these characters was NOT planned to be playable for Super Smash Bros. 64?", correct_answer: "Peach", difficulty: "medium", incorrect_answer_1: "Bowser", incorrect_answer_2: "Mewtwo", incorrect_answer_3: "King Dedede")
vg_medium_22 = Question.create(category: "Video Games", format: "multiple", question: "In Terraria, what does the Wall of Flesh not drop upon defeat?", correct_answer: "Picksaw", difficulty: "medium", incorrect_answer_1: "Pwnhammer", incorrect_answer_2: "Breaker Blade", incorrect_answer_3: "Laser Rifle")
vg_medium_23 = Question.create(category: "Video Games", format: "multiple", question: "Which actor provided the voice for the main character&#039;s father in Fallout 3?", correct_answer: "Liam Neeson", difficulty: "medium", incorrect_answer_1: "Kiefer Sutherland", incorrect_answer_2: "Brendan Gleeson", incorrect_answer_3: "Robbie Coltrane")
vg_medium_24 = Question.create(category: "Video Games", format: "multiple", question: "When was the game &quot;Roblox&quot; released?", correct_answer: "2006", difficulty: "medium", incorrect_answer_1: "2003", incorrect_answer_2: "2002", incorrect_answer_3: "2007")
vg_medium_25 = Question.create(category: "Video Games", format: "multiple", question: "Which town was Seamus &quot;Sledge&quot; Cowden from &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; born in?", correct_answer: "John O&#039;Groats", difficulty: "medium", incorrect_answer_1: "Brawl", incorrect_answer_2: "Kearvaig", incorrect_answer_3: "Talmine")
vg_medium_26 = Question.create(category: "Video Games", format: "multiple", question: "Which of these operators from &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; has the ability to damage reinforced walls?", correct_answer: "Jordan &quot;Thermite&quot; Trace", difficulty: "medium", incorrect_answer_1: "Eliza &quot;Ash&quot; Cohen", incorrect_answer_2: "Seamus &quot;Sledge&quot; Cowden", incorrect_answer_3: "Dominic &quot;Bandit&quot; Brunsmeier")
vg_medium_27 = Question.create(category: "Video Games", format: "multiple", question: "Which operation in &quot;Tom Clancy&#039;s Rainbow Six Siege&quot; introduced the &quot;Skyscraper&quot; map?", correct_answer: "Red Crow", difficulty: "medium", incorrect_answer_1: "Velvet Shell", incorrect_answer_2: "Skull Rain", incorrect_answer_3: "Dust Line")
vg_medium_28 = Question.create(category: "Video Games", format: "multiple", question: "In Terraria, which of these items is NOT crafted at a Mythril Anvil?", correct_answer: "Ankh Charm", difficulty: "medium", incorrect_answer_1: "Venom Staff", incorrect_answer_2: "Sky Fracture", incorrect_answer_3: "Orichalcum Tools")
vg_medium_29 = Question.create(category: "Video Games", format: "multiple", question: "Which of these games was NOT a Nintendo Switch launch title in the United States? ", correct_answer: "Voez", difficulty: "medium", incorrect_answer_1: "Just Dance 2017", incorrect_answer_2: "Snipperclips", incorrect_answer_3: "Fast RMX")
vg_medium_30 = Question.create(category: "Video Games", format: "multiple", question: "In the game &quot;Brawlhalla&quot;, what species is the character B&ouml;dvar is?", correct_answer: "Half Human / Half Bear", difficulty: "medium", incorrect_answer_1: "A Human", incorrect_answer_2: "Half Wolf / Half Bear", incorrect_answer_3: "Half Tiger / Half Human")
vg_medium_31 = Question.create(category: "Video Games", format: "multiple", question: "When was the video game &quot;P.A.M.E.L.A.&quot; released on Steam?", correct_answer: "March 9, 2017", difficulty: "medium", incorrect_answer_1: "January 7, 2007", incorrect_answer_2: "October 23, 1997", incorrect_answer_3: "February 16, 2015")
vg_medium_32 = Question.create(category: "Video Games", format: "multiple", question: "Who voices the character &quot;Vernon Cherry&quot; in &quot;Red Dead Redemption&quot;?", correct_answer: "Casey Mongillo", difficulty: "medium", incorrect_answer_1: "Tara Strong", incorrect_answer_2: "Troy Baker", incorrect_answer_3: "Rob Wiethoff")
vg_medium_33 = Question.create(category: "Video Games", format: "multiple", question: "Which of the following colors does the Zombie eyes glow in the &quot;Nuketown&quot; map in &quot;Call of Duty: Black Ops II&quot; Zombies mode?", correct_answer: "Yellow and Blue", difficulty: "medium", incorrect_answer_1: "Yellow and Red", incorrect_answer_2: "Red and Blue", incorrect_answer_3: "Blue and White")
vg_medium_34 = Question.create(category: "Video Games", format: "multiple", question: "What is the perk that was introduced in the &quot;Call Of Duty: Zombies&quot; map, &quot;Mob Of The Dead&quot;?", correct_answer: "Electric Cherry", difficulty: "medium", incorrect_answer_1: "Quick Revive", incorrect_answer_2: "Vulture Aid", incorrect_answer_3: "Tombstone")
vg_medium_35 = Question.create(category: "Video Games", format: "multiple", question: "Who developed the 2016 farming RPG &quot;Stardew Valley&quot;?", correct_answer: "Eric Barone", difficulty: "medium", incorrect_answer_1: "Daisuke Amaya", incorrect_answer_2: "Jasper Byrne", incorrect_answer_3: "Lucas Pope")
vg_medium_36 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is not a character in the game, &quot;Lethal League&quot;?", correct_answer: "Rex", difficulty: "medium", incorrect_answer_1: "Switch", incorrect_answer_2: "Candyman", incorrect_answer_3: "Sonata")
vg_medium_37 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Call of Duty: Zombies&quot;, what group does Doctor Maxis work for?", correct_answer: "Group 935", difficulty: "medium", incorrect_answer_1: "Group Reanimate", incorrect_answer_2: "Group Rezurrection", incorrect_answer_3: "Division 9")
vg_medium_38 = Question.create(category: "Video Games", format: "multiple", question: "In Portal, what color is the Morality Core?", correct_answer: "Purple", difficulty: "medium", incorrect_answer_1: "Red", incorrect_answer_2: "Yellow", incorrect_answer_3: "Blue")
vg_medium_39 = Question.create(category: "Video Games", format: "multiple", question: "Which of the following Call of Duty games was a PS3 launch title?", correct_answer: "Call of Duty 3", difficulty: "medium", incorrect_answer_1: "Call of Duty 4: Modern Warfare", incorrect_answer_2: "Call of Duty: World at War", incorrect_answer_3: "Call of Duty: Roads to Victory")
vg_medium_40 = Question.create(category: "Video Games", format: "multiple", question: "Which of the following is not a prosecutor in the &quot;Ace Attorney&quot; video game series?", correct_answer: "Jake Marshall", difficulty: "medium", incorrect_answer_1: "Godot", incorrect_answer_2: "Miles Edgeworth", incorrect_answer_3: "Jacques Portsman")
vg_medium_41 = Question.create(category: "Video Games", format: "multiple", question: "In the Half-Life universe, the Black Mesa Research Facility is located in which US state?", correct_answer: "New Mexico", difficulty: "medium", incorrect_answer_1: "Nevada", incorrect_answer_2: "Arizona", incorrect_answer_3: "Wyoming")
vg_medium_42 = Question.create(category: "Video Games", format: "multiple", question: "What character is NOT apart of the Grand Theft Auto series?", correct_answer: "Michael Cardenas", difficulty: "medium", incorrect_answer_1: "Packie McReary", incorrect_answer_2: "Tommy Vercetti", incorrect_answer_3: "Lester Crest")
vg_medium_43 = Question.create(category: "Video Games", format: "multiple", question: "Which one of the first four titles of the &quot;Grand Theft Auto&quot; franchise started the series of iconic image grid cover arts?", correct_answer: "Grand Theft Auto III", difficulty: "medium", incorrect_answer_1: "Grand Theft Auto", incorrect_answer_2: "Grand Theft Auto II", incorrect_answer_3: "Grand Theft Auto Vice City")
vg_medium_44 = Question.create(category: "Video Games", format: "multiple", question: "Which of the following Terran units from the RTS game Starcraft was first introduced in the expansion Brood War?", correct_answer: "Medic", difficulty: "medium", incorrect_answer_1: "Wraith", incorrect_answer_2: "Science Vessel", incorrect_answer_3: "SCV")
vg_medium_45 = Question.create(category: "Video Games", format: "multiple", question: "In the ARPG &quot;Path of Exile,&quot; what is the highest amount of sockets that an item can have?", correct_answer: "6", difficulty: "medium", incorrect_answer_1: "5", incorrect_answer_2: "4", incorrect_answer_3: "8")
vg_medium_46 = Question.create(category: "Video Games", format: "multiple", question: "Who is Sora&#039;s Nobody in Kingdom Hearts?", correct_answer: "Roxas", difficulty: "medium", incorrect_answer_1: "Riku", incorrect_answer_2: "Kairi", incorrect_answer_3: "Mickey")
vg_medium_47 = Question.create(category: "Video Games", format: "multiple", question: "Which city hosted the CS:GO Dreamhack Open 2015?", correct_answer: "Cluj-Napoca", difficulty: "medium", incorrect_answer_1: "Cologne", incorrect_answer_2: "Atlanta", incorrect_answer_3: "London")
vg_medium_48 = Question.create(category: "Video Games", format: "multiple", question: "How many stars are there to collect in Super Mario 64?", correct_answer: "120", difficulty: "medium", incorrect_answer_1: "60", incorrect_answer_2: "80", incorrect_answer_3: "100")
vg_medium_49 = Question.create(category: "Video Games", format: "multiple", question: "In the video game DOTA 2, which of these is NOT a hero?", correct_answer: "Dragon Champion", difficulty: "medium", incorrect_answer_1: "Dark Seer", incorrect_answer_2: "Keeper of the Light", incorrect_answer_3: "Mirana")


## Video Games::Hard 

vg_hard_0 = Question.create(category: "Video Games", format: "multiple", question: "Which of these TrackMania environments was NOT in the original game?", correct_answer: "Bay", difficulty: "hard", incorrect_answer_1: "Desert", incorrect_answer_2: "Snow", incorrect_answer_3: "Rally")
vg_hard_1 = Question.create(category: "Video Games", format: "multiple", question: "How many people can you recruit in the game Suikoden in a single playthrough?", correct_answer: "107", difficulty: "hard", incorrect_answer_1: "108", incorrect_answer_2: "93", incorrect_answer_3: "96")
vg_hard_2 = Question.create(category: "Video Games", format: "multiple", question: "What is the name of the virus that infected New York in Tom Clancy&#039;s The Division?", correct_answer: "Dollar Flu", difficulty: "hard", incorrect_answer_1: "Ebola", incorrect_answer_2: "Red Poison", incorrect_answer_3: "Smallpox")
vg_hard_3 = Question.create(category: "Video Games", format: "multiple", question: "What was the name of the hero in the 80s animated video game &#039;Dragon&#039;s Lair&#039;?", correct_answer: "Dirk the Daring", difficulty: "hard", incorrect_answer_1: "Arthur", incorrect_answer_2: "Sir Toby Belch", incorrect_answer_3: "Guy of Gisbourne")
vg_hard_4 = Question.create(category: "Video Games", format: "multiple", question: "In the Super Mario Bros. Series, what is Yoshi&#039;s scientific name?", correct_answer: "T. Yoshisaur Munchakoopas", difficulty: "hard", incorrect_answer_1: "Yoshi", incorrect_answer_2: "T. Yoshisotop Munchakoopas", incorrect_answer_3: "Yossy")
vg_hard_5 = Question.create(category: "Video Games", format: "multiple", question: "The map featured in Arma 3 named &quot;Altis&quot; is based off of what Greek island?", correct_answer: "Lemnos", difficulty: "hard", incorrect_answer_1: "Ithaca", incorrect_answer_2: "Naxos", incorrect_answer_3: "Anafi")
vg_hard_6 = Question.create(category: "Video Games", format: "multiple", question: "What was the world&#039;s first video game?", correct_answer: "Tennis for Two", difficulty: "hard", incorrect_answer_1: "Spacewar!", incorrect_answer_2: "Pong", incorrect_answer_3: "Space Travel")
vg_hard_7 = Question.create(category: "Video Games", format: "multiple", question: "Which of these characters in &quot;Undertale&quot; can the player NOT go on a date with?", correct_answer: "Toriel", difficulty: "hard", incorrect_answer_1: "Papyrus", incorrect_answer_2: "Undyne", incorrect_answer_3: "Alphys")
vg_hard_8 = Question.create(category: "Video Games", format: "multiple", question: "In the original &quot;Super Mario Bros.&quot;, what is the acceleration of Mario if he was in free fall?", correct_answer: "91.28 m/s^2", difficulty: "hard", incorrect_answer_1: "110 m/s^2", incorrect_answer_2: "9.42 m/s^2", incorrect_answer_3: "4.4 m/s^2")
vg_hard_9 = Question.create(category: "Video Games", format: "multiple", question: "Why was the character Trevor Philips discharged from the Air Force?", correct_answer: "Mental Health Issues", difficulty: "hard", incorrect_answer_1: "Injuries", incorrect_answer_2: "Disease", incorrect_answer_3: "Danger to Others")
vg_hard_10 = Question.create(category: "Video Games", format: "multiple", question: "In the Animal Crossing series, which flower is erroneously called the &quot;Jacob&#039;s Ladder&quot;?", correct_answer: "Lily of the Valley", difficulty: "hard", incorrect_answer_1: "Hydrangea", incorrect_answer_2: "Harebell", incorrect_answer_3: "Yarrow")
vg_hard_11 = Question.create(category: "Video Games", format: "multiple", question: "When was Steam first released?", correct_answer: "2003", difficulty: "hard", incorrect_answer_1: "2004", incorrect_answer_2: "2011", incorrect_answer_3: "2007")
vg_hard_12 = Question.create(category: "Video Games", format: "multiple", question: "Which game was exclusive to Dreamcast?", correct_answer: "Pen Pen TriIcelon", difficulty: "hard", incorrect_answer_1: "Sylvester &amp; Tweety in Cagey Capers", incorrect_answer_2: "Perfect Dark", incorrect_answer_3: "Tetrisphere")
vg_hard_13 = Question.create(category: "Video Games", format: "multiple", question: "How long was the World Record Speed Run of Valve Software&#039;s &quot;Half-Life&quot; that was done in 2014.", correct_answer: "20 Minutes, 41 Seconds", difficulty: "hard", incorrect_answer_1: "45 Minutes, 32 Seconds", incorrect_answer_2: "5 Minutes, 50 Seconds", incorrect_answer_3: "12 Minutes, 59 Seconds")
vg_hard_14 = Question.create(category: "Video Games", format: "multiple", question: "Which of these is NOT a possible drink to be made in the game &quot;VA-11 HALL-A: Cyberpunk Bartender Action&quot;?", correct_answer: "Sour Appletini", difficulty: "hard", incorrect_answer_1: "Fringe Weaver", incorrect_answer_2: "Piano Man", incorrect_answer_3: "Bad Touch")
vg_hard_15 = Question.create(category: "Video Games", format: "multiple", question: "How many total monsters appear in Monster Hunter Generations?", correct_answer: "105", difficulty: "hard", incorrect_answer_1: "100", incorrect_answer_2: "98", incorrect_answer_3: "73")
vg_hard_16 = Question.create(category: "Video Games", format: "multiple", question: "Which of these weapon classes DO NOT appear in the first Monster Hunter game?", correct_answer: "Bow ", difficulty: "hard", incorrect_answer_1: "Hammer", incorrect_answer_2: "Heavy Bowgun", incorrect_answer_3: "Light Bowgun")
vg_hard_17 = Question.create(category: "Video Games", format: "multiple", question: "In the video game &quot;Metal Gear Solid&quot;, what did Revolver Ocelot consider the greatest handgun ever made?", correct_answer: "Colt Single Action Army", difficulty: "hard", incorrect_answer_1: "Colt Python", incorrect_answer_2: "Colt M1892", incorrect_answer_3: "Colt 1851 Navy Revolver")
vg_hard_18 = Question.create(category: "Video Games", format: "multiple", question: "In the game Call of Duty, what is the last level where you play as an American soldier?", correct_answer: "Festung Recogne", difficulty: "hard", incorrect_answer_1: "Ste. Mere-Eglise (Day)", incorrect_answer_2: "Chateau", incorrect_answer_3: "Brecourt")
vg_hard_19 = Question.create(category: "Video Games", format: "multiple", question: "Which character, in the game &quot;Morenatsu&quot;, has the most possible endings to their route, at a total of four different endings?", correct_answer: "Shin Kuroi", difficulty: "hard", incorrect_answer_1: "Kouya Aotsuki", incorrect_answer_2: "Soutarou Touno", incorrect_answer_3: "Torahiko Ooshima")
vg_hard_20 = Question.create(category: "Video Games", format: "multiple", question: "In the game Danganronpa: Happy Trigger Havoc, the character Aoi Asahina&#039;s ultimate ability is what?", correct_answer: "Ultimate Swimmer", difficulty: "hard", incorrect_answer_1: "Ultimate Detective", incorrect_answer_2: "Ultimate Gambler", incorrect_answer_3: "Ultimate Dancer")
vg_hard_21 = Question.create(category: "Video Games", format: "multiple", question: "In TF2 Lore, what are the names of the Heavy&#039;s younger sisters?", correct_answer: "Yana and Bronislava", difficulty: "hard", incorrect_answer_1: "Gaba and Anna", incorrect_answer_2: "Yanna and Gaba", incorrect_answer_3: "Anna and Bronislava")
vg_hard_22 = Question.create(category: "Video Games", format: "multiple", question: "During development of &quot;Super Mario World&quot;, Yoshi&#039;s hard saddle was originally which of these?", correct_answer: "A shell", difficulty: "hard", incorrect_answer_1: "A slide of Gelatin", incorrect_answer_2: "A poffin", incorrect_answer_3: "A spike")
vg_hard_23 = Question.create(category: "Video Games", format: "multiple", question: "&quot;Gimmick!&quot; is a Japanese Famicom game that uses a sound chip expansion in the cartridge. What is it called?", correct_answer: "FME-7", difficulty: "hard", incorrect_answer_1: "VRC7", incorrect_answer_2: "VRC6", incorrect_answer_3: "MMC5")
vg_hard_24 = Question.create(category: "Video Games", format: "multiple", question: "The &#039;D&#039; in the term &quot;D-Mail&quot; from the game &quot;Steins; Gate&quot; is short for what?", correct_answer: "DeLorean", difficulty: "hard", incorrect_answer_1: "Deep", incorrect_answer_2: "Demo", incorrect_answer_3: "Dev")
vg_hard_25 = Question.create(category: "Video Games", format: "multiple", question: "Which of the following games in the The Legend of Zelda franchise was released in North America before Japan?", correct_answer: "The Legend of Zelda: Twilight Princess", difficulty: "hard", incorrect_answer_1: "Zelda II: The Adventure of Link", incorrect_answer_2: "The Legend of Zelda: Four Swords Adventures", incorrect_answer_3: "The Legend of Zelda: Majora&#039;s Mask")
vg_hard_26 = Question.create(category: "Video Games", format: "multiple", question: "Which variant of the MP5 is depicted in Counter-Strike 1.6?", correct_answer: "MP5N", difficulty: "hard", incorrect_answer_1: "MP5SD", incorrect_answer_2: "MP5K", incorrect_answer_3: "MP5RAS")
vg_hard_27 = Question.create(category: "Video Games", format: "multiple", question: "In the Zombies mode of &quot;Call of Duty: Black Ops&quot;, what is the &quot;Pack-A-Punched&quot; version of the &quot;Galil&quot; called?", correct_answer: "Lamentation", difficulty: "hard", incorrect_answer_1: "Galvanized Atomic Lead Insertion Liquidator", incorrect_answer_2: "Gabig", incorrect_answer_3: "Predictive Death Wish")
vg_hard_28 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Super Mario Sunshine&quot;, how do you unlock the &quot;Corona Mountain&quot; level?", correct_answer: "By clearing every 7th episode", difficulty: "hard", incorrect_answer_1: "By obtaining 70 Shines", incorrect_answer_2: "By clearing every episode involving a &quot;Secret&quot;", incorrect_answer_3: "By unlocking every nozzle F.L.U.D.D can use")
vg_hard_29 = Question.create(category: "Video Games", format: "multiple", question: "In the &quot;Little Lost Girl&quot; Easter Egg in Call of Duty: Black Ops II, what&#039;s the last step required for the achievement?", correct_answer: "Raise Hell", difficulty: "hard", incorrect_answer_1: "Freedom", incorrect_answer_2: "Skewer the Winged Beast", incorrect_answer_3: "Ascend from Darkness")
vg_hard_30 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;The Binding of Isaac&quot;, which item instantly kills Mom and Mom&#039;s Heart?", correct_answer: "The Bible", difficulty: "hard", incorrect_answer_1: "The Halo", incorrect_answer_2: "Brimstone", incorrect_answer_3: "Book of Shadows")
vg_hard_31 = Question.create(category: "Video Games", format: "multiple", question: "In the &quot;Devil May Cry&quot; franchise, which game is chronologically first?", correct_answer: "Devil May Cry 3: Dante&#039;s Awakening ", difficulty: "hard", incorrect_answer_1: "Devil May Cry 4", incorrect_answer_2: "Devil May Cry", incorrect_answer_3: "Devil May Cry 2")
vg_hard_32 = Question.create(category: "Video Games", format: "multiple", question: "According to the lore of &quot;Starbound&quot;, what does the &quot;Colony Deed&quot; do when it is placed down?", correct_answer: "Sends out an advertisement for someone to move in.", difficulty: "hard", incorrect_answer_1: "Teleports somebody from somewhere on the planet it is placed.", incorrect_answer_2: "Teleports a random person to the location.", incorrect_answer_3: "Materializes a new being at it&#039;s location.")
vg_hard_33 = Question.create(category: "Video Games", format: "multiple", question: "What was the first &quot;Call Of Duty: Zombies&quot; map to be directed by Jason Blundell?", correct_answer: "Mob Of The Dead", difficulty: "hard", incorrect_answer_1: "Buried", incorrect_answer_2: "Origins", incorrect_answer_3: "Moon")
vg_hard_34 = Question.create(category: "Video Games", format: "multiple", question: "In &quot;Call Of Duty: Zombies&quot;, which weapon does NOT deal any damage?", correct_answer: "31-79 JGb215", difficulty: "hard", incorrect_answer_1: "Sliquifier", incorrect_answer_2: "V-R11", incorrect_answer_3: "Wunderwaffe DG-2")
vg_hard_35 = Question.create(category: "Video Games", format: "multiple", question: "What is the name of the main island in PLAYERUNKNOWN&#039;S BATTLEGROUNDS?", correct_answer: "Erangel", difficulty: "hard", incorrect_answer_1: "Marmara", incorrect_answer_2: "Severny", incorrect_answer_3: "Lastovo")
vg_hard_36 = Question.create(category: "Video Games", format: "multiple", question: "In World of Warcraft, which raid instance features a chess event?", correct_answer: "Karazhan", difficulty: "hard", incorrect_answer_1: "Zul&#039;Aman", incorrect_answer_2: "Blackwing Lair", incorrect_answer_3: "Temple of Ahn&#039;Qiraj")
vg_hard_37 = Question.create(category: "Video Games", format: "multiple", question: "What is the plane of existence in MicroProse&#039;s 1997 &quot;Magic the Gathering&quot;?", correct_answer: "Shandalar", difficulty: "hard", incorrect_answer_1: "Theros", incorrect_answer_2: "Ravnica", incorrect_answer_3: "Amonkhet")
vg_hard_38 = Question.create(category: "Video Games", format: "multiple", question: "What is the default name of the Vampire character in &quot;Shining Soul 2&quot;.", correct_answer: "Bloodstar", difficulty: "hard", incorrect_answer_1: "Sachs", incorrect_answer_2: "Dracuul", incorrect_answer_3: "Alucard")
vg_hard_39 = Question.create(category: "Video Games", format: "multiple", question: "In the Kingdom Hearts series, which is not an optional boss you can fight?", correct_answer: "Master Yen Sid", difficulty: "hard", incorrect_answer_1: "Sephiroth", incorrect_answer_2: "Julius", incorrect_answer_3: "Kurt Zisa")
vg_hard_40 = Question.create(category: "Video Games", format: "multiple", question: "Which one of these is NOT an official map in Counter-Strike: Global Offensive?", correct_answer: "de_season", difficulty: "hard", incorrect_answer_1: "de_sugarcane", incorrect_answer_2: "de_canals", incorrect_answer_3: "de_militia")
vg_hard_41 = Question.create(category: "Video Games", format: "multiple", question: "What is the name of the alien species introduced in Shadow the Hedgehog (2005)?", correct_answer: "Black Arms", difficulty: "hard", incorrect_answer_1: "The Swarm", incorrect_answer_2: "Black Hive", incorrect_answer_3: "The Eclipse")
vg_hard_42 = Question.create(category: "Video Games", format: "multiple", question: "In Left 4 Dead, what is the character Bill&#039;s last name?", correct_answer: "Overbeck", difficulty: "hard", incorrect_answer_1: "Fish", incorrect_answer_2: "Roberts", incorrect_answer_3: "Stevenson")
vg_hard_43 = Question.create(category: "Video Games", format: "multiple", question: "Which of these characters from Final Fantasy VIII primarily spoke in one word sentences?", correct_answer: "Fujin", difficulty: "hard", incorrect_answer_1: "Raijin", incorrect_answer_2: "Seifer", incorrect_answer_3: "Zell")
vg_hard_44 = Question.create(category: "Video Games", format: "multiple", question: "What Touhou Project character&#039;s first ever appearance was as a midboss in the eighth game, Imperishable Night?", correct_answer: "Tewi Inaba", difficulty: "hard", incorrect_answer_1: "Mystia Lorelei", incorrect_answer_2: "Kaguya Houraisan", incorrect_answer_3: "Rumia")
vg_hard_45 = Question.create(category: "Video Games", format: "multiple", question: "Which drive form was added into Kingdom Hearts II Final Mix?", correct_answer: "Limit Form", difficulty: "hard", incorrect_answer_1: "Valor Form", incorrect_answer_2: "Wisdom Form", incorrect_answer_3: "Anti Form")
vg_hard_46 = Question.create(category: "Video Games", format: "multiple", question: "In the Team Fortress 2 canon, what did Shakespearicles NOT invent?", correct_answer: "Stairs", difficulty: "hard", incorrect_answer_1: "Two-Story Building", incorrect_answer_2: "Rocket Launcher", incorrect_answer_3: "Stage Play")
vg_hard_47 = Question.create(category: "Video Games", format: "multiple", question: "Which retro video game was released first?", correct_answer: "Space Invaders", difficulty: "hard", incorrect_answer_1: "Galaga", incorrect_answer_2: "Pac-Man", incorrect_answer_3: "Asteroids")
vg_hard_48 = Question.create(category: "Video Games", format: "multiple", question: "When was Pokemon GO released in North America?", correct_answer: "July 6th, 2016", difficulty: "hard", incorrect_answer_1: "June 5th, 2016", incorrect_answer_2: "May 24th, 2016", incorrect_answer_3: "January 2nd, 2017")
vg_hard_49 = Question.create(category: "Video Games", format: "multiple", question: "In Terraria, which debuff does the ankh charm not provide immunity to?", correct_answer: "Venom", difficulty: "hard", incorrect_answer_1: "Cursed", incorrect_answer_2: "Bleeding", incorrect_answer_3: "Slow")

## History::Easy

history_easy_0 = Question.create(category: "History", format: "multiple", question: "Which one of these was not a beach landing site in the Invasion of Normandy?", correct_answer: "Silver", difficulty: "easy", incorrect_answer_1: "Gold", incorrect_answer_2: "Juno", incorrect_answer_3: "Sword")

history_easy_1 = Question.create(category: "History", format: "multiple", question: "King Henry VIII was the second monarch of which European royal house?", correct_answer: "Tudor", difficulty: "easy", incorrect_answer_1: "York", incorrect_answer_2: "Stuart", incorrect_answer_3: "Lancaster")

history_easy_2 = Question.create(category: "History", format: "multiple", question: "What was William Frederick Cody better known as?", correct_answer: "Buffalo Bill", difficulty: "easy", incorrect_answer_1: "Billy the Kid", incorrect_answer_2: "Wild Bill Hickok", incorrect_answer_3: "Pawnee Bill")

history_easy_3 = Question.create(category: "History", format: "multiple", question: "Which German field marshal was known as the `Desert Fox`?", correct_answer: "Erwin Rommel", difficulty: "easy", incorrect_answer_1: "Ernst Busch", incorrect_answer_2: "Wolfram Freiherr von Richthofen", incorrect_answer_3: "Wilhelm List")

history_easy_4 = Question.create(category: "History", format: "multiple", question: "Who discovered Penicillin?", correct_answer: "Alexander Flemming", difficulty: "easy", incorrect_answer_1: "Marie Curie", incorrect_answer_2: "Alfred Nobel", incorrect_answer_3: "Louis Pasteur")

history_easy_5 = Question.create(category: "History", format: "multiple", question: "How many manned moon landings have there been?", correct_answer: "6", difficulty: "easy", incorrect_answer_1: "1", incorrect_answer_2: "3", incorrect_answer_3: "7")

history_easy_6 = Question.create(category: "History", format: "multiple", question: "The idea of Socialism was articulated and advanced by whom?", correct_answer: "Karl Marx", difficulty: "easy", incorrect_answer_1: "Vladimir Lenin", incorrect_answer_2: "Joseph Stalin", incorrect_answer_3: "Vladimir Putin")

history_easy_7 = Question.create(category: "History", format: "multiple", question: "In what year did the Wall Street Crash take place?", correct_answer: "1929", difficulty: "easy", incorrect_answer_1: "1932", incorrect_answer_2: "1930", incorrect_answer_3: "1925")

history_easy_8 = Question.create(category: "History", format: "multiple", question: "Which one of these tanks was designed and operated by the United Kingdom?", correct_answer: "Tog II", difficulty: "easy", incorrect_answer_1: "M4 Sherman", incorrect_answer_2: "Tiger H1", incorrect_answer_3: "T-34")

history_easy_9 = Question.create(category: "History", format: "multiple", question: "During WWII, in 1945, the United States dropped atomic bombs on the two Japanese cities of Hiroshima and what other city?", correct_answer: "Nagasaki", difficulty: "easy", incorrect_answer_1: "Kawasaki", incorrect_answer_2: "Tokyo", incorrect_answer_3: "Kagoshima")

history_easy_10 = Question.create(category: "History", format: "multiple", question: "Which of the following ancient peoples was NOT classified as Hellenic (Greek)?", correct_answer: "Illyrians", difficulty: "easy", incorrect_answer_1: "Dorians", incorrect_answer_2: "Achaeans", incorrect_answer_3: "Ionians")

history_easy_11 = Question.create(category: "History", format: "multiple", question: "Which famous world leader is famed for the saying, &quot;Let them eat cake&quot;, yet is rumored that he/she never said it at all?", correct_answer: "Marie Antoinette", difficulty: "easy", incorrect_answer_1: "Czar Nicholas II", incorrect_answer_2: "Elizabeth I", incorrect_answer_3: "Henry VIII")

history_easy_12 = Question.create(category: "History", format: "multiple", question: "The original Roman alphabet lacked the following letters EXCEPT:", correct_answer: "X", difficulty: "easy", incorrect_answer_1: "W", incorrect_answer_2: "U", incorrect_answer_3: "J")

history_easy_13 = Question.create(category: "History", format: "multiple", question: "Which of these countries remained neutral during World War II?", correct_answer: "Switzerland", difficulty: "easy", incorrect_answer_1: "United Kingdom", incorrect_answer_2: "France", incorrect_answer_3: "Italy")

history_easy_14 = Question.create(category: "History", format: "multiple", question: "The collapse of the Soviet Union took place in which year?", correct_answer: "1991", difficulty: "easy", incorrect_answer_1: "1992", incorrect_answer_2: "1891", incorrect_answer_3: "1990")

history_easy_15 = Question.create(category: "History", format: "multiple", question: "What was Manfred von Richthofen&#039;s nickname?", correct_answer: "The Red Baron", difficulty: "easy", incorrect_answer_1: "The High Flying Ace", incorrect_answer_2: "The Blue Serpent ", incorrect_answer_3: "The Germany Gunner")

history_easy_16 = Question.create(category: "History", format: "multiple", question: "Which modern day country is the region that was known as Phrygia in ancient times?", correct_answer: "Turkey", difficulty: "easy", incorrect_answer_1: "Syria", incorrect_answer_2: "Greece", incorrect_answer_3: "Egypt")

history_easy_17 = Question.create(category: "History", format: "multiple", question: "In which year did the Invasion of Kuwait by Iraq occur?", correct_answer: "1990", difficulty: "easy", incorrect_answer_1: "1992", incorrect_answer_2: "1988", incorrect_answer_3: "1986")

history_easy_18 = Question.create(category: "History", format: "multiple", question: "When did the Battle of the Somme begin?", correct_answer: "July 1st, 1916", difficulty: "easy", incorrect_answer_1: "August 1st, 1916", incorrect_answer_2: "July 2nd, 1916", incorrect_answer_3: "June 30th, 1916")

history_easy_19 = Question.create(category: "History", format: "multiple", question: "In 1720, England was in massive debt, and became in involved in the South Sea Bubble. Who was the main mastermind behind it?", correct_answer: "John Blunt", difficulty: "easy", incorrect_answer_1: "Daniel Defoe", incorrect_answer_2: "Robert Harley", incorrect_answer_3: "John Churchill")

history_easy_20 = Question.create(category: "History", format: "multiple", question: "When was Google founded?", correct_answer: "September 4, 1998", difficulty: "easy", incorrect_answer_1: "October 9, 1997", incorrect_answer_2: "December 12, 1989", incorrect_answer_3: "Feburary 7th, 2000")

history_easy_21 = Question.create(category: "History", format: "multiple", question: "Who was the Prime Minister of Japan when Japan declared war on the US?", correct_answer: "Hideki Tojo", difficulty: "easy", incorrect_answer_1: "Michinomiya Hirohito", incorrect_answer_2: "Isoroku Yamamoto", incorrect_answer_3: "Fumimaro Konoe")

history_easy_22 = Question.create(category: "History", format: "multiple", question: "What was the first sport to have been played on the moon?", correct_answer: "Golf", difficulty: "easy", incorrect_answer_1: "Football", incorrect_answer_2: "Tennis", incorrect_answer_3: "Soccer")

history_easy_23 = Question.create(category: "History", format: "multiple", question: "Who was the first prime minister of Canada?", correct_answer: "John Macdonald", difficulty: "easy", incorrect_answer_1: "John Abbott", incorrect_answer_2: "Alexander Mackenzie", incorrect_answer_3: "Robert Borden")

history_easy_24 = Question.create(category: "History", format: "multiple", question: "How was Socrates executed?", correct_answer: "Poison", difficulty: "easy", incorrect_answer_1: "Decapitation", incorrect_answer_2: "Firing squad", incorrect_answer_3: "Crucifixion ")

history_easy_25 = Question.create(category: "History", format: "multiple", question: "How long did World War II last?", correct_answer: "6 years", difficulty: "easy", incorrect_answer_1: "4 years", incorrect_answer_2: "5 years", incorrect_answer_3: "7 years")

history_easy_26 = Question.create(category: "History", format: "multiple", question: "Which of the following countries was not an axis power during World War II?", correct_answer: " Soviet Union", difficulty: "easy", incorrect_answer_1: "Italy", incorrect_answer_2: "Germany", incorrect_answer_3: "Japan")

history_easy_27 = Question.create(category: "History", format: "multiple", question: "In 1939, Britain and France declared war on Germany after it invaded which country?", correct_answer: "Poland", difficulty: "easy", incorrect_answer_1: "Czechoslovakia", incorrect_answer_2: "Austria", incorrect_answer_3: "Hungary")

history_easy_28 = Question.create(category: "History", format: "multiple", question: "The &quot;Trail of Tears&quot; was a result of which United States President&#039;s Indian Removal Policy?", correct_answer: "Andrew Jackson", difficulty: "easy", incorrect_answer_1: "Harry S. Truman", incorrect_answer_2: "Martin Van Buren", incorrect_answer_3: "John Quincy Adams")

history_easy_29 = Question.create(category: "History", format: "multiple", question: "Who was among those killed in the 2010 Smolensk, Russia plane crash tragedy?", correct_answer: "The Polish President", difficulty: "easy", incorrect_answer_1: "Pope John Paul II", incorrect_answer_2: "Bang-Ding Ow", incorrect_answer_3: "Albert Putin")

history_easy_30 = Question.create(category: "History", format: "multiple", question: "To what political party did Abraham Lincoln belong when elected POTUS?", correct_answer: "Republican", difficulty: "easy", incorrect_answer_1: "Democrat", incorrect_answer_2: "Independent", incorrect_answer_3: "Whig")

history_easy_31 = Question.create(category: "History", format: "multiple", question: "These two countries held a commonwealth from the 16th to 18th century.", correct_answer: "Poland and Lithuania", difficulty: "easy", incorrect_answer_1: "Hutu and Rwanda", incorrect_answer_2: "North Korea and South Korea", incorrect_answer_3: "Bangladesh and Bhutan")

history_easy_32 = Question.create(category: "History", format: "multiple", question: "What year did World War I begin?", correct_answer: "1914", difficulty: "easy", incorrect_answer_1: "1905", incorrect_answer_2: "1919", incorrect_answer_3: "1925")

history_easy_33 = Question.create(category: "History", format: "multiple", question: "How old was Adolf Hitler when he died?", correct_answer: "56", difficulty: "easy", incorrect_answer_1: "43", incorrect_answer_2: "65", incorrect_answer_3: "47")

history_easy_34 = Question.create(category: "History", format: "multiple", question: "Which modern country is known as &quot;The Graveyard of Empires&quot;?", correct_answer: "Afghanistan", difficulty: "easy", incorrect_answer_1: "China", incorrect_answer_2: "Iraq", incorrect_answer_3: "Russia")

history_easy_35 = Question.create(category: "History", format: "multiple", question: "Which country was Josef Stalin born in?", correct_answer: "Georgia", difficulty: "easy", incorrect_answer_1: "Russia", incorrect_answer_2: "Germany", incorrect_answer_3: "Poland")

history_easy_36 = Question.create(category: "History", format: "multiple", question: "Who led the Communist Revolution of Russia?", correct_answer: "Vladimir Lenin", difficulty: "easy", incorrect_answer_1: "Joseph Stalin", incorrect_answer_2: "Vladimir Putin", incorrect_answer_3: "Mikhail Gorbachev")

history_easy_37 = Question.create(category: "History", format: "multiple", question: "Which of the following was Brazil was a former colony under?", correct_answer: "Portugal", difficulty: "easy", incorrect_answer_1: "Spain", incorrect_answer_2: "The Netherlands", incorrect_answer_3: "France")

history_easy_38 = Question.create(category: "History", format: "multiple", question: "What is the historical name of Sri Lanka?", correct_answer: "Ceylon", difficulty: "easy", incorrect_answer_1: "Myanmar", incorrect_answer_2: "Colombo", incorrect_answer_3: "Badulla")

history_easy_39 = Question.create(category: "History", format: "multiple", question: "In 1453, which important city fell?", correct_answer: "Constantinople", difficulty: "easy", incorrect_answer_1: "Rome", incorrect_answer_2: "Hamburg", incorrect_answer_3: "Athens")

history_easy_40 = Question.create(category: "History", format: "multiple", question: "What was the name commonly given to the ancient trade routes that connected the East and West of Eurasia?", correct_answer: "Silk Road", difficulty: "easy", incorrect_answer_1: "Spice Road", incorrect_answer_2: "Clay Road", incorrect_answer_3: "Salt Road")

history_easy_41 = Question.create(category: "History", format: "multiple", question: "On what street did the 1666 Great Fire of London start?", correct_answer: "Pudding Lane", difficulty: "easy", incorrect_answer_1: "Baker Street", incorrect_answer_2: "Houses of Parliament", incorrect_answer_3: "St Paul&#039;s Cathedral")

history_easy_42 = Question.create(category: "History", format: "multiple", question: "In what year was the M1911 pistol designed?", correct_answer: "1911", difficulty: "easy", incorrect_answer_1: "1907", incorrect_answer_2: "1899", incorrect_answer_3: "1917")

history_easy_43 = Question.create(category: "History", format: "multiple", question: "In what year did the Great Northern War, between Russia and Sweden, end?", correct_answer: "1721", difficulty: "easy", incorrect_answer_1: "1726", incorrect_answer_2: "1727", incorrect_answer_3: "1724")

history_easy_44 = Question.create(category: "History", format: "multiple", question: "What does the United States of America celebrate during the 4th of July?", correct_answer: "The signing of the Declaration of Independence", difficulty: "easy", incorrect_answer_1: "The anniversary of the Battle of Gettysburg", incorrect_answer_2: "The crossing of the Delaware River", incorrect_answer_3: "The ratification of the Constitution")

history_easy_45 = Question.create(category: "History", format: "multiple", question: "Who rode on horseback to warn the Minutemen that the British were coming during the U.S. Revolutionary War?", correct_answer: "Paul Revere", difficulty: "easy", incorrect_answer_1: "Thomas Paine", incorrect_answer_2: "Henry Longfellow", incorrect_answer_3: "Nathan Hale")

history_easy_46 = Question.create(category: "History", format: "multiple", question: "Abolitionist John Brown raided the arsenal in which Virginia Town?", correct_answer: "Harper&#039;s Ferry", difficulty: "easy", incorrect_answer_1: "Richmond", incorrect_answer_2: "Harrisonburg", incorrect_answer_3: "Martinsburg")

history_easy_47 = Question.create(category: "History", format: "multiple", question: "The Ottoman Empire was dissolved after their loss in which war?", correct_answer: "World War I", difficulty: "easy", incorrect_answer_1: "Crimean War", incorrect_answer_2: "Serbian Revolution", incorrect_answer_3: "Second Balkan War")

history_easy_48 = Question.create(category: "History", format: "multiple", question: "Which famous military commander marched an army, which included war elephants, over the Alps during the Second Punic War?", correct_answer: "Hannibal", difficulty: "easy", incorrect_answer_1: "Garmanicus", incorrect_answer_2: "Alexander the Great", incorrect_answer_3: "Tiberius")

history_easy_49 = Question.create(category: "History", format: "multiple", question: "Who was the first American in space?", correct_answer: "Alan Shephard", difficulty: "easy", incorrect_answer_1: "Neil Armstrong", incorrect_answer_2: "John Glenn", incorrect_answer_3: "Jim Lovell")

## History::Medium

history_medium_0 = Question.create(category: "History", format: "multiple", question: "The seed drill was invented by which British inventor?", correct_answer: "Jethro Tull", difficulty: "medium", incorrect_answer_1: "Charles Babbage", incorrect_answer_2: "Isaac Newton", incorrect_answer_3: "J.J Thomson")

history_medium_1 = Question.create(category: "History", format: "multiple", question: "During the Mongolian invasions of Japan, what were the Mongol boats mostly stopped by?", correct_answer: "Typhoons", difficulty: "medium", incorrect_answer_1: "Tornados", incorrect_answer_2: "Economic depression", incorrect_answer_3: "Samurai")

history_medium_2 = Question.create(category: "History", format: "multiple", question: "During what war did the &quot;Cuban Missile Crisis&quot; occur?", correct_answer: "Cold War", difficulty: "medium", incorrect_answer_1: "World War I", incorrect_answer_2: "World War II", incorrect_answer_3: "Revolutionary War")

history_medium_3 = Question.create(category: "History", format: "multiple", question: "Which king was killed at the Battle of Bosworth Field in 1485? ", correct_answer: "Richard III", difficulty: "medium", incorrect_answer_1: "Edward V", incorrect_answer_2: "Henry VII", incorrect_answer_3: "James I")

history_medium_4 = Question.create(category: "History", format: "multiple", question: " What Russian automatic gas-operated assault rifle was developed in the Soviet Union in 1947, and is still popularly used today?", correct_answer: "AK-47", difficulty: "medium", incorrect_answer_1: "RPK", incorrect_answer_2: "M16", incorrect_answer_3: "MG 42")

history_medium_5 = Question.create(category: "History", format: "multiple", question: "What historical event was Tchaikovsky&#039;s 1812 Overture referencing?", correct_answer: "The Napoleonic Wars", difficulty: "medium", incorrect_answer_1: "The American War of 1812", incorrect_answer_2: "The Russian Revolution", incorrect_answer_3: "The Charge of the Light Brigade (Crimean War)")

history_medium_6 = Question.create(category: "History", format: "multiple", question: "The Spitfire L.F. Mk IX had what engine?", correct_answer: "Merlin 66", difficulty: "medium", incorrect_answer_1: "Griffon 65", incorrect_answer_2: "Merlin 50", incorrect_answer_3: "Merlin X")

history_medium_7 = Question.create(category: "History", format: "multiple", question: "Who was the first explorer to sail to North America?", correct_answer: "Leif Erikson", difficulty: "medium", incorrect_answer_1: "Christopher Columbus", incorrect_answer_2: "Amerigo Vespucci", incorrect_answer_3: "Ferdinand Magellan")

history_medium_8 = Question.create(category: "History", format: "multiple", question: "The crown of the Empire State Building was originally built for what purpose?", correct_answer: "Airship Dock", difficulty: "medium", incorrect_answer_1: "Lightning Rod", incorrect_answer_2: "Antennae", incorrect_answer_3: "Flag Pole")

history_medium_9 = Question.create(category: "History", format: "multiple", question: "Which of his six wives was Henry VIII married to the longest?", correct_answer: "Catherine of Aragon", difficulty: "medium", incorrect_answer_1: "Anne Boleyn", incorrect_answer_2: "Jane Seymour", incorrect_answer_3: "Catherine Parr")

history_medium_10 = Question.create(category: "History", format: "multiple", question: "Which country had an &quot;Orange Revolution&quot; between 2004 and 2005?", correct_answer: "Ukraine", difficulty: "medium", incorrect_answer_1: "Belarus", incorrect_answer_2: "Latvia", incorrect_answer_3: "Lithuania")

history_medium_11 = Question.create(category: "History", format: "multiple", question: "When did Jamaica recieve its independence from England? ", correct_answer: "1962", difficulty: "medium", incorrect_answer_1: "1492", incorrect_answer_2: "1963", incorrect_answer_3: "1987")

history_medium_12 = Question.create(category: "History", format: "multiple", question: "In what year was the last natural case of smallpox documented?", correct_answer: "1977", difficulty: "medium", incorrect_answer_1: "1982", incorrect_answer_2: "1980", incorrect_answer_3: "1990")

history_medium_13 = Question.create(category: "History", format: "multiple", question: "According to scholarly estimates, what percentage of the world population at the time died due to Tamerlane&#039;s conquests?", correct_answer: "5%", difficulty: "medium", incorrect_answer_1: "1%", incorrect_answer_2: "3%", incorrect_answer_3: "&lt;1%")

history_medium_14 = Question.create(category: "History", format: "multiple", question: "Which of the following Assyrian kings did NOT rule during the Neo-Assyrian Empire?", correct_answer: "Shamshi-Adad III", difficulty: "medium", incorrect_answer_1: "Shalmaneser V", incorrect_answer_2: "Esharhaddon", incorrect_answer_3: "Ashur-nasir-pal II")

history_medium_15 = Question.create(category: "History", format: "multiple", question: "The creator of the Enigma Cypher and Machine was of what nationality?", correct_answer: "German", difficulty: "medium", incorrect_answer_1: "American", incorrect_answer_2: "British", incorrect_answer_3: "Polish")

history_medium_16 = Question.create(category: "History", format: "multiple", question: "When was the United States National Security Agency established?", correct_answer: "November 4, 1952", difficulty: "medium", incorrect_answer_1: "July 26, 1908", incorrect_answer_2: " July 1, 1973", incorrect_answer_3: " November 25, 2002")

history_medium_17 = Question.create(category: "History", format: "multiple", question: "When was &quot;The Gadget&quot;, the first nuclear device to be detonated, tested?", correct_answer: "July 16, 1945", difficulty: "medium", incorrect_answer_1: "June 22, 1945", incorrect_answer_2: "August 6, 1945", incorrect_answer_3: "April 5, 1945")

history_medium_18 = Question.create(category: "History", format: "multiple", question: "Which of these countries was NOT a part of the Soviet Union?", correct_answer: "Afghanistan", difficulty: "medium", incorrect_answer_1: "Turkmenistan", incorrect_answer_2: "Kazakhstan", incorrect_answer_3: "Uzbekistan")

history_medium_19 = Question.create(category: "History", format: "multiple", question: "In the War of the Pacific (1879 - 1883), Bolivia lost its access to the Pacific Ocean after being defeated by which South American country?", correct_answer: "Chile", difficulty: "medium", incorrect_answer_1: "Peru", incorrect_answer_2: "Brazil", incorrect_answer_3: "Argentina")

history_medium_20 = Question.create(category: "History", format: "multiple", question: "What year did the Battle of Agincourt take place?", correct_answer: "1415", difficulty: "medium", incorrect_answer_1: "1463", incorrect_answer_2: "1401", incorrect_answer_3: "1422")

history_medium_21 = Question.create(category: "History", format: "multiple", question: "When did the Battle of the Bulge end?", correct_answer: "January 25, 1945", difficulty: "medium", incorrect_answer_1: "August 6, 1945", incorrect_answer_2: "December 7, 1941", incorrect_answer_3: "December 16, 1944")

history_medium_22 = Question.create(category: "History", format: "multiple", question: "What year were the Marian Reforms instituted in the Roman Republic?", correct_answer: "107 BCE", difficulty: "medium", incorrect_answer_1: "42 BCE", incorrect_answer_2: "264 BCE", incorrect_answer_3: "102 CE")

history_medium_23 = Question.create(category: "History", format: "multiple", question: "Joseph Stalin had a criminal past doing what?", correct_answer: "Robbing Trains", difficulty: "medium", incorrect_answer_1: "Murder for Hire", incorrect_answer_2: "Tax Evasion", incorrect_answer_3: "Identity Fraud")

history_medium_24 = Question.create(category: "History", format: "multiple", question: "Against which country did the Dutch Republic fight the Eighty Years&#039; War?", correct_answer: "Spain", difficulty: "medium", incorrect_answer_1: "France", incorrect_answer_2: "England", incorrect_answer_3: "Portugal")

history_medium_25 = Question.create(category: "History", format: "multiple", question: "Which WWII tank ace is credited with having destroyed the most tanks?", correct_answer: "Kurt Knispel", difficulty: "medium", incorrect_answer_1: "Michael Wittmann", incorrect_answer_2: "Walter Kniep", incorrect_answer_3: "Otto Carius")

history_medium_26 = Question.create(category: "History", format: "multiple", question: "What year is considered to be the year that the British Empire ended?", correct_answer: "1997", difficulty: "medium", incorrect_answer_1: "1986", incorrect_answer_2: "1981", incorrect_answer_3: "1971")

history_medium_27 = Question.create(category: "History", format: "multiple", question: "When did Norway get its constitution?", correct_answer: "1814", difficulty: "medium", incorrect_answer_1: "1932", incorrect_answer_2: "1905", incorrect_answer_3: "1854")

history_medium_28 = Question.create(category: "History", format: "multiple", question: "When did Norway become free from Sweden?", correct_answer: "1905", difficulty: "medium", incorrect_answer_1: "1925", incorrect_answer_2: "1814", incorrect_answer_3: "1834")

history_medium_29 = Question.create(category: "History", format: "multiple", question: "When Christopher Columbus sailed to America, what was the first region he arrived in?", correct_answer: "The Bahamas Archipelago", difficulty: "medium", incorrect_answer_1: "Florida", incorrect_answer_2: "Isthmus of Panama", incorrect_answer_3: "Nicaragua")

history_medium_30 = Question.create(category: "History", format: "multiple", question: "Which of the following snipers has the highest amount of confirmed kills?", correct_answer: "Simo H&auml;yh&auml;", difficulty: "medium", incorrect_answer_1: "Chris Kyle", incorrect_answer_2: "Vasily Zaytsev", incorrect_answer_3: "Craig Harrison")

history_medium_31 = Question.create(category: "History", format: "multiple", question: "When did the United States formally declare war on Japan, entering World War II?", correct_answer: "December 8, 1941", difficulty: "medium", incorrect_answer_1: "June 6, 1944", incorrect_answer_2: "June 22, 1941", incorrect_answer_3: "September 1, 1939")

history_medium_32 = Question.create(category: "History", format: "multiple", question: "Who is attributed credit for recording the epic poem The Odyssey?", correct_answer: "Homer", difficulty: "medium", incorrect_answer_1: "Aristotle", incorrect_answer_2: "Odysseus", incorrect_answer_3: "Socrates")

history_medium_33 = Question.create(category: "History", format: "multiple", question: "What was the unofficial name for Germany between 1919 and 1933?", correct_answer: "Weimar Republic", difficulty: "medium", incorrect_answer_1: "German Democratic Republic", incorrect_answer_2: "Federal Republic of Germany", incorrect_answer_3: "Oesterreich ")

history_medium_34 = Question.create(category: "History", format: "multiple", question: "Who was the leader of the Communist Party of Yugoslavia ?", correct_answer: "Josip Broz Tito", difficulty: "medium", incorrect_answer_1: "Karadjordje Petrovic", incorrect_answer_2: "Milos Obilic", incorrect_answer_3: "Aleskandar Petrovic")

history_medium_35 = Question.create(category: "History", format: "multiple", question: "When did the British hand-over sovereignty of Hong Kong back to China?", correct_answer: "1997", difficulty: "medium", incorrect_answer_1: "1999", incorrect_answer_2: "1841", incorrect_answer_3: "1900")

history_medium_36 = Question.create(category: "History", format: "multiple", question: "In what year did the Berlin Wall fall?", correct_answer: "1989", difficulty: "medium", incorrect_answer_1: "1987", incorrect_answer_2: "1991", incorrect_answer_3: "1993")

history_medium_37 = Question.create(category: "History", format: "multiple", question: "In 1961, an American B-52 aircraft crashed and nearly detonated two 4mt nuclear bombs over which US city?", correct_answer: "Goldsboro, North Carolina", difficulty: "medium", incorrect_answer_1: "Hicksville, New York", incorrect_answer_2: "Jacksonville, Florida", incorrect_answer_3: "Conway, Arkansas")

history_medium_38 = Question.create(category: "History", format: "multiple", question: "When was the People&#039;s Republic of China founded?", correct_answer: "October 1, 1949", difficulty: "medium", incorrect_answer_1: "April 3, 1947", incorrect_answer_2: "May 7, 1945", incorrect_answer_3: "December 6, 1950")

history_medium_39 = Question.create(category: "History", format: "multiple", question: "The minigun was designed in 1960 by which manufacturer.", correct_answer: "General Electric", difficulty: "medium", incorrect_answer_1: "Colt Firearms", incorrect_answer_2: "Heckler &amp; Koch", incorrect_answer_3: "Sig Sauer")

history_medium_40 = Question.create(category: "History", format: "multiple", question: "On which aircraft carrier did the Doolitte Raid launch from on April 18, 1942 during World War II?", correct_answer: "USS Hornet", difficulty: "medium", incorrect_answer_1: "USS Enterprise", incorrect_answer_2: "USS Lexington", incorrect_answer_3: "USS Saratoga")

history_medium_41 = Question.create(category: "History", format: "multiple", question: "What is the name of the ship which was only a few miles away from the RMS Titanic when it struck an iceberg on April 14, 1912?", correct_answer: "Californian", difficulty: "medium", incorrect_answer_1: "Carpathia", incorrect_answer_2: "Cristol", incorrect_answer_3: "Commerce")

history_medium_42 = Question.create(category: "History", format: "multiple", question: "What year did Skoal, a smokeless Tobacco company, release their first line of Pouches, known as &quot;Skoal Bandits&quot;?", correct_answer: "1983", difficulty: "medium", incorrect_answer_1: "1934", incorrect_answer_2: "1984", incorrect_answer_3: "1822")

history_medium_43 = Question.create(category: "History", format: "multiple", question: "Which of these 1900s tanks were designed and built BEFORE the others?", correct_answer: "Renault FT", difficulty: "medium", incorrect_answer_1: "M4 Sherman", incorrect_answer_2: " Panzer IV", incorrect_answer_3: "Cromwell ")

history_medium_44 = Question.create(category: "History", format: "multiple", question: "What happened on June 6, 1944?", correct_answer: "D-Day", difficulty: "medium", incorrect_answer_1: "Atomic bombings of Hiroshima and Nagasaki", incorrect_answer_2: "Attack on Pearl Harbor", incorrect_answer_3: "The Liberation of Paris")

history_medium_45 = Question.create(category: "History", format: "multiple", question: "In what year did Texas secede from Mexico?", correct_answer: "1836", difficulty: "medium", incorrect_answer_1: "1838", incorrect_answer_2: "1845", incorrect_answer_3: "1844")

history_medium_46 = Question.create(category: "History", format: "multiple", question: "When did O, Canada officially become the national anthem?", correct_answer: "1980", difficulty: "medium", incorrect_answer_1: "1950", incorrect_answer_2: "1920", incorrect_answer_3: "1880")

history_medium_47 = Question.create(category: "History", format: "multiple", question: "The Thirty Years War ended with which treaty?", correct_answer: "Peace of Westphalia", difficulty: "medium", incorrect_answer_1: "Treaty of Versailles", incorrect_answer_2: "Treaty of Paris", incorrect_answer_3: "Peace of Prague")

history_medium_48 = Question.create(category: "History", format: "multiple", question: "Which Nazi General was known as the &quot;Desert Fox&quot;?", correct_answer: "Erwin Rommel", difficulty: "medium", incorrect_answer_1: "Gerd von Rundstadt", incorrect_answer_2: "Wilhelm Keitel", incorrect_answer_3: "Heinz Guderian ")

history_medium_49 = Question.create(category: "History", format: "multiple", question: "John Moses Browning, the designer of the M1918 BAR (Browning Automatic Rifle) was a part of which religion?", correct_answer: "Mormon", difficulty: "medium", incorrect_answer_1: "Catholic", incorrect_answer_2: "Jewish", incorrect_answer_3: "Atheist")


## History::Hard

history_hard_0 = Question.create(category: "History", format: "multiple", question: "When did the French Revolution begin?", correct_answer: "1789", difficulty: "hard", incorrect_answer_1: "1823", incorrect_answer_2: "1756", incorrect_answer_3: "1799")

history_hard_1 = Question.create(category: "History", format: "multiple", question: "In the year 1900, what were the most popular first names given to boy and girl babies born in the United States?", correct_answer: "John and Mary", difficulty: "hard", incorrect_answer_1: "Joseph and Catherine", incorrect_answer_2: "William and Elizabeth", incorrect_answer_3: "George and Anne")

history_hard_2 = Question.create(category: "History", format: "multiple", question: "Spain was formed in 1469 with the marriage of Isabella I of Castile and Ferdinand II of what other Iberian kingdom?", correct_answer: "Aragon", difficulty: "hard", incorrect_answer_1: "Galicia", incorrect_answer_2: "Le&oacute;n", incorrect_answer_3: "Navarre")

history_hard_3 = Question.create(category: "History", format: "multiple", question: "When did Spanish Peninsular War start?", correct_answer: "1808", difficulty: "hard", incorrect_answer_1: "1806", incorrect_answer_2: "1810", incorrect_answer_3: "1809")

history_hard_4 = Question.create(category: "History", format: "multiple", question: "What year was Canada founded in?", correct_answer: "1867", difficulty: "hard", incorrect_answer_1: "1798", incorrect_answer_2: "1859", incorrect_answer_3: "1668")

history_hard_5 = Question.create(category: "History", format: "multiple", question: "List the following Iranic empires in chronological order:", correct_answer: "Median, Achaemenid, Parthian, Sassanid", difficulty: "hard", incorrect_answer_1: "Median, Achaemenid, Sassanid, Parthian", incorrect_answer_2: "Achaemenid, Median, Parthian, Sassanid", incorrect_answer_3: "Achaemenid, Median, Sassanid, Parthian")

history_hard_6 = Question.create(category: "History", format: "multiple", question: "What age was King Henry V when he died?", correct_answer: "35", difficulty: "hard", incorrect_answer_1: "62", incorrect_answer_2: "87", incorrect_answer_3: "73")

history_hard_7 = Question.create(category: "History", format: "multiple", question: "On which day did ARPANET suffer a 4 hour long network crash?", correct_answer: "October 27, 1980", difficulty: "hard", incorrect_answer_1: "November 21, 1969", incorrect_answer_2: "October 29, 1969", incorrect_answer_3: "December 9, 1991")

history_hard_8 = Question.create(category: "History", format: "multiple", question: "What did the first vending machines in the early 1880&#039;s dispense?", correct_answer: "Post cards", difficulty: "hard", incorrect_answer_1: "Alcohol", incorrect_answer_2: "Cigarettes", incorrect_answer_3: "Sodas ")

history_hard_9 = Question.create(category: "History", format: "multiple", question: "When was the SS or Schutzstaffel established?", correct_answer: "April 4th, 1925", difficulty: "hard", incorrect_answer_1: "September 1st, 1941", incorrect_answer_2: "March 8th, 1935", incorrect_answer_3: "February 21st, 1926")

history_hard_10 = Question.create(category: "History", format: "multiple", question: "During the Wars of the Roses (1455 - 1487) which Englishman was dubbed &quot;the Kingmaker&quot;?", correct_answer: "Richard Neville", difficulty: "hard", incorrect_answer_1: "Richard III", incorrect_answer_2: "Henry V", incorrect_answer_3: "Thomas Warwick")

history_hard_11 = Question.create(category: "History", format: "multiple", question: "When was Adolf Hitler appointed as Chancellor of Germany?", correct_answer: "January 30, 1933", difficulty: "hard", incorrect_answer_1: "September 1, 1939", incorrect_answer_2: "February 27, 1933", incorrect_answer_3: "October 6, 1939")

history_hard_12 = Question.create(category: "History", format: "multiple", question: "Bohdan Khmelnytsky was which of the following?", correct_answer: "Leader of the Ukrainian Cossacks", difficulty: "hard", incorrect_answer_1: "General Secretary of the Communist Party of the USSR", incorrect_answer_2: "Prince of Wallachia", incorrect_answer_3: "Grand Prince of Novgorod")

history_hard_13 = Question.create(category: "History", format: "multiple", question: "Which one of these rulers did not belong to the Habsburg dynasty?", correct_answer: "Philip V", difficulty: "hard", incorrect_answer_1: "Charles V", incorrect_answer_2: "Philip II", incorrect_answer_3: "Francis Joseph")

history_hard_14 = Question.create(category: "History", format: "multiple", question: "How many sonatas did Ludwig van Beethoven write?", correct_answer: "32", difficulty: "hard", incorrect_answer_1: "50", incorrect_answer_2: "31", incorrect_answer_3: "21")

history_hard_15 = Question.create(category: "History", format: "multiple", question: "The Second Boer War in 1899 was fought where?", correct_answer: "South Africa", difficulty: "hard", incorrect_answer_1: "Argentina", incorrect_answer_2: "Nepal", incorrect_answer_3: "Bulgaria")

history_hard_16 = Question.create(category: "History", format: "multiple", question: "What was the real name of the Albanian national leader Skanderbeg?", correct_answer: "Gjergj Kastrioti", difficulty: "hard", incorrect_answer_1: "Diturak Zhulati", incorrect_answer_2: "Iskander Bejko", incorrect_answer_3: "Mirash Krasniki")

history_hard_17 = Question.create(category: "History", format: "multiple", question: "Who invented the &quot;Flying Shuttle&quot; in 1738; one of the key developments in the industrialization of weaving?", correct_answer: "John Kay", difficulty: "hard", incorrect_answer_1: "James Hargreaves", incorrect_answer_2: "Richard Arkwright", incorrect_answer_3: "John Deere")

history_hard_18 = Question.create(category: "History", format: "multiple", question: "What year was the United States Declaration of Independence signed?", correct_answer: "1776", difficulty: "hard", incorrect_answer_1: "1775", incorrect_answer_2: "1774", incorrect_answer_3: "1777")

history_hard_19 = Question.create(category: "History", format: "multiple", question: "When did Lithuania declare independence from the Soviet Union?", correct_answer: "March 11th, 1990", difficulty: "hard", incorrect_answer_1: "December 25th, 1991", incorrect_answer_2: "December 5th, 1991", incorrect_answer_3: "April 20th, 1989")

history_hard_20 = Question.create(category: "History", format: "multiple", question: "What was Napoleon Bonaparte&#039;s name before he changed it?", correct_answer: "Napoleone di Buonaparte", difficulty: "hard", incorrect_answer_1: "Naapolion van Bonijpaart", incorrect_answer_2: "Napole&atilde;o do Boaparte", incorrect_answer_3: "Napoleona de Buenoparte")

history_hard_21 = Question.create(category: "History", format: "multiple", question: "The Hagia Sophia was commissioned by which emperor of the Byzantine Empire?", correct_answer: "Justinian I", difficulty: "hard", incorrect_answer_1: "Constantine IV", incorrect_answer_2: "Arcadius", incorrect_answer_3: "Theodosius the Great")

history_hard_22 = Question.create(category: "History", format: "multiple", question: "What was found in 1946 by two young shepards near a cave?", correct_answer: "Dead Sea Scrolls", difficulty: "hard", incorrect_answer_1: "The Blackbeard Chest", incorrect_answer_2: "Sheep", incorrect_answer_3: "The First Oaxaca Cave Sleeper")

history_hard_23 = Question.create(category: "History", format: "multiple", question: "When was the city of Rome, Italy founded?", correct_answer: "753 BCE", difficulty: "hard", incorrect_answer_1: "902 BCE", incorrect_answer_2: "524 BCE", incorrect_answer_3: "697 BCE")

history_hard_24 = Question.create(category: "History", format: "multiple", question: "How many women joined the United States Armed Services during World War II?", correct_answer: "350,000", difficulty: "hard", incorrect_answer_1: "225,000", incorrect_answer_2: "100,000", incorrect_answer_3: "500,000")

history_hard_25 = Question.create(category: "History", format: "multiple", question: "How long did the Warsaw Uprising during World War II last?", correct_answer: "63 Days", difficulty: "hard", incorrect_answer_1: "20 Days", incorrect_answer_2: "55 Days", incorrect_answer_3: "224 Days")

history_hard_26 = Question.create(category: "History", format: "multiple", question: "What was the aim of the &quot;Umbrella Revolution&quot; in Hong Kong in 2014?", correct_answer: "Genuine universal suffrage", difficulty: "hard", incorrect_answer_1: "Gaining Independence", incorrect_answer_2: "Go back under British Rule", incorrect_answer_3: "Lower taxes")

history_hard_27 = Question.create(category: "History", format: "multiple", question: "What was the original name of New York City?", correct_answer: "New Amsterdam", difficulty: "hard", incorrect_answer_1: "New London", incorrect_answer_2: "New Paris", incorrect_answer_3: "New Rome")

history_hard_28 = Question.create(category: "History", format: "multiple", question: "When was the &quot;Siege of Leningrad&quot; lifted during World War II?", correct_answer: "January 1944", difficulty: "hard", incorrect_answer_1: "September 1943", incorrect_answer_2: "November 1943", incorrect_answer_3: "March 1944")

history_hard_29 = Question.create(category: "History", format: "multiple", question: "The main objective of the German operation &quot;Case Blue&quot; during World War II was originally to capture what?", correct_answer: "Caucasus", difficulty: "hard", incorrect_answer_1: "Stalingrad", incorrect_answer_2: "Crimea", incorrect_answer_3: "Voronezh")

history_hard_30 = Question.create(category: "History", format: "multiple", question: "Which of the following was not one of Joseph Stalin&#039;s ten blows during World War II?", correct_answer: "Vistula-Oder Offensive", difficulty: "hard", incorrect_answer_1: "Crimean Offensive", incorrect_answer_2: "Leningrad-Novgorod Offensive", incorrect_answer_3: "Operation Bagration")

history_hard_31 = Question.create(category: "History", format: "multiple", question: "Which day did World War I begin?", correct_answer: "July 28", difficulty: "hard", incorrect_answer_1: "January 28", incorrect_answer_2: "June 28", incorrect_answer_3: "April 28")

history_hard_32 = Question.create(category: "History", format: "multiple", question: "What did the abbreviation &quot;RMS&quot; stand for in the RMS Titanic in 1912?", correct_answer: "Royal Mail Ship", difficulty: "hard", incorrect_answer_1: "Royal Majesty Service", incorrect_answer_2: "Regular Maritime Schedule ", incorrect_answer_3: "Regulated Maelstrom Sensor")

history_hard_33 = Question.create(category: "History", format: "multiple", question: "In addition to his career as an astrologer and &quot;prophet&quot;, Nostradamus published a 1555 treatise that included a section on what?", correct_answer: "Making jams and jellies", difficulty: "hard", incorrect_answer_1: "Teaching parrots to talk", incorrect_answer_2: "Cheating at card games", incorrect_answer_3: "Digging graves")

history_hard_34 = Question.create(category: "History", format: "multiple", question: "Before the American colonies switched to the Gregorian calendar in 1752, on what date did their new year start?", correct_answer: "March 25th", difficulty: "hard", incorrect_answer_1: "June 1st", incorrect_answer_2: "September 25th", incorrect_answer_3: "December 1st")

history_hard_35 = Question.create(category: "History", format: "multiple", question: "Toussaint Louverture led a successful slave revolt in which country?", correct_answer: "Haiti", difficulty: "hard", incorrect_answer_1: "France", incorrect_answer_2: "Cuba", incorrect_answer_3: "United States")

history_hard_36 = Question.create(category: "History", format: "multiple", question: "From 1940 to 1942, what was the capital-in-exile of Free France ?", correct_answer: "Brazzaville", difficulty: "hard", incorrect_answer_1: "Algiers", incorrect_answer_2: "Paris", incorrect_answer_3: "Tunis")

history_hard_37 = Question.create(category: "History", format: "multiple", question: "The ancient city of Chich&eacute;n Itz&aacute; was built by which civilization?", correct_answer: "Mayans", difficulty: "hard", incorrect_answer_1: "Aztecs", incorrect_answer_2: "Incas", incorrect_answer_3: "Toltecs")

history_hard_38 = Question.create(category: "History", format: "multiple", question: "Which English king was married to Eleanor of Aquitaine?", correct_answer: "Henry II", difficulty: "hard", incorrect_answer_1: "Richard I", incorrect_answer_2: "Henry I", incorrect_answer_3: "Henry V")

history_hard_39 = Question.create(category: "History", format: "multiple", question: "Which countries participated in the Lobster War?", correct_answer: "France and Brazil", difficulty: "hard", incorrect_answer_1: "Canada and Norway", incorrect_answer_2: "Australia and New Zealand", incorrect_answer_3: "United States and England")

history_hard_40 = Question.create(category: "History", format: "multiple", question: "Who was the first man to travel into outer space twice?", correct_answer: "Gus Grissom", difficulty: "hard", incorrect_answer_1: "Vladimir Komarov", incorrect_answer_2: "Charles Conrad", incorrect_answer_3: "Yuri Gagarin")

history_hard_41 = Question.create(category: "History", format: "multiple", question: "Who assassinated President James A. Garfield?", correct_answer: "Charles Guiteau", difficulty: "hard", incorrect_answer_1: "Sirhan Sirhan", incorrect_answer_2: "Leon Czolgosz", incorrect_answer_3: "John Wilkes Booth")

history_hard_42 = Question.create(category: "History", format: "multiple", question: "The pantheon in Rome was used to worship what god?", correct_answer: "Any god they wanted", difficulty: "hard", incorrect_answer_1: "Athena", incorrect_answer_2: "Zeus", incorrect_answer_3: "Both Athena and Zeus")

history_hard_43 = Question.create(category: "History", format: "multiple", question: "During World War I, which nation&#039;s monarchs were blood related?", correct_answer: "England, Germany, Russia", difficulty: "hard", incorrect_answer_1: "France, Russia, Germany", incorrect_answer_2: "Serbia, Russia, Croatia", incorrect_answer_3: "Germany, Spain, Austria")

history_hard_44 = Question.create(category: "History", format: "multiple", question: "After the 1516 Battle of Marj Dabiq, the Ottoman Empire took control of Jerusalem from which sultanate?", correct_answer: "Mamluk", difficulty: "hard", incorrect_answer_1: "Ayyubid", incorrect_answer_2: "Ummayyad", incorrect_answer_3: "Seljuq")

history_hard_45 = Question.create(category: "History", format: "multiple", question: "The son of which pope supposedly held a lecherous f&ecirc;te involving 50 courtesans in the papal palace?", correct_answer: "Alexander VI", difficulty: "hard", incorrect_answer_1: "Innocent V", incorrect_answer_2: "Urban II", incorrect_answer_3: "Pius III")

history_hard_46 = Question.create(category: "History", format: "multiple", question: "The ontological argument for the proof of God&#039;s existence is first attributed to whom?", correct_answer: "Anselm of Canterbury", difficulty: "hard", incorrect_answer_1: "Ren&eacute; Descartes", incorrect_answer_2: "Immanuel Kant", incorrect_answer_3: "Aristotle")

history_hard_47 = Question.create(category: "History", format: "multiple", question: "Which is the hull NO. of the Fletcher class destroyer Fletcher?", correct_answer: "DD-445", difficulty: "hard", incorrect_answer_1: "DD-992", incorrect_answer_2: "DD-444", incorrect_answer_3: "DD-446")

history_hard_48 = Question.create(category: "History", format: "multiple", question: "Which country did the Eureka Rebellion, an 1856 battle against colonial rule, take place in?", correct_answer: "Australia", difficulty: "hard", incorrect_answer_1: "India", incorrect_answer_2: "Canada", incorrect_answer_3: "Brazil")

history_hard_49 = Question.create(category: "History", format: "multiple", question: "What is the name of the Boeing B-29 that dropped the &#039;Little Boy&#039; atomic bomb on Hiroshima?", correct_answer: "Enola Gay", difficulty: "hard", incorrect_answer_1: "Necessary Evil", incorrect_answer_2: "The Great Artiste", incorrect_answer_3: "Full House")
