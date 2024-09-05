# Specifications for the Rails Assessment

Add notes below each checkbox with how your application has met the requirement

Requirements:
- [x] Uses Ruby on Rails
    - User- has_many gardens and plants through gardens - email/password
    - Plant- has_many gardens through garden plants name/type
    - Garden- belongs_to User and has many plants through garden plants name/location
    - GardenPlant belongs to garden and plant quantity/last_watered
- [x] Includes at least one has_many relationship (e.g. User has_many Recipes)
- [x] Includes at least one belongs_to relationship (e.g. Post belongs_to User)
- [x] Includes at least two has_many through relationships (e.g. a `Recipe` could `has_many` `Item`s through `Ingredient`s)
- [x] Every model contains at least at least two simple attributes (e.g. ingredient#quantity)
- [x] Includes reasonable validations
   - GardenPlant - validates quantity
   - Garden - validates name and location
   - Plant - validates name, scientific_name and plant_type
- [x] Includes a class level ActiveRecord scope method
   - Plant - edible_plants and pet_safe plants sort feature uses scope 
- [x] Includes signup, login and logout functionality (e.g. Devise)
   - Using Devise
- [x] Includes nested resource show or index (e.g. users/2/recipes)
   - User>Gardens 
- [x] Includes nested resource form (recipes/1/ingredients/new)
- [x] Includes form display of validation errors
   - Errors are appropriately displayed for every new/update action
- [x] Includes Unit tests all of your models
- [x] Includes at least one type of Integration test (e.g. controller, request, feature, system)
   - Plant integration test to test creation of new Plant
- [x] Use FactoryBot to build instances of your models in your tests
- [x] Conforms to Nitro Ruby linting rules (running `rubocop` returns 0 offenses)
- [x] Includes a `README.md` with an application description and installation guide

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

If you've added any additional functionality to your application that you'd like to demonstrate, please describe it below:
