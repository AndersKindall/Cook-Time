# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Step.destroy_all
Comment.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!("users")
ActiveRecord::Base.connection.reset_pk_sequence!("recipes")
ActiveRecord::Base.connection.reset_pk_sequence!("ingredients")
ActiveRecord::Base.connection.reset_pk_sequence!("steps")
ActiveRecord::Base.connection.reset_pk_sequence!("comments")


user1 = User.create(username: 'akindall', email: 'akindall47@gmail.com', password: '123456')
user2 = User.create(username: 'elle', email: 'epopejoy@gmail.com', password: 'password')
user3 = User.create(username: 'alisonroman', email: 'aroman@gmail.com', password: 'password')
user4 = User.create(username: 'samsifton', email: 'ssifton@nyt.com', password: 'password')

recipe1 = Recipe.create!(
    dish_name: "Shakshuka With Feta", 
    cook_time: "50 minutes", 
    yield: "4 to 6 servings",
    author: "Melissa Clark",
    description: "Shakshuka may be at the apex of eggs-for-dinner recipes, though in Israel it is breakfast food, a bright, spicy start to the day with a pile of pita or challah served on the side. (It also makes excellent brunch or lunch food.) It's a one-skillet recipe of eggs baked in a tomato-red pepper sauce spiced with cumin, paprika and cayenne. First you make that sauce, which comes together fairly quickly on top of the stove, then you gently crack each of the eggs into the pan, nestling them into the sauce. The pan is moved into the oven to finish. Shakshuka originated in North Africa, and like many great dishes there are as many versions as there are cooks who have embraced it. This one strays from more traditional renditions by adding crumbled feta cheese, which softens into creamy nuggets in the oven's heat."
)
recipe2 = Recipe.create!(
    dish_name: "San Francisco-Style Vietnamese American Garlic Noodles",
    cook_time: "15 minutes",
    yield: "4 servings",
    author: "J. Kenji Lopez-Alt",
    description: "These noodles, adapted from the cookbook 'The Wok' by J. Kenji López-Alt, and based on the noodle dish originally created and served by Helene An at San Francisco's Thanh Long restaurant, are extraordinarily simple and delicious on their own, but that doesn't mean you can't fancy them up a bit. They go very well with seafood, and some raw, shell-on shrimp stir-fried along with the garlic right from the start would be an excellent addition. Recently, I've taken to adding a few spoonfuls of tarako or mentaiko - Japanese salted pollock roe. Sushi-style flying fish roe (tobiko) or salmon roe (ikura) would also be a great addition, as would chunks of crab or lobster meat, or even Western-style caviar (if you're feeling flush)."
)
recipe3 = Recipe.create!(
    dish_name: "Hot Sauce Roast Chicken With Tangy Kale Salad",
    cook_time: "1 1/2 hours, plus resting",
    yield: "4 to 6 servings",
    author: "Josef Centeno and Betty Hallock",
    description: "In his cookbook “Amá: A Modern Tex-Mex Kitchen” (Chronicle Books, 2019), the chef Josef Centeno experiments with the Tex-Mex cuisine he grew up eating in San Antonio. Barbecue chicken played a significant role, and he reinterpreted those flavors with a chile paste-rubbed chicken that gets basted with hot sauce as it roasts. This simplified version requires less work and comes together with pantry staples. Slip a few pats of butter under the skin (this ensures the meat stays moist), toss together a dry rub made with chile powder, cumin and onion powder, then rub it all over the chicken. Pop it into the oven and baste with a combination of hot sauce and melted butter every 10 minutes. The crunchy kale salad pairs well with the tangy, buttery chicken. A pile of rice or beans would round out the meal."
)
recipe4 = Recipe.create!(
    dish_name: "Soy-Glazed Salmon Hand Rolls",
    cook_time: "30 minutes",
    yield: "4 servings",
    author: "Kay Chun",
    description: "Unagi sauce is a sweet, thickened soy sauce traditionally used on grilled eel. Here, the simple sauce of soy sauce, sugar and mirin is enhanced with the addition of aromatic garlic and ginger, transforming it into a savory glaze for buttery salmon. Once the salmon is roasted and lacquered in the sauce, it becomes the perfect filling for customizable hand rolls. A perfect roll is assembled with the flaked salmon and some creamy avocado and crisp cucumbers for bites that are rich, fresh and crunchy all at once. Including cooked short-grain rice in the filling is traditional, but these rolls would be a great place to use other leftover grains like farro or quinoa."
)
recipe5 = Recipe.create!(
    dish_name: "Thai-Inspired Chicken Meatball Soup",
    cook_time: "30 minutes",
    yield: "4 to 6 servings",
    author: "Ali Slagle",
    description: "This stellar soup is reviving and cozy, made in one pot, and ready in 30 minutes. It starts with ginger-scented chicken-cilantro meatballs that are browned, then simmered in a fragrant coconut milk broth that's inspired by tom kha gai, a Thai chicken-coconut soup seasoned with lemongrass, galangal, makrut lime leaves and chile. A heap of spinach is added for color and flavor, and a squeeze of lime adds brightness and punch. The soup is brothy, so serve it over rice or another grain to make it a full meal."
)
recipe6 = Recipe.create!(
    dish_name: "Ribollita",
    cook_time: "About 50 minutes",
    yield: "4 servings", 
    author: "Mark Bittman",
    description: "Even vegetable stews can have more vegetables. This recipe adds a pound of kale -- that's right, a full pound -- to softened onions, carrots and celery, combined with beans and tomatoes. It's simply a matter of bringing the other vegetables together in a simmer, then adding the kale and topping with the toast. The whole dish bakes in the oven for a few minutes to brown the toast with a little Parmesan."
)
recipe7 = Recipe.create!(
    dish_name: "Roasted Green Beans With Pancetta and Lemon Zest",
    cook_time: "20 minutes",
    yield: "8 to 10 servings",
    author: "Lidey Heuck",
    description: "This simple, bright green bean dish is as welcome alongside weeknight salmon as it is a Thanksgiving turkey. Green beans are delicious roasted at a high temperature and take just 15 minutes to cook, which particularly important on Thanksgiving when oven space is precious. Trim the green beans ahead of time, and this dish will come together in a flash. Many grocery stores sell packages of diced pancetta, a shortcut that makes this recipe a cinch. If you're dicing the pancetta yourself, make sure to chop it very finely so it roasts in time with the green beans. (This recipe is easily halved: Simply cut the quantities in half and roast all the green beans on one sheet pan. The cooking time will remain the same.)"
)
recipe8 = Recipe.create!(
    dish_name: "Five-Spice Roasted Carrots With Toasted Almonds",
    cook_time: "30 minutes",
    yield: "6 servings",
    author: "Sue Li",
    description: "A complex combination of fennel seeds, anise, clove, cinnamon and Szechuan peppercorns, five-spice powder is a crucial ingredient in the Chinese pantry that also happens to be deeply versatile. It can be used as a dry rub for roast chicken, tossed with sautéed vegetables or sprinkled over toasted nuts. Here, five-spice powder, along with a bright splash of vinegar and ginger, dresses up simple roasted carrots. Preheating your baking sheet in the oven will help caramelize and crisp your vegetables, and will also speed up cooking time."
)
recipe9 = Recipe.create!(
    dish_name: "Spicy Eggplant Salad With Sesame Oil",
    cook_time: "40 minutes",
    yield: "6 servings",
    author: "David Tanis",
    description: "This Chinese-inspired salad has complex flavors and is quite refreshing. At the market, choose eggplants that are firm and shiny; they will taste sweeter and have fewer seeds. Make it several hours ahead or up to a day in advance. It's best served at room temperature or cool."
)
recipe10 = Recipe.create!(
    dish_name: "Roasted Duck Fat Potatoes",
    cook_time: "1 hour",
    yield: "8 to 10 servings",
    author: "Melissa Clark",
    description: "Duck fat adds incredible richness to roasted potatoes, which are layered here with fresh thyme and whole garlic cloves. If you are making this for Thanksgiving, throw the pan on the rack under the turkey when you first start roasting your bird, then reheat the potatoes at 350 degrees while your turkey rests."
)
recipe11 = Recipe.create!(
    dish_name: "Braised Pork All'Arrabbiata",
    cook_time: "3 1/2 hours",
    yield: "6 to 8 servings",
    author: "Ali Slagle",
    description: "This spicy pork shoulder's long-simmered flavor is one you'll crave all season long. The browned pork shoulder braises with fire-roasted tomatoes, red wine and basil in the oven until it becomes fork-tender and breaks down into a rich ragù. The red-pepper flakes create a gentle heat, while basil adds sweetness. Serve over polenta or toss with tubed pasta, like penne or rigatoni. If serving with pasta, loosen the sauce with a little pasta cooking water to help the sauce coat the pasta."
)
recipe12 = Recipe.create!(
    dish_name: "Spicy Tamarind Pork Ribs With Scallions and Peanuts",
    cook_time: "2 3/4 hours",
    yield: "6 to 8 servings",
    author: "Yewande Komolafe",
    description: "This recipe balances richness with a tart sweetness, and features a two-part approach to cooking the meat that yields complex flavor. Pork spare ribs are marinated, covered and baked until just tender. They're then brushed with a glaze made with an invigorating combination of tamarind, ginger, nutmeg and scotch bonnet chile. You can finish the ribs in a hot oven or on the grill; the glaze caramelizes nicely either way."
)
recipe13 = Recipe.create!(
    dish_name: "Smoky Red Devil Eggs",
    cook_time: "45 minutes",
    yield: "24 deviled eggs",
    author: "Melissa Clark",
    description: "Standard deviled eggs are undeniably good, but adding a touch of tomato paste and a generous pinch of smoked paprika makes them a bit more sophisticated. The flavor is gently sweet, forcefully spicy and perfectly smoky."
)
recipe14 = Recipe.create!(
    dish_name: "Caramelized Shallot Pasta",
    cook_time: "40 minutes",
    yield: "4 servings",
    author: "Alison Roman",
    description: "This pasta is all about the shallots, cooked down in a bath of olive oil to a jammy, caramelized paste. Tomato paste is there for tanginess, and anchovies for saltiness, but they serve more as background flavors to the sweetness of the shallot. This recipe makes enough caramelized shallot mixture for a double batch of pasta, or simply keep it refrigerated to spoon over fried eggs, or to serve underneath crispy chicken thighs or over roasted root vegetables like carrots or sweet potatoes."
)
recipe15 = Recipe.create!(
    dish_name: "Zhug",
    cook_time: "40 minutes",
    yield: "About 8 servings (1 generous cup)",
    author: "Gabrielle Hamilton",
    description: "This bright green sauce from Yemen — so fresh from cilantro, so spicy from serrano chiles, so vividly aromatic — will open up a whole world in your cooking. Treat it just as you would a basil pesto or a salsa verde: Make it in small batches, in the mortar and pestle, and then spoon it with abandon over your lunch of cooked lentils with Bulgarian white cheese, chunks of ripe tomatoes and cold cucumbers, your dinner of roasted chicken and sautéed zucchini, or even your breakfast of fried eggs. It brings intense new life and dimension to everything it touches."
)
recipe16 = Recipe.create!(
    dish_name: "Jalapeño Poppers",
    cook_time: "1 hours",
    yield: "24 poppers",
    author: "Alexa Weibel",
    description: "There are many delicious versions of jalapeño poppers: Some are breaded and deep-fried, others use two kinds of cheese, and another, called armadillo eggs, calls for enrobing the cheese-stuffed peppers with ground meat and bacon. These easy-baked poppers are filled with tangy cream cheese — brightened with scallions, cilantro, garlic and lime zest — then wrapped with bacon for looks, salt and crunch. For a vegetarian variation, sprinkle the stuffed jalapeños with finely crumbled tortilla chips before baking to complement the crisp-tender chiles and the molten-cheese filling."
)
recipe17 = Recipe.create!(
    dish_name: "Oven-Roasted Chicken Shawarma",
    cook_time: "45 minutes, plus marinating",
    yield: "4 to 6 servings",
    author: "Sam Sifton", 
    description: "Here is a recipe for an oven-roasted version of the classic street-side flavor bomb usually cooked on a rotisserie. It is perfect for an evening with family and friends. Serve with pita and tahini, chopped cucumbers and tomatoes, some olives, chopped parsley, some feta, fried eggplant, hummus swirled with harissa, rice or rice pilaf. You can make the white sauce that traditionally accompanies it by cutting plain yogurt with mayonnaise and lemon juice, and flecking it with garlic. For a red to offset it, simmer ketchup with red pepper flakes and a hit of red-wine vinegar until it goes syrupy and thick, or just use your favorite hot sauce instead."
)
recipe18 = Recipe.create!(
    dish_name: "Old-Fashioned Beef Stew",
    cook_time: "2 hours 30 minutes",
    yield: "4 servings",
    author: "Molly O'Neill",
    description: "This classic stick-to-your-ribs stew is the ideal project for a chilly weekend. Beef, onion, carrots, potatoes and red wine come together in cozy harmony. If you are feeding a crowd, good news: It doubles (or triples) beautifully."
)
recipe19 = Recipe.create!(
    dish_name: "Simple Pinto Beans",
    cook_time: "2 hours, plus soaking time",
    yield: "4 to 6 servings",
    author: "David Tanis",
    description: "Pinto beans are emblematic of the Old West — good cheap hearty fare. These plain ones are good with just about anything or as a meal in a tin plate, cowboy-style, with a chunk of cornbread. For the best tasting beans, cook at a bare simmer, and keep the liquid level just 1 inch above the beans' surface as they cook."
)
recipe20 = Recipe.create!(
    dish_name: "Salted Chocolate Chunk Shortbread Cookies",
    cook_time: "45 minutes, plus chilling",
    yield: "24 cookies",
    author: "Alison Roman",
    description: "These wildly popular cookies were developed by Alison Roman for her cookbook, “Dining In: Highly Cookable Recipes.” “I've always found chocolate chip cookies to be deeply flawed (to know this about me explains a lot),” she writes. “Too sweet, too soft, or with too much chocolate, there's a lot of room for improvement, if you ask me. But no one asked me, and rather than do a complete overhaul on the most iconic cookie known to man, I took all my favorite parts and invented something else entirely. Made with lots of salted butter (it has a slightly different flavor and a deeper saltiness than using just salt — I prefer unsalted butter everywhere else but here), the dough has just enough flour to hold it together and the right amount of light brown sugar to suggest a chocolate chip cookie.”"
)

