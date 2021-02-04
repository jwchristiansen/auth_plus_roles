# roles
role_regular = Role.create(
  name: 'Regular',
  description: 'Can read items'
)

role_seller = Role.create(
  name: 'Seller',
  description: 'Can read and create items. Can update and destroy own items'
)

role_admin = Role.create(
  name: 'Admin',
  description: 'Can perform any CRUD operation on any resource'
)

# users
user_regular = User.create(
  name: 'Roger Regular',
  email: 'regular@regular.com',
  password: '123123',
  password_confirmation: '123123',
  role_id: role_regular.id
)

user_seller_1 = User.create(
  name: 'Susan Seller',
  email: 'seller1@seller.com',
  password: '123123',
  password_confirmation: '123123',
  role_id: role_seller.id
)

user_seller_2 = User.create(
  name: 'Samuel Seller',
  email: 'seller2@seller.com',
  password: '123123',
  password_confirmation: '123123',
  role_id: role_seller.id
)

user_admin = User.create(
  name: 'Aaron Admin',
  email: 'admin@admin.com',
  password: '123123',
  password_confirmation: '123123',
  role_id: role_admin.id
)

# items
Item.create(
  name: 'Gibson Les Paul',
  description: 'Heavy, loud',
  price: 999.99,
  user_id: user_seller_1.id
)

Item.create(
  name: 'Fender Strat',
  description: 'Clean, crisp',
  price: 799.99,
  user_id: user_seller_1.id
)

Item.create(
  name: 'Danelectro Baritone',
  description: 'Bassy, smooth',
  price: 499.99,
  user_id: user_seller_2.id
)

Item.create(
  name: 'The Loar LH-304T',
  description: 'Hollow, jazz',
  price: 599.99,
  user_id: user_seller_2.id
)
