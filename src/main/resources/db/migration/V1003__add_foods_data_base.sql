insert into foods (name, image, price, place_id)
values ('Кофе', 'hot_beverage.png', 350, (SELECT id FROM places where name='Coffee with love')),
       ('Стейк', 'steaks.png', 2240, (SELECT id FROM places where name='GrillBar')),
       ('Бургер', 'burgers.png', 1150,(SELECT id FROM places where name='FastFood')),
       ('Капкейк', 'bakery.png', 420, (SELECT id FROM places where name='Coffee with love')),
       ('Чизкейк', 'dessert.png',600, (SELECT id FROM places where name='Coffee with love')),
       ('Sushi', 'sushi.png', 1800, (SELECT id FROM places where name='FishBar')),
       ('Морской окунь', 'sea_food.png',2500, (SELECT id FROM places where name='FishBar')),
       ('Паста с морепродуктами', 'pasta.png', 2800, (SELECT id FROM places where name='FishBar')),
       ('Молочный коктейль', 'cocktail.png', 800, (SELECT id FROM places where name='Coffee with love')),
       ('Пицца с колбасками гриль', 'pizza.png', 2900, (SELECT id FROM places where name='GrillBar')),
       ('Fast food', 'fast_food.png', 950, (SELECT id FROM places where name='FastFood')),
       ('Салат', 'salad.png', 1180, (SELECT id FROM places where name='FishBar'));