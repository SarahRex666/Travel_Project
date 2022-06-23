puts "🌱 Seeding spices..."
Guide.destroy_all
Location.destroy_all
Tour.destroy_all
Addon.destroy_all
Review.destroy_all

visit_namibia = Tour.create(name: "Visit Namibia", description: "Etosha National Park, Okonjima Nature Reserve, Walvis Bay, Namib-Naukluft National Park includes hotel stays, park passes, meals, tour guides, and transportation. (Available add-on: animal sanctuary meet and greet, kayaking)", days: 5, price: 1250, tags: ["adventure", "nature", "family friendly"], photo_url: "https://i.imgur.com/KdZsa9v.jpg")

visit_thailand = Tour.create(name: "Visit Thailand", description: "Khao Sok National Park, Chiang Mai, Bangkok, Railay Beach, Ayutthaya, Koh Samui includes hotel stays, transportation, tour guides, entry to museums and monuments. (Available add-on: street food tour, muay Thai lessons)", days: 10, price: 1600, tags: ["nightlife", "nature", "spiritual"], photo_url: "https://i.imgur.com/OhrSY54.jpg")

visit_japan = Tour.create(name: "Visit Japan", description: "Tokyo, Kyoto, Osaka, Mount Fuji, Nara Park includes hotel stays, transportation, tour guides, entry to museums and monuments. (Available add-ons: wood block print making workshop, traditional tea ceremony)", days: 7, price: 1500, tags: ["culture", "nature", "family"], photo_url: "https://i.imgur.com/CcDmZEG.jpg")

visit_india = Tour.create(name: "Visit India", description: "Delhi, Agra, Jaipur, Mumbai, Varanasi, Chennai includes hotel stays, transportation, tour guides, entry to museums and monuments. (Available add-ons: animal sanctuary meet and greet, private yoga class)", days: 10, price: 1500, tags: ["culture", "nature", "spiritual"], photo_url: "https://i.imgur.com/9Iz7POd.jpg")

visit_brazil = Tour.create(name: "Visit Brazil", description: "Rio de Janiero, São Paulo, Ipanema Beach, Christ the Redeemer, Sugarloaf Mountain includes hotel stay, transportation, tour guides, entry to museums and monuments. (Available add-ons : street food tour, soccer game, Bossa nova concert)", days: 5, price: 800, tags: ["culture", "nightlife", "spiritual"], photo_url: "https://i.imgur.com/GtlRt2c.jpg")

visit_mexico = Tour.create(name: "Visit Mexico", description: "Mexico City, Oaxaca, San Cristobal, Tulum includes hotel stay, transportation, tour guides, entry to museums and monuments. (Available add-ons : street food tour, surf lessons, animal sanctuary meet and greet)", days: 7, price: 1100, tags: ["culture", "nature", "family"], photo_url: "https://i.imgur.com/XcP39he.jpg")

visit_morocco = Tour.create(name: "Visit Morocco", description: "Casablanca, Marrakech, Fes includes hotel stay, transportation, tour guides, entry to museums and monuments, camel rides. (Available add-ons: street food tour, live music concert, bazaar tour)", days: 5, price: 750, tags: ["culture", "nature"], photo_url: "https://i.imgur.com/nuLSYHt.jpg")

visit_alaska = Tour.create(name: "Visit Alaska", description: "Anchorage, Seward & Kenai Fjords, Denali National Park, Girdwood, Talkeetna includes hotel stay, transportation, tour guides, entry to parks. (Available add-ons: kayaking, animal sanctuary meet and greet)", days: 5, price: 1000, tags: ["family", "nature"], photo_url: "https://i.imgur.com/G9vsLnS.jpg")

visit_spain = Tour.create(name: "Visit Spain", description: "Madrid, Barcelona, Sevilla, Salamanca, Granada, Toledo includes hotel stay, transportation, tour guides, entry to museums and monuments. (Available add-ons: tango lessons, bike rental)", days: 5, price: 800, tags: ["family", "culture"], photo_url: "https://i.imgur.com/mM3nFq3.jpg")

visit_greece = Tour.create(name: "Visit Greece", description: "Athens, Delphi, Santorini, Mycenae, Hydra, Olympia includes hotel stay, transportation, tour guides, entry to museums and monuments. (Available add-ons: olive oil tasting, wine tasting, bike rental)", days: 7, price: 1200, tags: ["family", "culture"], photo_url: "https://i.imgur.com/q39sDAk.jpg")

# Seed your database here
beata = Guide.create(name: "Beata",bio: "Namibia, Brazil", photo_url: "https://i.imgur.com/y0BYSO0.jpg")
imani = Guide.create(name: "Imani",bio: "Alaska, Mexico", photo_url: "https://i.imgur.com/iB1isXA.jpg")
florentina = Guide.create(name: "Florentina",bio: "Spain, Greece, Morocco", photo_url: "https://i.imgur.com/7hOKQva.jpg")
raul = Guide.create(name: "Raul",bio: "Japan", photo_url: "https://i.imgur.com/irQaX8V.jpg")
prayat = Guide.create(name: "Prayat",bio: "India, Thailand", photo_url: "https://i.imgur.com/PCffi4p.jpg")

Addon.create(name: "Street Food Tour", price: 100)
Addon.create(name: "Live Music Concert", price: 100)
Addon.create(name: "Bazaar Tour", price: 100)
Addon.create(name: "Surf Lessons", price: 100)
Addon.create(name: "Animal Sanctuary Meet and Greet", price: 100)
Addon.create(name: "Kayaking", price: 100)
Addon.create(name: "Wood Block Print", price: 100)
Addon.create(name: "Tea Ceremony", price: 100)
Addon.create(name: "Tango Lessons", price: 100)
Addon.create(name: "Olive Oil Tasting", price: 100)
Addon.create(name: "Wine Tasting", price: 100)
Addon.create(name: "Muay Thai Lessons", price: 100)
Addon.create(name: "Private Yoga Classes", price: 100)
Addon.create(name: "Bike Rental", price: 100)

Location.create(name: "Namibia", description: "Africa", tour_id: visit_namibia.id, guide_id: beata.id)

Location.create(name: "Thailand", description: "Asia", tour_id: visit_thailand.id, guide_id: prayat.id)

Location.create(name: "Japan", description: "Asia", tour_id: visit_japan.id, guide_id: raul.id)

Location.create(name: "India", description: "Asia", tour_id: visit_india.id, guide_id: prayat.id)

Location.create(name: "Brazil", description: "South America", tour_id: visit_brazil.id, guide_id: beata.id)

Location.create(name: "Mexico", description: "North America", tour_id: visit_mexico.id, guide_id: imani.id)

Location.create(name: "Morocco", description: "Africa", tour_id: visit_morocco.id, guide_id: florentina.id)

Location.create(name: "Alaska", description: "North America", tour_id: visit_alaska.id, guide_id: imani.id)

Location.create(name: "Spain", description: "Europe", tour_id: visit_spain.id, guide_id: florentina.id)

Location.create(name: "Greece", description: "Europe", tour_id: visit_greece.id, guide_id: florentina.id)


Review.create(username: "Miriam S.", review: "My family and I loved our time in Spain! Florentina has an incredible knowledge of art history and is such a kind and friendly person. The tour itself was well organized and was perfectly balanced between activities and down time.", rating: 5)

Review.create(username: "Kai B.", review: "Namibia was a once in a lifetime adventure and I owe it all to Sojourn. The animal sanctuary meet and greet was a highlight and I’m glad that Sojourn cares about supporting local, ethical businesses. I would have preferred a wider variety of dining options but everything else was perfect.", rating: 4)

Review.create(username: "Paola H.", review: "Prayat and the rest of the Sojourn team made my time is Thailand unforgettable. My wife and I were in a group of 8 which was an ideal size in our opinion.  Prayat took us to all of their favorite local food stands and was happy to direct us to some gay friendly clubs on our night in Bangkok. Our hotel stays were more luxurious than expected as well! Cant wait to book with Sojourn again.", rating: 5)

Review.create(username: "Rafi K.", review: "I had been to Mexico once before but really wanted more of an immersive experience, Sojourn’s tour provided everything I had hoped for and more. Our tour guide Imani went above and beyond to show us Mexico off the beaten path.  We saw local art galleries, ate Oaxacan food, listened to Son Jarocho, and learned about indigenous culture. Best tour I’ve ever been on, thank you Sojourn!", rating: 5)


puts "✅ Done seeding!"