Recipe.all.sort.each do |recipe|
    file = open("https://cooktime-seeds.s3.us-west-1.amazonaws.com/recipe-#{recipe.id}.jpeg")
    recipe.photo.attach(io: file, filename: "recipe-#{recipe.id}.jpg")
    recipe.save!
end

ing1 = Ingredient.create!(
    recipe_id: recipe1.id, 
    order: 1,
    amount: "3",
    ingredient_name: "tablespoons extra-virgin olive oil"
)
ing2 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 2, 
    amount: "1",
    ingredient_name: "large onion, halved and thinly sliced" 
)
ing3 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 3, 
    amount: "1",
    ingredient_name: "large red bell pepper, seeded and thinly sliced"
)
ing4 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 4,
    amount: "3",
    ingredient_name: "garlic cloves, thinly sliced"
)
ing5 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 5,
    amount: "1",
    ingredient_name: "teaspoon ground cumin"
)
ing6 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 6,
    amount: "1",
    ingredient_name: "teaspoon sweet paprika"
)
ing7 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 7, 
    amount: "⅛",
    ingredient_name: "teaspoon ground cayenne, or to taste"
)
ing8 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 8,
    amount: "1",
    ingredient_name: "(28-ounce) can whole plum tomatoes with their juices, coarsely chopped"
)
ing9 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 9,
    amount: "¾",
    ingredient_name: "teaspoon kosher salt, plus more as needed"
)
ing10 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 10, 
    amount: "¼",
    ingredient_name: "teaspoon black pepper, plus more as needed"
)
ing11 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 11, 
    amount: "5",
    ingredient_name: "ounces feta, crumbled (about 1 1/4 cups)"
)
ing12 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 12, 
    amount: "6",
    ingredient_name: "large eggs"
)
ing13 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 13,
    ingredient_name: "Chopped cilantro, for serving"
)
ing14 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 14,
    ingredient_name: "Hot sauce, for serving"
)
ing15 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 1,
    amount: "4",
    ingredient_name: "tablespoons unsalted butter"
)
ing16 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 2, 
    amount: "20",
    ingredient_name:"medium garlic cloves, minced or smashed in a mortar and pestle"
)
ing17 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 3,
    amount: "4",
    ingredient_name: "teaspoons oyster sauce"
)
ing18 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 4, 
    amount: "2",
    ingredient_name: "teaspoons light soy sauce or shoyu"
)
ing19 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 5,
    amount: "2",
    ingredient_name: "teaspoons fish sauce"
)
ing20 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 6,
    amount: "1",
    ingredient_name: "pound dry spaghetti"
)
ing21 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 7,
    amount: "1",
    ingredient_name: "ounce grated Parmesan or Pecorino Romano (heaping 1/4 cup)"
)
ing22 = Ingredient.create!(
    recipe_id: recipe2.id,
    order: 8,
    ingredient_name: "A small handful of thinly sliced scallions (optional)"
)
ing23 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 1,
    amount: "1",
    ingredient_name: "(4- to 4 1/2-pound) whole chicken"
)
ing24 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 2,
    amount: "8",
    ingredient_name: "tablespoons unsalted butter (1 stick), chilled"
)
ing25 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 3, 
    ingredient_name: "Kosher salt and black pepper"
)
ing26 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 4,
    amount: "¾ to 1",
    ingredient_name: "teaspoon ground chipotle or chile powder"
)
ing27 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 5,
    amount: "¾",
    ingredient_name: "teaspoon ground cumin"
)
ing28 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 6,
    amount: "½",
    ingredient_name: "teaspoon onion powder"
)
ing29 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 7,
    amount: "½",
    ingredient_name: "lemon, cut into 2 wedges"
)
ing30 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 8,
    amount: "⅓",
    ingredient_name: "cup vinegar-based arbol hot sauce, such as Cholula or Crystal"
)
ing31 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 9,
    amount: "¼",
    ingredient_name: "cup extra-virgin olive oil"
)
ing32 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 10,
    amount: "1 ½",
    ingredient_name: "teaspoons lime zest, plus 5 teaspoons lime juice (from 2 limes)"
)
ing33 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 11,
    amount: "2",
    ingredient_name: "teaspoons dried oregano (preferably Mexican oregano)"
)
ing34 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 12,
    amount: "1",
    ingredient_name: "small garlic clove, finely grated"
)
ing35 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 13,
    amount: "¼",
    ingredient_name: "teaspoon black pepper"
)
ing36 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 14,
    ingredient_name: "Pinch of fine sea salt"
) 
ing37 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 15,
    amount: "¾",
    ingredient_name: "pound green cabbage (about 1/2 head), thinly sliced and chopped (about 4 cups)"
)
ing38 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 16,
    amount: "6",
    ingredient_name: "ounces Tuscan kale, stemmed, cut into thin ribbons"
)
ing39 = Ingredient.create!(
    recipe_id: recipe3.id,
    order: 17,
    amount: "½",
    ingredient_name: "cup finely chopped fresh cilantro, mint or parsley, or a combination"
)
ing40 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 1,
    amount: "3",
    ingredient_name: "tablespoons neutral oil, such as safflower or canola"
)
ing41 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 2,
    amount: "½",
    ingredient_name: "teaspoon minced garlic"
)
ing42 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 3,
    amount: "⅓",
    ingredient_name: "cup low-sodium soy sauce"
)
ing43 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 4,
    amount: "⅓",
    ingredient_name: "cup mirin"
)
ing44 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 5,
    amount: "3",
    ingredient_name: "tablespoons granulated sugar"
)
ing45 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 6,
    amount: "¼",
    ingredient_name: "teaspoon black pepper"
)
ing46 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 7,
    amount: "¼",
    ingredient_name: "teaspoon kosher salt (Diamond Crystal), plus more for seasoning"
)
ing47 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 8, 
    amount: "½",
    ingredient_name: "teaspoon peeled grated ginger"
)
ing48 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 9,
    amount: "1",
    ingredient_name: "(1 1/2-pound) skinless salmon fillet (preferably center-cut)"
)
ing49 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 10,
    ingredient_name: "Toasted seaweed sheets, quartered"
)
ing50 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 11, 
    ingredient_name: "Cooked short-grain rice and wasabi paste (optional), for serving"
)
ing51 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 12,
    amount: "3",
    ingredient_name: "Persian cucumbers, halved crosswise and cut lengthwise into thin spears"
)
ing52 = Ingredient.create!(
    recipe_id: recipe4.id,
    order: 12, 
    amount: "1 to 2",
    ingredient_name: "avocados, pitted and thinly sliced"
)
ing53 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 1,
    amount: "1",
    ingredient_name: "(4-inch) piece fresh ginger, peeled"
)
ing54 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 2,
    amount: "6",
    ingredient_name: "garlic cloves, peeled"
)
ing55 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 3,
    amount: "1",
    ingredient_name: "jalapeño"
)
ing56 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 4, 
    amount: "2",
    ingredient_name: "pounds ground chicken"
)
ing57 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 5,
    amount: "1",
    ingredient_name: "large bunch cilantro, leaves and stems finely chopped, a few whole leaves reserved for serving"
)
ing58 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 6,
    amount: "3",
    ingredient_name: "tablespoons fish sauce" 
)
ing59 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 7,
    ingredient_name: "Kosher salt"
)
ing60 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 8,
    amount: "2",
    ingredient_name: "tablespoons vegetable or coconut oil, plus more as needed"
)
ing61 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 9,
    amount: "2",
    ingredient_name: "cups chicken broth"
)
ing62 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 10,
    amount: "1",
    ingredient_name: "(14-ounce) can full-fat coconut milk"
)
ing63 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 11,
    amount: "½",
    ingredient_name: "teaspoon granulated sugar"
)
ing64 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 12,
    amount: "5",
    ingredient_name: "ounces baby spinach"
)
ing65 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 13, 
    amount: "1",
    ingredient_name: "tablespoon lime juice, plus lime wedges for serving"
)
ing66 = Ingredient.create!(
    recipe_id: recipe5.id,
    order: 14,
    ingredient_name: "Steamed white or brown rice, for serving"
)
ing67 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 1,
    amount: "5",
    ingredient_name: "tablespoons olive oil"
)
ing68 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 2,
    amount: "1",
    ingredient_name: "small onion, chopped"
)
ing69 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 3,
    amount: "1",
    ingredient_name: "carrot, chopped"
)
ing70 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 4, 
    amount: "1", 
    ingredient_name: "celery stalk, chopped"
)
ing71 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 5, 
    amount: "1", 
    ingredient_name: "tablespoon minced garlic"
)
ing72 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 6,
    ingredient_name: "Salt and ground black pepper"
)
ing73 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 7, 
    amount: "2",
    ingredient_name: "cups cooked or canned cannellini beans"
)
ing74 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 8,
    amount: "1",
    ingredient_name: "15-ounce can whole peeled tomatoes"
)
ing75 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 9, 
    amount: "4",
    ingredient_name: "cups vegetable stock or water"
)
ing76 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 10,
    amount: "1",
    ingredient_name: "fresh rosemary sprig"
)
ing77 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 11, 
    amount: "1",
    ingredient_name: "fresh thyme sprig"
)
ing78 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 12, 
    amount: "1",
    ingredient_name: "pound chopped kale or escarole"
)
ing79 = Ingredient.create!(
    recipe_id: recipe6.id, 
    order: 13, 
    amount: "4",
    ingredient_name: "large, thick slices whole-grain bread, toasted"
)
ing80 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 14, 
    amount: "1",
    ingredient_name: "small red onion, thinly sliced"
)
ing81 = Ingredient.create!(
    recipe_id: recipe6.id,
    order: 15,
    amount: "½",
    ingredient_name: "cup freshly grated Parmesan"
)
ing82 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 1,
    amount: "2 ½",
    ingredient_name: "pounds green beans, trimmed"
)
ing83 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 2,
    amount: "1",
    ingredient_name: "(4-ounce) package diced pancetta"
)
ing84 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 3, 
    amount: "4",
    ingredient_name: "tablespoons olive oil"
)
ing85 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 4,
    amount: "1",
    ingredient_name: "teaspoon kosher salt, plus more to taste"
)
ing86 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 5,
    amount: "1",
    ingredient_name: "teaspoon black pepper"
)
ing87 = Ingredient.create!(
    recipe_id: recipe7.id,
    order: 6,
    ingredient_name: "Zest and juice of 1 lemon"
)
ing88 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 1,
    amount: "6",
    ingredient_name: "tablespoons olive oil"
)
ing89 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 2, 
    amount: "1",
    ingredient_name: "tablespoon five-spice powder"
)
ing90 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 3,
    amount: "2",
    ingredient_name: "garlic cloves, grated"
)
ing91 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 4,
    ingredient_name: "Kosher salt"
)
ing92 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 5,
    amount: "2",
    ingredient_name: "bunches carrots (about 2 pounds), trimmed and scrubbed, halved lengthwise if large"
)
ing93 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 6,
    amount: "¼",
    ingredient_name: "cup unsalted, raw almonds"
)
ing94 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 7,
    amount: "¼",
    ingredient_name: "cup sliced chives (about 1 small bunch)"
)
ing95 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 8,
    amount: "1 to 2", 
    ingredient_name: "tablespoons sherry vinegar"
)
ing96 = Ingredient.create!(
    recipe_id: recipe8.id,
    order: 9,
    amount: "2",
    ingredient_name: "teaspoons grated fresh ginger"
)
ing97 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 1,
    amount: "2",
    ingredient_name: "pounds small, firm eggplants"
)
ing98 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 2,
    amount: "1",
    ingredient_name: "tablespoon soy sauce"
)
ing99 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 3,
    amount: "1",
    ingredient_name: "tablespoon rice vinegar"
)
ing100 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 4,
    ingredient_name: "Juice of 1 lime"
)
ing101 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 5,
    amount: "1",
    ingredient_name: "teaspoon kosher salt"
)
ing102 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 6,
    amount: "1",
    ingredient_name: "teaspoon brown sugar"
)
ing103 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 7,
    amount: "3",
    ingredient_name: "garlic cloves, minced"
)
ing104 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 8, 
    amount: "2",
    ingredient_name: "tablespoons grated ginger"
)
ing105 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 9, 
    amount: "1 ½",
    ingredient_name: "teaspoons toasted sesame oil"
)
ing106 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 10, 
    amount: "2",
    ingredient_name: "tablespoons vegetable oil"
)
ing107 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 11,
    amount: "1",
    ingredient_name: "teaspoon hot pepper oil, optional"
)
ing108 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 12,
    amount: "2",
    ingredient_name: "tablespoons roughly chopped cilantro, plus sprigs for garnish"
)
ing109 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 13,
    amount: "6",
    ingredient_name: "scallions, thinly sliced diagonally"
)
ing110 = Ingredient.create!(
    recipe_id: recipe9.id,
    order: 14, 
    amount: "1",
    ingredient_name: "thinly sliced serrano chile, optional"
)
ing111 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 1,
    amount: "3",
    ingredient_name: "pounds baby or small potatoes, halved if large"
)
ing112 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 2,
    amount: "¼",
    ingredient_name: "cup duck fat, melted"
)
ing113 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 3,
    amount: "2 ½",
    ingredient_name: "teaspoons kosher salt, plus more to taste"
)
ing114 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 4,
    amount: "½",
    ingredient_name: "teaspoon ground black pepper"
)
ing115 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 5,
    amount: "6",
    ingredient_name: "thyme sprigs"
)
ing116 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 6, 
    amount: "1",
    ingredient_name: "bay leaf, torn into pieces"
)
ing117 = Ingredient.create!(
    recipe_id: recipe10.id,
    order: 7,
    amount: "6",
    ingredient_name: "garlic cloves, smashed and peeled"
)
ing118 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 1, 
    amount: "2 to 2 ½",
    ingredient_name: "pounds boneless pork shoulder, trimmed of more than 1/4-inch fat"
)
ing119 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 2,
    ingredient_name: "Kosher salt and black pepper"
)
ing220 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 3,
    amount: "2",
    ingredient_name: "tablespoons extra-virgin olive oil"
)
ing221 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 4,
    amount: "10",
    ingredient_name: "garlic cloves, peeled and smashed"
)
ing222 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 5,
    amount: "1 ½",
    ingredient_name: "teaspoons red-pepper flakes"
)
ing223 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 6,
    amount: "3",
    ingredient_name: "(14-ounce) cans fire-roasted crushed or diced tomatoes"
)
ing224 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 7,
    amount: "1",
    ingredient_name: "cup red wine"
)
ing225 = Ingredient.create!(
    recipe_id: recipe11.id,
    order: 8,
    amount: "5",
    ingredient_name: "basil sprigs"
)
ing226 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 1,
    amount: "2",
    ingredient_name: "racks baby back or spare ribs (about 2 1/2 pounds each)"
)
ing227 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 2,
    amount: "1",
    ingredient_name: "cup dark brown sugar"
)
ing228 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 3,
    amount: "2",
    ingredient_name: "teaspoons garlic powder"
)
ing229 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 4,
    amount: "1",
    ingredient_name: "teaspoon ground cayenne"
)
ing230 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 5,
    amount: "1",
    ingredient_name: "teaspoon black pepper"
)
ing231 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 6,
    amount: "1",
    ingredient_name: "tablespoon kosher salt, plus more to taste"
)
ing232 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 7,
    amount: "½",
    ingredient_name: "cup store-bought tamarind concentrate or purée"
)
ing233 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 8, 
    amount: "1",
    ingredient_name: "scotch bonnet chile, stemmed and chopped, or 2 tablespoons sambal oelek or other chile paste"
)
ing234 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 9, 
    amount: "2",
    ingredient_name: "tablespoons honey"
)
ing235 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 10,
    amount: "2",
    ingredient_name: "tablespoons grated ginger"
)
ing236 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 11,
    amount: "¼",
    ingredient_name: "teaspoon ground nutmeg"
)
ing237 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 12, 
    amount: "1",
    ingredient_name: "tablespoon lime zest (from about 2 limes)"
)
ing238 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 13,
    amount: "½",
    ingredient_name: "cup thinly sliced scallions"
)
ing239 = Ingredient.create!(
    recipe_id: recipe12.id,
    order: 14,
    amount: "¼",
    ingredient_name: "cup peanuts, crushed (optional)"
)
ing240 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 1,
    amount: "12",
    ingredient_name: "large eggs"
)
ing241 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 2,
    amount: "1",
    ingredient_name: "fat garlic clove, minced"
)
ing242 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 3,
    amount: "¼",
    ingredient_name: "teaspoon kosher salt, more to taste"
)
ing243 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 4,
    amount: "½",
    ingredient_name: "cup mayonnaise"
)
ing244 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 5,
    amount: "2",
    ingredient_name: "tablespoons tomato paste"
)
ing245 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 6,
    amount: "2",
    ingredient_name: "teaspoons red wine vinegar, more to taste"
)
ing246 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 7,
    amount: "¼",
    ingredient_name: "teaspoon freshly ground black pepper"
)
ing247 = Ingredient.create!(
    recipe_id: recipe13.id,
    order: 8,
    amount: "¼",
    ingredient_name: "teaspoon hot smoked paprika, more to taste and for garnish"
)
ing248 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 1,
    amount: "¼",
    ingredient_name: "cup olive oil"
)
ing249 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 2,
    amount: "6",
    ingredient_name: "large shallots, very thinly sliced"
)
ing250 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 3,
    amount: "5",
    ingredient_name: "garlic cloves, 4 thinly sliced, 1 finely chopped"
)
ing251 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 4,
    ingredient_name: "Kosher salt and freshly ground black pepper"
)
ing252 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 5,
    amount: "1",
    ingredient_name: "teaspoon red-pepper flakes, plus more to taste"
)
ing253 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 6,
    amount: "1",
    ingredient_name: "(2-ounce) can anchovy fillets (about 12), drained"
)
ing254 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 7, 
    amount: "1",
    ingredient_name: "(4.5-ounce) tube or (6-ounce) can of tomato paste (about 1/2 to 3/4 cup)"
)
ing255 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 8,
    amount: "10",
    ingredient_name: "ounces past"
)
ing266 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 9,
    amount: "1",
    ingredient_name: "cup parsley, leaves and tender stems, finely chopped"
)
ing267 = Ingredient.create!(
    recipe_id: recipe14.id,
    order: 10, 
    ingredient_name: "Flaky sea salt"
)
ing268 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 1, 
    amount: "2",
    ingredient_name: "teaspoons whole black peppercorns"
)
ing269 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 2,
    amount: "2",
    ingredient_name: "teaspoons coriander seeds"
)
ing270 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 3, 
    amount: "1",
    ingredient_name: "teaspoon cumin seeds"
)
ing271 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 4,
    amount: "½",
    ingredient_name: "teaspoon cardamom seeds, extracted from about 10 cardamom pods"
)
ing272 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 5, 
    amount: "6",
    ingredient_name: "garlic cloves, smashed"
)
ing273 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 6,
    amount: "4",
    ingredient_name: "serrano chiles, cut into very thin coins"
)
ing274 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 7,
    amount: "1 to 3",
    ingredient_name: "teaspoons kosher salt, to taste"
)
ing275 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 8, 
    amount: "3",
    ingredient_name: "tightly packed cups roughly chopped cilantro leaves and stems"
)
ing276 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 9,
    amount: "1 ½",
    ingredient_name: "tightly packed cups roughly chopped parsley leaves"
)
ing277 = Ingredient.create!(
    recipe_id: recipe15.id,
    order: 10,
    amount: "½",
    ingredient_name: "cup extra-virgin olive oil"
)
ing278 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 1,
    amount: "12",
    ingredient_name: "medium jalapeños (no longer than 3 inches each, about 2/3 pound total)"
)
ing279 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 2,
    amount: "8",
    ingredient_name: "ounces cream cheese, softened"
)
ing280 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 3,
    ingredient_name: "Scant 1/4 cup finely chopped cilantro"
)
ing281 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 4,
    amount: "3",
    ingredient_name: "scallions, whites and greens parts, trimmed and very thinly sliced (about 1/4 cup)"
)
ing282 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 5,
    amount: "1",
    ingredient_name: "garlic clove, finely chopped"
)
ing283 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 6, 
    amount: "1",
    ingredient_name: "lime, zested (about 1/2 teaspoon), optional"
)
ing284 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 7,
    ingredient_name: "Kosher salt and black pepper"
)
ing285 = Ingredient.create!(
    recipe_id: recipe16.id,
    order: 8,
    amount: "12",
    ingredient_name: "thin slices uncooked bacon (thick-cut bacon won’t cook as evenly), halved crosswise"
)
ing286 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 1,
    amount: "2",
    ingredient_name: "lemons, juiced"
)
ing287 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 2,
    amount: "½",
    ingredient_name: "cup plus 1 tablespoon olive oil"
)
ing288 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 3,
    amount: "6",
    ingredient_name: "cloves garlic, peeled, smashed and minced"
)
ing289 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 4,
    amount: "1",
    ingredient_name: "teaspoon kosher salt"
)
ing290 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 5, 
    amount: "2",
    ingredient_name: "teaspoons freshly ground black pepper"
)
ing291 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 6,
    amount: "2",
    ingredient_name: "teaspoons ground cumin"
)
ing292 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 7,
    amount: "2",
    ingredient_name: "teaspoons paprika"
)
ing293 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 8,
    amount: "½",
    ingredient_name: "teaspoon turmeric"
)
ing294 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 9,
    ingredient_name: "A pinch ground cinnamon"
)
ing295 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 10,
    ingredient_name: "Red pepper flakes, to taste"
)
ing296 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 11,
    amount: "2",
    ingredient_name: "pounds boneless, skinless chicken thighs"
)
ing297 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 12,
    amount: "1",
    ingredient_name: "large red onion, peeled and quartered"
)
ing298 = Ingredient.create!(
    recipe_id: recipe17.id,
    order: 13,
    amount: "2",
    ingredient_name: "tablespoons chopped fresh parsley"
)
ing299 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 1,
    amount: "¼",
    ingredient_name: "cup all-purpose flour"
)
ing300 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 2,
    amount: "¼",
    ingredient_name: "teaspoon freshly ground pepper"
)
ing301 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 3,
    amount: "1",
    ingredient_name: "pound beef stewing meat, trimmed and cut into inch cubes"
)
ing302 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 4,
    amount: "5",
    ingredient_name: "teaspoons vegetable oil"
)
ing303 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 5,
    amount: "2",
    ingredient_name: "tablespoons red wine vinegar"
)
ing304 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 6,
    amount: "1",
    ingredient_name: "cup red wine"
)
ing305 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 7,
    amount: "3 ½",
    ingredient_name: "cups beef broth, homemade or low-sodium canned"
)
ing306 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 8,
    amount: "2",
    ingredient_name: "bay leaves"
)
ing307 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 9,
    amount: "1",
    ingredient_name: "medium onion, peeled and chopped"
)
ing308 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 10,
    amount: "5",
    ingredient_name: "medium carrots, peeled and cut into 1/4-inch rounds"
)
ing309 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 11,
    amount: "2",
    ingredient_name: "large baking potatoes, peeled and cut into 3/4-inch cubes"
)
ing310 = Ingredient.create!(
    recipe_id: recipe18.id,
    order: 12,
    amount: "2",
    ingredient_name: "teaspoons salt"
)
ing311 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 1,
    amount: "1",
    ingredient_name: "pound pinto beans"
)
ing312 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 2, 
    amount: "1",
    ingredient_name: "small onion, halved"
)
ing313 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 3,
    amount: "1",
    ingredient_name: "bay leaf"
)
ing314 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 4,
    amount: "¾",
    ingredient_name: "pound slab bacon"
)
ing315 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 4,
    amount: "1",
    ingredient_name: "tablespoon kosher salt"
)
ing316 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 5,
    amount: "1",
    ingredient_name: "tablespoon paprika"
)
ing317 = Ingredient.create!(
    recipe_id: recipe19.id,
    order: 6, 
    amount: "¼",
    ingredient_name: "teaspoon cayenne"
)
ing318 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 1,
    amount: "1",
    ingredient_name: "cup plus 2 tablespoons/255 grams total salted butter (2¼ sticks), cold (room temperature if you're using a handheld mixer), cut into ½-inch pieces"
)
ing319 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 2,
    amount: "½",
    ingredient_name: "cup/100 grams granulated sugar"
)
ing320 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 3,
    amount: "¼",
    ingredient_name: "cup/55 grams light brown sugar"
)
ing321 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 4,
    amount: "1",
    ingredient_name: "teaspoon vanilla extract"
)
ing322 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 5,
    amount: "2 ½",
    ingredient_name: "cups/325 grams all-purpose flour"
)
ing323 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 6,
    amount: "6",
    ingredient_name: "ounces/170 grams semi-sweet or bittersweet dark chocolate, chopped (not too fine; you want chunks, not little shards)"
)
ing324 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 7,
    amount: "1",
    ingredient_name: "large egg, beaten"
)
ing325 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 8, 
    ingredient_name: "Demerara sugar, for rolling"
)
ing326 = Ingredient.create!(
    recipe_id: recipe20.id,
    order: 9,
    ingredient_name: "Flaky sea salt, for sprinkling"
)


step1 = Step.create!(
    recipe_id: recipe1.id,
    order_number: 1, 
    content: "Heat oven to 375 degrees. Heat oil in a large skillet over medium-low. Add onion and bell pepper. Cook gently until very soft, about 20 minutes. Add garlic and cook until tender, 1 to 2 minutes; stir in cumin, paprika and cayenne, and cook 1 minute. Pour in tomatoes and season with 3/4 teaspoon salt and 1/4 teaspoon pepper; simmer until tomatoes have thickened, about 10 minutes. Taste and add more salt and pepper if needed. Stir in crumbled feta."
)
step2 = Step.create!(
    recipe_id: recipe1.id,
    order_number: 2,
    content: "Gently crack eggs into skillet over tomatoes. Season eggs with salt and pepper. Transfer skillet to oven and bake until eggs are just set, 7 to 10 minutes. Sprinkle with cilantro and serve with hot sauce."
)
step3 = Step.create!(
    recipe_id: recipe2.id,
    order_number: 1,
    content: "Melt the butter in a wok or saucepan over medium heat. Add the garlic and cook, stirring, until fragrant but not browned, about 2 minutes. Add the oyster sauce, soy sauce and fish sauce, and stir to combine. Remove from the heat."
)
step4 = Step.create!(
    recipe_id: recipe2.id,
    order_number: 2, 
    content: "Meanwhile, bring 1 1/2 inches of water to a boil in a 12-​inch skillet or sauté pan over high heat. (Alternatively, heat up just enough water to cover the spaghetti in a large Dutch oven or saucepan.) Add the pasta, stir a few times to make sure it’s not clumping, and cook, stirring occasionally, until just shy of al dente (about 2 minutes short of the recommended cook time on the package)."
)
step5 = Step.create!(
    recipe_id: recipe2.id,
    order_number: 3,
    content: "Using tongs, transfer the cooked pasta to the garlic sauce, along with whatever water clings to it. (Reserve the pasta water in the skillet.) Increase the heat to high, add the cheese to the wok, and stir with a wooden spatula or spoon and toss vigorously until the sauce is creamy and emulsified, about 30 seconds. If the sauce looks too watery, let it keep reducing. If it looks greasy, splash some more cooking water into it and let it re-​emulsify. Stir in the scallions (if using), and serve immediately."
)
step6 = Step.create!(
    recipe_id: recipe3.id,
    order_number: 1,
    content: "Heat the oven to 400 degrees. Pat the chicken dry using paper towels. Cut 5 tablespoons butter into thin slices, reserving the remaining 3 tablespoons. Season the cavity of the chicken generously with salt and pepper. Working with your fingers, carefully loosen the skin of the chicken by sliding your fingers between the skin and the meat. Slide the sliced butter between the skin and the breast and thigh meat, evenly distributing the pieces over the chicken. In a small bowl, toss the ground chipotle, cumin and onion powder, 1 teaspoon salt and 1 teaspoon pepper. Rub the mixture all over the chicken. Stuff the cavity with the lemon wedges."
)
step7 = Step.create!(
    recipe_id: recipe3.id,
    order_number: 2,
    content: "Tuck the wings behind the back of the chicken, crisscross the legs at the ankles and tie the legs together tightly using kitchen twine. Transfer the chicken, breast-side up, to the rack of a roasting pan and roast until the skin is crisp and lightly browned, 15 to 20 minutes. Lower the heat to 350 degrees and roast another 30 minutes."
)
step8 = Step.create!(
    recipe_id: recipe3.id,
    order_number: 3,
    content: "Meanwhile, melt the remaining 3 tablespoons butter with the hot sauce in a small saucepan over medium heat. Set aside 2 tablespoons hot sauce mixture, for finishing the chicken. After the chicken has roasted for 30 minutes at 350 degrees, working in three or four batches, brush the baste all over the top and sides of the chicken every 10 minutes until the chicken reaches 165 degrees, 30 to 40 minutes more. Make sure to cook until an instant-read thermometer inserted into the thickest part of the thigh registers 165 degrees and the juices run clear. Remove the chicken from the oven, brush with the reserved 2 tablespoons hot sauce mixture, and let rest for 15 minutes."
)
step9 = Step.create!(
    recipe_id: recipe3.id,
    order_number: 4,
    content: "While the chicken rests, prepare the cabbage and kale slaw: Add the vinaigrette ingredients to a small jar and shake to combine. Set aside. Toss the cabbage, kale and herbs in a large bowl with the vinaigrette; season to taste with salt and pepper. Carve the chicken, breaking it down to eight pieces or slicing as desired, transfer to a platter and drizzle with any juices from the roasting pan. Serve immediately with slaw."
)
step10 = Step.create!(
    recipe_id: recipe4.id,
    order_number: 1,
    content: "Heat oven to 425 degrees. In a small saucepan, heat 2 tablespoons of the oil over medium. Stir in garlic until fragrant, 30 seconds. Add soy sauce, mirin, sugar, black pepper and ¼ teaspoon salt, and bring to a simmer. Reduce heat to medium-low and cook, stirring occasionally, until sauce is reduced by about a third and has thickened slightly, 10 to 15 minutes. Stir in ginger and remove from heat. You should have about ½ cup sauce; reserve half of the sauce in a small bowl for serving and set aside."
)
step11 = Step.create!(
    recipe_id: recipe4.id,
    order_number: 2,
    content: "Line a sheet pan with aluminum foil. Place salmon on the prepared sheet, rub with the remaining 1 tablespoon oil and season with salt. Coat the salmon on both sides with the other half of the sauce."
)
step12 = Step.create!(
    recipe_id: recipe4.id,
    order_number: 3,
    content: "Roast salmon for 5 minutes, then baste with the sauce that’s dripped onto the sheet tray. Continue to roast until salmon is just cooked to medium, about 5 minutes longer. Transfer salmon to a large plate."
)
step13 = Step.create!(
    recipe_id: recipe4.id,
    order_number: 4,
    content: "Flake salmon into bite-size pieces and drizzle with the reserved sauce. To build hand rolls, top seaweed with some rice (if using), cucumbers, avocado and salmon. Wrap and enjoy. Serve with optional wasabi on the side, and dab a little onto the salmon for a spicy hit."
)
step14 = Step.create!(
    recipe_id: recipe5.id,
    order_number: 1,
    content: "Using the small holes of a box grater, or a Microplane, grate the ginger, garlic and jalapeño (or finely chop them by hand). Transfer half to a large bowl and set the rest aside. To the large bowl, add the chicken, finely chopped cilantro, 2 tablespoons fish sauce and 1 teaspoon salt. Use your hands or a fork to fully combine but do not overmix."
)
step15 = Step.create!(
    recipe_id: recipe5.id,
    order_number: 2, 
    content: "Use your hands or an ice cream scoop to form 2-inch meatballs (about 2 ounces each). In a large Dutch oven or pot, heat the oil over medium-high heat. Working in batches, add the meatballs in a single layer and cook, flipping halfway through, until golden brown on two sides, 5 to 8 minutes. Transfer to a plate and repeat, adding oil as needed."
)
step16 = Step.create!(
    recipe_id: recipe5.id,
    order_number: 3, 
    content: "Once all the meatballs are browned and out of the pot, if the oil is burned, wipe it out and add a bit more to the pot. Reduce the heat to medium, add the reserved ginger mixture and sauté until fragrant, about 1 minute. Add the chicken broth, coconut milk, sugar and the remaining 1 tablespoon fish sauce, and bring to a simmer. Add the meatballs and any juices from the plate, and simmer until the flavors come together and the meatballs are cooked through, 5 to 8 minutes."
)
step17 = Step.create!(
    recipe_id: recipe5.id,
    order_number: 4,
    content: "Remove from heat, and stir in the spinach and lime juice. Divide rice among bowls, then top with meatballs, broth and cilantro. Serve with lime wedges."
)
step18 = Step.create!(
    recipe_id: recipe6.id,
    order_number: 1, 
    content: "Put 2 tablespoons of the oil in a large pot over medium heat. When it’s hot, add onion, carrot, celery and garlic; sprinkle with salt and pepper and cook, stirring occasionally, until vegetables are soft, 5 to 10 minutes."
)
step19 = Step.create!(
    recipe_id: recipe6.id,
    order_number: 2,
    content: "Heat the oven to 500 degrees. Drain the beans; if they’re canned, rinse them as well. Add them to the pot along with tomatoes and their juices and stock, rosemary and thyme. Bring to a boil, then reduce heat so the soup bubbles steadily; cover and cook, stirring once or twice to break up the tomatoes, until the flavors meld, 15 to 20 minutes."
)
step20 = Step.create!(
    recipe_id: recipe6.id,
    order_number: 3,
    content: "Fish out and discard rosemary and thyme stems, if you like, and stir in kale. Taste and adjust seasoning. Lay bread slices on top of the stew so they cover the top and overlap as little as possible. Scatter red onion slices over the top, drizzle with the remaining 3 tablespoons oil and sprinkle with Parmesan."
)
step21 = Step.create!(
    recipe_id: recipe6.id,
    order_number: 4,
    content: "Put the pot in the oven and bake until the bread, onions and cheese are browned and crisp, 10 to 15 minutes. (If your pot fits under the broiler, you can also brown the top there.) Divide the soup and bread among 4 bowls and serve."
)
step22 = Step.create!(
    recipe_id: recipe7.id,
    order_number: 1,
    content: "Heat the oven to 400 degrees and position the oven racks in the lower and top thirds of the oven. Divide the green beans and pancetta evenly between two sheet pans. Drizzle each sheet pan with 2 tablespoons olive oil, and sprinkle each with 1/2 teaspoon salt and 1/2 teaspoon pepper. Toss well, and roast for 10 minutes. Toss, switch racks, and roast for 5 to 10 more minutes, until cooked to your liking."
)
step23 = Step.create!(
    recipe_id: recipe7.id,
    order_number: 2,
    content: "Sprinkle with the lemon juice. Season with salt to taste, toss, and transfer to a serving platter. Garnish with the lemon zest and serve hot or warm."
)
step24 = Step.create!(
    recipe_id: recipe8.id,
    order_number: 1,
    content: "Arrange one oven rack at the top and one at the bottom of the oven. Place a baking sheet on the bottom rack and heat the oven to 425 degrees."
)
step25 = Step.create!(
    recipe_id: recipe8.id,
    order_number: 2, 
    content: "In large bowl, stir together 2 tablespoons olive oil with the five-spice powder, garlic and 1 teaspoon salt. Add the carrots and toss to coat. Transfer carrots to the hot baking sheet and arrange in an even layer and roast, on the bottom rack, until the carrots are tender and browned all over, 20 to 25 minutes, flipping halfway through."
)
step26 = Step.create!(
    recipe_id: recipe8.id,
    order_number: 3,
    content: "While carrots are roasting, toast almonds on a separate baking sheet, on the top rack, until golden brown, 7 to 8 minutes. Allow to cool, then finely chop and transfer to a large bowl or serving platter. Add the chives, vinegar, ginger and remaining olive oil to the almonds, and season with salt. Add roasted carrots and toss to coat. Serve hot."
)
step27 = Step.create!(
    recipe_id: recipe9.id,
    order_number: 1,
    content: "Cook the eggplants in a covered steamer over rapidly boiling water until tender, about 10 minutes. Let cool, then peel. Put the flesh in a fine meshed strainer to drain excess liquid."
)
step28 = Step.create!(
    recipe_id: recipe9.id,
    order_number: 2,
    content: "Make the dressing: In a small bowl, whisk together soy sauce, vinegar, lime juice, salt and sugar. Add garlic, ginger, sesame oil, vegetable oil and hot pepper oil, if using."
)
step29 = Step.create!(
    recipe_id: recipe9.id,
    order_number: 3, 
    content: "Put drained eggplants in a bowl. Using 2 forks, shred the eggplants a bit, then pour dressing over and toss, coating well. Leave to rest for 10 minutes, then taste and adjust seasoning."
)
step30 = Step.create!(
    recipe_id: recipe9.id,
    order_number: 4,
    content: "Just before serving, stir in chopped cilantro. Pile eggplants on a platter and sprinkle with scallions. Garnish with serrano chile, if using, and cilantro sprigs."
)
step31 = Step.create!(
    recipe_id: recipe10.id,
    order_number: 1,
    content: "Heat oven to 450 degrees. On a rimmed baking sheet, toss together the potatoes, duck fat, salt and pepper. Lay thyme sprigs and bay leaves on top."
)
step32 = Step.create!(
    recipe_id: recipe10.id,
    order_number: 2, 
    content: "Roast for 30 minutes, then toss the garlic into the potatoes and reduce oven heat to 350 degrees. Continue to roast until potatoes are fork-tender, another 15 to 25 minutes. Remove thyme and bay leaves and serve, or let cool for up to an hour then reheat, uncovered, at 350 degrees just before serving."
)
step33 = Step.create!(
    recipe_id: recipe11.id,
    order_number: 1,
    content: "Heat the oven to 350 degrees. Season the pork all over with 2 teaspoons salt and 1 teaspoon pepper."
)
step34 = Step.create!(
    recipe_id: recipe11.id,
    order_number: 2,
    content: "In a large Dutch oven, heat the olive oil over medium-high. Add the pork shoulder and sear until browned on all sides, 8 to 10 minutes."
)
step35 = Step.create!(
    recipe_id: recipe11.id,
    order_number: 3,
    content: "Reduce the heat to medium-low. Add the garlic and red-pepper flakes to the oil and stir to combine. Add the tomatoes, red wine and basil. Stir to combine, season with salt and lots of black pepper, then bring to a boil over medium-high heat."
)
step36 = Step.create!(
    recipe_id: recipe11.id,
    order_number: 4,
    content: "Cover, then transfer to the oven and cook until the pork falls apart when prodded with a fork, 2 1/2 to 3 hours."
)
step37 = Step.create!(
    recipe_id: recipe11.id,
    order_number: 5,
    content: "Working directly in the pot, use two forks to shred the meat into long bite-size pieces. Stir the pork into the tomato sauce until it’s evenly distributed. Ragù will keep refrigerated for 3 days or frozen up to 3 months."
)
step38 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 1,
    content: "Heat the oven to 300 degrees. Spread the ribs out on a cutting board and pat dry with paper towels."
)
step39 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 2,
    content: "In a small bowl, combine 1/2 cup brown sugar with the garlic powder, cayenne, pepper and 1 tablespoon salt. Rub both sides of each rack with the brown sugar mix. Wrap each rack in a double layer of foil and crimp along the edges to seal. Place on a baking sheet and cook until the meat is tender but not falling off the bone, about 2 to 2 1/2 hours. Allow to cool before unwrapping, being careful of rising steam. Remove the ribs from the foil packets and cut each rack into 4- to 6-rib portions."
)
step40 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 3,
    content: "While the ribs bake, add the remaining 1/2 cup brown sugar with the tamarind concentrate, chile or chile paste, honey, ginger and nutmeg to a small saucepan over medium-low heat. Stir to combine, bring to a slight simmer and cook until sauce is slightly reduced and thickened, about 8 minutes. Remove from heat, add the lime zest, season to taste with salt and allow to cool completely."
)
step41 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 4,
    content: "Finish the ribs on the grill (or proceed to Step 5 to finish the ribs in the oven): Heat a gas or charcoal grill to medium. Brush the ribs on both sides with a thin coat of the glaze. Place the ribs on the grill, turning often, until the glaze is sticky and charred in spots, 5 to 7 minutes."
)
step42 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 5,
    content: "Finish the ribs in the oven: Line a baking sheet with foil and arrange the ribs, meat-side up. Brush the tops with glaze and broil until glaze is set and caramelized in spots, 3 to 5 minutes."
)
step43 = Step.create!(
    recipe_id: recipe12.id,
    order_number: 6,
    content: "Brush again with the glaze and transfer the ribs to a board. Slice into individual ribs. Transfer ribs to a platter and top with scallions and crushed peanuts."
)
step44 = Step.create!(
    recipe_id: recipe13.id,
    order_number: 1,
    content: "Place eggs in a medium saucepan and cover with cold water. Bring water to a full boil, let cook for 1 minute, then turn off heat and cover pan. Allow eggs to stand for at least 15 minutes."
)
step45 = Step.create!(
    recipe_id: recipe13.id,
    order_number: 2,
    content: "Once eggs are cool enough to handle, peel and cut in half lengthwise. Scoop yolks into a bowl; place whites on a serving platter."
)
step46 = Step.create!(
    recipe_id: recipe13.id,
    order_number: 3,
    content: "Using a sharp knife or mortar and pestle, chop or smash garlic with salt to make a paste. Add paste to yolks and mash together with a fork. Add mayonnaise, tomato paste, red wine vinegar, pepper and paprika and continue to mash until mixture is smooth. Taste and add more vinegar, salt and paprika if desired."
)
step47 = Step.create!(
    recipe_id: recipe13.id,
    order_number: 4,
    content: "Spoon yolk mixture into whites and dust with paprika."
)
step48 = Step.create!(
    recipe_id: recipe14.id,
    order_number: 1,
    content: "Heat olive oil in a large heavy-bottomed Dutch oven over medium high. Add shallots and thinly sliced garlic, and season with salt and pepper. Cook, stirring occasionally, until the shallots have become totally softened and caramelized with golden-brown fried edges, 15 to 20 minutes."
)
step49 = Step.create!(
    recipe_id: recipe14.id,
    order_number: 2,
    content: "Add red-pepper flakes and anchovies. (No need to chop the anchovies; they will dissolve on their own.) Stir to melt the anchovies into the shallots, about 2 minutes."
)
step50 = Step.create!(
    recipe_id: recipe14.id,
    order_number: 3,
    content: "Add tomato paste and season with salt and pepper. Cook, stirring constantly to prevent any scorching, until the tomato paste has started to cook in the oil a bit, caramelizing at the edges and going from bright red to a deeper brick red color, about 2 minutes. Remove from heat and transfer about half the mixture to a resealable container, leaving the rest behind. (These are your leftovers to be used elsewhere: in another batch of pasta or smeared onto roasted vegetables, spooned over fried eggs or spread underneath crispy chicken thighs.)"
)
step51 = Step.create!(
    recipe_id: recipe14.id,
    order_number: 4,
    content: "To serve, cook pasta according to package instructions in a large pot of salted boiling water until very al dente (perhaps more al dente than usual). Transfer to Dutch oven with remaining shallot mixture (or a skillet if you are using the leftover portion) and 1 cup pasta water. Cook over medium-high heat, swirling the skillet to coat each piece of pasta, using a wooden spoon or spatula to scrape up any bits on the bottom, until pasta is thick and sauce has reduced and is sticky, but not saucy, 3 to 5 minutes."
)
step52 = Step.create!(
    recipe_id: recipe14.id,
    order_number: 5,
    content: "In a small bowl, combine parsley and finely chopped garlic clove, and season with flaky salt and pepper. Divide pasta among bowls, or transfer to one large serving bowl, and top with parsley mixture and a bit more red-pepper flakes, if you like."
)
step53 = Step.create!(
    recipe_id: recipe15.id,
    order_number: 1,
    content: "In a small, dry pan, toast the peppercorns, coriander seeds, cumin seeds and cardamom seeds over medium heat, shaking the pan occasionally, until slightly toasted and fragrant, about 2 minutes."
)
step54 = Step.create!(
    recipe_id: recipe15.id,
    order_number: 2,
    content: "Transfer the seeds to a large mortar and pestle, and pulverize into a coarse powder."
)
step55 = Step.create!(
    recipe_id: recipe15.id,
    order_number: 3, 
    content: "Add the garlic and chiles, and season evenly with kosher salt. Grind the mixture together until a tight paste forms, 4 to 5 minutes."
)
step56 = Step.create!(
    recipe_id: recipe15.id,
    order_number: 4, 
    content: "Add about 1/3 of the cilantro and parsley, and continue to pound together into a rough paste, another 4 to 5 minutes. Repeat two more times, adding the remaining cilantro and parsley in two batches, until the mixture is a slightly pulpy paste, 4 to 5 minutes."
)
step57 = Step.create!(
    recipe_id: recipe15.id,
    order_number: 5,
    content: "Drizzle in the olive oil while constantly pounding and grinding together the herb mixture until you achieve a loose, homogeneous paste. Continue to mix until it has the consistency of applesauce, about 2 minutes. Let it stand 10 minutes before serving."
)
step58 = Step.create!(
    recipe_id: recipe16.id,
    order_number: 1,
    content: "Heat the oven to 400 degrees. Line a large baking sheet with aluminum foil, then top with a wire rack."
)
step59 = Step.create!(
    recipe_id: recipe16.id,
    order_number: 2,
    content: "Halve jalapeños lengthwise. (Do your best to halve them through their stems for added visual appeal.) Using the tip of a small spoon, scoop out and discard the seeds. Set the halved jalapeños aside."
)
step60 = Step.create!(
    recipe_id: recipe16.id,
    order_number: 3,
    content: "In a medium bowl, stir together the cream cheese, cilantro, scallions, garlic and lime zest, if using; season generously with salt and pepper."
)
step61 = Step.create!(
    recipe_id: recipe16.id,
    order_number: 4,
    content: "Season the inside of each halved jalapeño with salt and pepper, then fill each with about 2 teaspoons of the cream cheese mixture. (Fill until there’s a slight dome on top.) Wrap each stuffed jalapeño with 1 piece of bacon, setting one tip of bacon on top of the cream cheese filling, then wrapping the bacon under and over the popper at an angle, so the bacon covers the filling on top in two layers. (The bacon will shrink as it cooks, so you want to make sure the top of the popper is well covered.) Arrange poppers evenly on the wire rack, nestling each popper between two parallel wires to keep it upright so the cream cheese doesn’t spill during baking."
)
step62 = Step.create!(
    recipe_id: recipe16.id,
    order_number: 5,
    content: "Transfer to the oven, and bake until bacon is cooked through, about 25 minutes. Broil on the rack closest to the broiler until crisp, about 2 minutes. Let cool for 5 minutes, then serve warm."
)
step63 = Step.create!(
    recipe_id: recipe17.id,
    order_number: 1,
    content: "Prepare a marinade for the chicken. Combine the lemon juice, 1/2 cup olive oil, garlic, salt, pepper, cumin, paprika, turmeric, cinnamon and red pepper flakes in a large bowl, then whisk to combine. Add the chicken and toss well to coat. Cover and store in refrigerator for at least 1 hour and up to 12 hours."
)
step64 = Step.create!(
    recipe_id: recipe17.id,
    order_number: 2,
    content: "When ready to cook, heat oven to 425 degrees. Use the remaining tablespoon of olive oil to grease a rimmed sheet pan. Add the quartered onion to the chicken and marinade, and toss once to combine. Remove the chicken and onion from the marinade, and place on the pan, spreading everything evenly across it."
)
step65 = Step.create!(
    recipe_id: recipe17.id,
    order_number: 3,
    content: "Put the chicken in the oven and roast until it is browned, crisp at the edges and cooked through, about 30 to 40 minutes. Remove from the oven, allow to rest 2 minutes, then slice into bits. (To make the chicken even more crisp, set a large pan over high heat, add a tablespoon of olive oil to the pan, then the sliced chicken, and sauté until everything curls tight in the heat.) Scatter the parsley over the top and serve with tomatoes, cucumbers, pita, white sauce, hot sauce, olives, fried eggplant, feta, rice — really anything you desire."
)
step66 = Step.create!(
    recipe_id: recipe18.id,
    order_number: 1,
    content: "Combine the flour and pepper in a bowl, add the beef and toss to coat well. Heat 3 teaspoons of the oil in a large pot. Add the beef a few pieces at a time; do not overcrowd. Cook, turning the pieces until beef is browned on all sides, about 5 minutes per batch; add more oil as needed between batches."
)
step67 = Step.create!(
    recipe_id: recipe18.id,
    order_number: 2,
    content: "Remove the beef from the pot and add the vinegar and wine. Cook over medium-high heat, scraping the pan with a wooden spoon to loosen any browned bits. Add the beef, beef broth and bay leaves. Bring to a boil, then reduce to a slow simmer."
)
step68 = Step.create!(
    recipe_id: recipe18.id,
    order_number: 3,
    content: "Cover and cook, skimming broth from time to time, until the beef is tender, about 1 1/2 hours. Add the onions and carrots and simmer, covered, for 10 minutes. Add the potatoes and simmer until vegetables are tender, about 30 minutes more. Add broth or water if the stew is dry. Season with salt and pepper to taste. Ladle among 4 bowls and serve."
)
step69 = Step.create!(
    recipe_id: recipe19.id,
    order_number: 1,
    content: "Pick over the beans for small rocks or debris. Rinse well, then cover with cold water and soak for 6 hours or overnight."
)
step70 = Step.create!(
    recipe_id: recipe19.id,
    order_number: 2,
    content: "Transfer beans to a soup pot and add water to cover by 1 inch. Add onion, bay leaf and bacon and bring to a boil. Reduce heat to a bare simmer, partly cover pot with lid, and cook for 1 hour, stirring occasionally."
)
step71 = Step.create!(
    recipe_id: recipe19.id,
    order_number: 3,
    content: "Stir in salt, paprika and cayenne, then continue simmering until beans are soft and creamy and the broth is well seasoned and lightly thickened, about 1 hour more. Remove bacon and chop roughly, then return to pot. (Dish may be prepared up to 2 days ahead.)"
)
step72 = Step.create!(
    recipe_id: recipe20.id,
    order_number: 1, 
    content: "Line two rimmed baking sheets with parchment paper. Using a stand mixer fitted with the paddle attachment or an electric hand mixer, beat the butter, both sugars and vanilla on medium-high till it’s super light and fluffy (3 to 5 minutes for a stand mixer; 6 to 8 for a hand mixer). Using a spatula, scrape down the sides of the bowl and, with the mixer on low, slowly add the flour, followed by the chocolate chunks, and mix just to blend. If necessary, knead the dough with your hands to make sure the flour is totally incorporated. At this point, the dough should be smooth and feel like Play-Doh with no pockets of flour."
)
step73 = Step.create!(
    recipe_id: recipe20.id,
    order_number: 2,
    content: "Divide the dough in half, placing each half on a large piece of plastic wrap. Fold the plastic over so that it covers the dough to protect your hands from getting all sticky. Using your hands, form the dough into a log shape; rolling it on the counter will help you smooth it out, but don’t worry about getting it totally perfect. (Don't be afraid to make them compact. Shortbread is supposed to be dense. That's part of why it's so good.) You can also do this using parchment paper, if you prefer, but plastic wrap is easier when it comes to shaping the log. Each half should form a 6-inch log, 2 to 2¼ inches in diameter. Chill until totally firm, about 2 hours."
)
step74 = Step.create!(
    recipe_id: recipe20.id,
    order_number: 3,
    content: "Heat the oven to 350 degrees. Brush the outside of the logs with the beaten egg and roll them in the demerara sugar (this is for those really delicious, crisp edges)."
)
step75 = Step.create!(
    recipe_id: recipe20.id,
    order_number: 4,
    content: "Using a serrated knife, carefully slice each log into ½-inch-thick rounds (if you hit a chocolate chunk, slowly saw back and forth through the chocolate). If the cookies break or fall apart, just press them back together — the dough is very forgiving. Place them on the prepared baking sheets about 1 inch apart (they won’t spread much). Sprinkle with flaky salt. Bake until the edges are just beginning to brown, 12 to 15 minutes. Let cool slightly before eating them all."
)


comment1 = Comment.create!(recipe_id: recipe1.id, content: "Great breakfast food!", user_id: 1)
comment2 = Comment.create!(recipe_id: recipe1.id, content: "Making this has become a Saturday tradition in our household.  I skip the bell pepper and add canned chipotles to up the heat level.", user_id: 3)