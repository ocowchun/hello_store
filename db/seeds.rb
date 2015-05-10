# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@r=Random.new(3345678)

def create_store(region_id)
  Store.create(name:Faker::Address.city,region_id:region_id)
end

def create_stores(region_id)
  stores=[]
  store_num=@r.rand(5)+5
  store_num.times do|j|
    stores<<create_store(region_id)
  end
  stores
end

def create_order(store_id)
  Order.create(sales:@r.rand(500),store_id:store_id)
end

def create_orders(store_id)
  orders=[]
  order_num=@r.rand(5)+5
  order_num.times do|j|
    orders<<create_order(store_id)
  end
  orders
end

10.times do|i|
  region=Region.create(name:Faker::Address.state)
  stores=create_stores(region.id)
  stores.each{|store|create_orders(store.id)}
end
