//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Surath Chathuranga on 2023-06-13.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable{
    let id = UUID()
    let name:String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Creamy Carrot Soup",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162732/Creamy-Carrot-and-Pea-Soup-wordpress-1366x566-c.jpg",
            description: "Fresh ginger, cinnamon, and coriander deliver unforgettable flavor in this creamy carrot soup. Instead of using dairy or oil to achieve its velvety texture, this dish simmers potatoes and chickpeas with the spiced carrots and blitzes them with an immersion blender to release their creamy, hearty properties. Unsweetened beverage-style coconut milk (which you can find next to other plant-based milks in the refrigerator aisle) and lime juice add a decadent mouthfeel to the soup and heighten its Thai-inspired flavor profile when combined with all the warming spices. Each serving is topped with crisp snap peas and a crack of black pepper for a vibrant plant-based meal that will leave you licking the bowl.",
            ingredients: "2 cups chopped onion\n1 3 cloves garlic\n1 minced,3 cups chopped carrots\n1 1 tablespoon grated fresh ginger\n1 1 32-oz package low-sodium vegetable broth\n1 3 cups chopped peeled Yukon gold potatoes\n1 1 teaspoon ground coriander\n1 Dash ground cinnamon,2 15-oz\n1 cans no-salt-added chickpeas\n1 rinsed and drained (3 cups),2 cups unsweetened coconut milk beverage (do not use canned)\n1 2 tablespoons lime juice,Sea salt\n1 to taste,Freshly ground black pepper,to taste\n1 2 cups fresh sugar snap peas, halved",
            directions: "In a large pot cook onion and garlic over medium 5 minutes, stirring occasionally and adding water, 1 to 2 tablespoons at a time, as needed to prevent sticking. Add carrots and ginger; cook 3 to 4 minutes, adding water, 1 to 2 tablespoons at a time, as needed to prevent sticking. Do not let the ginger burn.",
            category:"Soup",
            datePublished: "2022.12.12",
            url: "https://www.forksoverknives.com/recipes/vegan-soups-stews/creamy-carrot-and-pea-soup/"
              ),
        Recipe(
            name: "Roasted Cauliflower Planks with Pepper Salad",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162763/Roasted-Cauliflower-and-Pepper-Salad-wordpress-1366x566-c.jpg",
            description: "This hearty main dish salad is delicious served warm or at room temperature. Start by slicing tamari-marinated cauliflower into planks and oven-roasting them until the florets begin to brown and caramelize. While they cook, a scrumptious medley of bell peppers, onion, and cannellini beans are simmered in tangy red wine vinegar and sweet paprika to create a saucy base for the cauliflower planks. Top it all off with slices of creamy avocado for a summery dish packed full of fresh produce. Adding a few sprigs of parsley or cilantro really rounds out the flavors of this unforgettable knife-and-fork meal.",
            ingredients: "1 to 2 large heads cauliflower (about 3 lb. total)\n1 2 teaspoons reduced-sodium tamari\n1 Freshly ground black pepper\n1 to taste,3 bell peppers (red, yellow, and orange)\n1  cut into ½-inch strips\n1 1 large sweet onion, cut into ½-inch strips\n1 3 cloves garlic\n1 minced\n1 2 15-oz. cans no-salt-added cannellini beans\n1 rinsed and drained (3 cups)\n1 3 tablespoons red wine vinegar\n1 2 teaspoons sweet paprika\n1 ¼ cup chopped fresh parsley\n1 1 medium avocado, halved, seeded, peeled, and sliced",
            directions: "Preheat oven to 400°F. Line a large baking sheet with parchment paper or a silicone baking mat. Remove outer leaves from cauliflower. Carefully trim stem ends, leaving cores intact so florets are still attached. Place cauliflower heads, core sides down, on cutting board. Using a chef’s knife or large serrated knife, cut cauliflower vertically into four 1- to 1¼-inch thick “steaks” (reserve ends and loose pieces for another use).", category: "Salad",
            datePublished: "2022.12.12",
            url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/roasted-cauliflower-planks-with-pepper-salad/"
        ),
        Recipe(
            name: "Pineapple Ginger Smoothie",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/162767/Pineapple-Ginger-Smoothie-wordpress-1366x566-c.jpg",
            description: "Take your taste buds on a tropical vacation with this cold and creamy concoction that tastes like sunshine in a glass. Blended banana and pineapple are infused with the invigorating flavors of ginger and turmeric so you end up with a slushy treat that’s halfway between a golden milk latte and a tiki drink. A few tablespoons of quick-cooking oats add extra fiber and thicken the smoothie so you stay full for longer. And while it’s possible to use fresh bananas in this recipe, we highly recommend freezing them first so you don’t have to water down your drink with ice cubes. Once the bananas are good to go, this recipe whips together in just 10 minutes! If you’re feeling fancy, garnish your glass with a pineapple wedge for extra flair.",
            ingredients: "1 banana, sliced and frozen\n1 1 cup unsweetened\n1 unflavored plant-based milk\n1 2 tablespoons quick-cooking oats (see tip, recipe intro)\n1 8 oz. frozen pineapple (about 1 cup)\n1 ½ teaspoon grated fresh ginger\n1 ¼ teaspoon ground turmeric",
            directions: "Line a baking sheet with parchment paper. Freeze bananas on prepared baking sheet for at least 2 hours. In a high-powered blender (or food processor), combine plant milk, quick-cooking oats, frozen bananas and pineapple, ginger, and turmeric. Blend until smooth. Pour into a glass and serve",
            category: "Appetizers",
            datePublished: "2022.12.12", url: "https://www.forksoverknives.com/recipes/vegan-snacks-appetizers/pineapple-ginger-smoothie/"),
        Recipe(name: "Vegetable Potpie",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/98816/Vegetable-pot-pie-for-wordpress-1366x566-c.jpg",
               description: "This eye-popping potpie makes a hearty addition to a holiday menu or an impressive entree any time of year. Note that this recipe calls for whole wheat pizza dough: Make some using our 10-minute recipe or look for oil-free options at the store", ingredients: "3 cups sliced fresh cremini mushrooms\n1 1 cup sliced carrots\n1 ½ cup sliced celery, 3¼ cups low-sodium vegetable broth, 2 cups ½-inch pieces peeled butternut squash, 1½ cups frozen whole pearl onions\n1 1 teaspoon chopped fresh thyme\n1 1 bay leaf\n1 1 15-oz. can no-salt-added chickpeas\n1 rinsed and drained\n1 1 cup frozen peas\n1 1 cup frozen corn\n1 3 tablespoons all-purpose flour\n1 Sea salt and freshly ground black peppe to taste\n1 1 recipe Homemade Oil-Free Pizza Dough or 1 lb.\n1 refrigerated whole wheat pizza dough\n1 1 tablespoon unsweetened plant milk, such as almond, soy, cashew, or rice",
               directions: "Preheat oven to 425°F. For filling, in a 4-qt. saucepan cook mushrooms, carrots, and celery over medium 3 to 4 minutes, stirring occasionally and adding water, 1 to 2 Tbsp. at a time, as needed to prevent sticking. Add 3 cups of the broth, the squash, onions, thyme, and bay leaf. Bring to boiling; reduce heat. Simmer, covered, 5 minutes or until vegetables are nearly tender. Stir in chickpeas, peas, and corn.", category: "Main",
               datePublished: "2022.12.22",
               url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/vegetable-pot-pie/"),
        Recipe(name: "Red Lentil Loaf with Smoky Tomato Sauce Recipe",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/85949/Red-Lentil-Loaf-1366x566-c.jpg",
               description: "Infinitely healthier than meat-based meatloaf and just as delicious, this savory vegan meatloaf recipe makes a welcome meal on a chilly night. Try it in next-day sandwiches, too. The smoky-sweet sauce, made with taco seasoning, smoked paprika, mustard, and Date Paste, comes together in just 10 minutes.",
               ingredients: "2 medium onions, chopped (2 cups)\n1 1 cup red lentils rinsed and drained\n1 2 fresh poblano chile peppers\n1 seeded and chopped (1 cup)\n1 3 cloves garlic, minced\n1 1½ teaspoons chopped fresh Mexican oregano\n1 2 cups cooked short grain brown rice\n1 ¼ cup cornmeal\n1 ¼ cup finely chopped fresh cilantro\n1 2 tablespoons lime juice",
               directions: "Preheat oven to 375°F. Line a 9×5-inch loaf pan with parchment paper. In a skillet combine onions, lentils, poblanos, garlic, and oregano. Stir in 1½ cups water. Bring to boiling; reduce heat. Simmer, covered, 20 minutes or until lentils are tender and water is absorbed, stirring occasionally. Stir in rice, cornmeal, cilantro, lime juice, and salt. Lightly pat mixture into the prepared loaf pan; flatten top.",
               category: "Main",
               datePublished: "2022.12.04", url: "https://www.forksoverknives.com/recipes/vegan-baked-stuffed/red-lentil-loaf-recipe-smoky-tomato-sauce/"),
        Recipe(name: "Roasted Root Vegetable Medley",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158614/Roasted-Root-Vegetable-Medley-wordpress-1366x566-c.jpg",
               description: "This simple side dish celebrates root vegetables in all their colorful, flavorful glory. The key to evenly roasting firmer veggies, such as carrots and potatoes, without adding fat is to steam them first before mixing them with the soft vegetables. Serve this vibrant recipe at your Thanksgiving feast, or enjoy it as a side with a warm bowl of soup.",
               ingredients: "4 assorted-color carrots\n1 peeled and cut into 3-inch pieces\n1 6 fingerling potatoes, halved if large\n1 2 small parsnips, peeled, halved crosswise, and quartered lengthwise\n1 1 turnip, peeled and cut into sixths\n1 1 rutabaga, peeled and cut into thick wedges\n1 1 medium beet, peeled and cut into 1-inch wedges\n1 3 tablespoons balsamic vinegar\n1 2 tablespoons lemon juice",
               directions: "Preheat oven to 375°F. Working in batches if necessary, place the first six ingredients (through beet) in a steamer basket in a large saucepan. Add water to saucepan to just below basket. Bring to boiling. Steam, covered, 5 to 7 minutes or until vegetables are just tender.",
               category: "Side",
               datePublished: "2022.12.06",
               url: "https://www.forksoverknives.com/recipes/vegan-salads-sides/roasted-root-vegetable-medley/"),
        Recipe(name: "Sweet Potato Chocolate Pudding with Pecan Crumble",
               image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/158483/Sweet-Potato-Chocolate-Pudding-with-Pecan-Crumble-wordpress-1366x566-c.jpg",
               description: "Tender cooked sweet potatoes form the base of this luscious autumnal pudding. Rich cocoa powder, caramel-like dates, and a dash of salty tahini transform it into a creamy treat that’s perfect for a Thanksgiving feast. The crunchy crumb topping is scented with the fall flavors of nutmeg and cinnamon, adding an extra cozy flourish to this good-for-you dessert",
               ingredients: "1 large sweet potato, unpeeled, chopped into 1-inch cubes (4 cups)\n1 4 whole dates, pitted\n1 ¼ cup unsweetened\n1 unflavored plant-based milk\n1 ¼ cup unsweetened cocoa powder\n1 2 tablespoon pure maple syrup\n1 1 teaspoon tahini\n1 Sea salt to taste\n1 ¼ cup raw pecans, walnuts, or almonds\n1 ¼ cup coarsely chopped dates\n1 ¼ teaspoon ground nutmeg\n1 ¼ teaspoon ground cinnamon",
               directions: "In a medium saucepan combine sweet potato, whole dates, and 2 cups water. Bring to boiling; reduce heat. Cover and simmer about 15 minutes or until sweet potato is tender. Drain sweet potato and dates in a colander; cool 5 minutes. Transfer sweet potato and dates to a food processor. Add the next five ingredients (through salt). Process until very smooth and creamy. Transfer to a bowl; cover and chill at least 1 hour. For crumble topping, in a clean food processor combine the remaining ingredients. Process until small crumbly texture. Sprinkle over chilled pudding.",
               category: "Desserts",
               datePublished: "2022.12.12",
               url: "https://www.forksoverknives.com/recipes/vegan-desserts/sweet-potato-chocolate-pudding/")
        
    
    ]
}
