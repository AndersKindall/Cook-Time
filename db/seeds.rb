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

ActiveRecord::Base.connection.reset_pk_sequence!("users")
ActiveRecord::Base.connection.reset_pk_sequence!("recipes")
ActiveRecord::Base.connection.reset_pk_sequence!("ingredients")
ActiveRecord::Base.connection.reset_pk_sequence!("steps")


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
    amount: "1/8",
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
    amount: "3/4",
    ingredient_name: "teaspoon kosher salt, plus more as needed"
)
ing10 = Ingredient.create!(
    recipe_id: recipe1.id,
    order: 10, 
    amount: "1/4",
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