insert into foods (name, image, price, description, place_id)
values ('Кофе', 'hot_beverage.png', 350, 'Кофе',(SELECT id FROM places where name='Coffee with love')),
       ('Стейк', 'steaks.png', 2240, 'Стейк рибай',(SELECT id FROM places where name='GrillBar')),
       ('Бургер', 'burgers.png', 1150,'Гамбургер с говяжьей катлетой',(SELECT id FROM places where name='FastFood')),
       ('Капкейк', 'bakery.png', 420, 'Капкейки шоколадные, лимонные и ванильные',(SELECT id FROM places where name='Coffee with love')),
       ('Чизкейк', 'dessert.png',600, 'Чизкейк клубничный',(SELECT id FROM places where name='Coffee with love')),
       ('Sushi', 'sushi.png', 1800, 'Суши в ассортименте',(SELECT id FROM places where name='FishBar')),
       ('Морской окунь', 'sea_food.png',2500,'Морской окунь запеченный на гриле', (SELECT id FROM places where name='FishBar')),
       ('Паста', 'pasta.png', 2800,'Паста с морепродуктами', (SELECT id FROM places where name='FishBar')),
       ('Молочный коктейль', 'cocktail.png', 800, 'Молочный коктейль в ассортименте',(SELECT id FROM places where name='Coffee with love')),
       ('Пицца', 'pizza.png', 2900,'Пицца с колбасками гриль', (SELECT id FROM places where name='GrillBar')),
       ('Fast food', 'fast_food.png', 950, 'Хот дог',(SELECT id FROM places where name='FastFood')),
       ('Салат', 'salad.png', 1180, 'Салат из свежих овощей',(SELECT id FROM places where name='FishBar'));