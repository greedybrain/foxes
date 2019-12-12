foods = [
    {
    name: 'pizza',
    category: 'fast food',
    fat: 'lots',
    protein: 'some',
    carbohydrates: 'moderate to lots'
},
{
    name: 'banana',
    category: 'fruit',
    fat: 'zero',
    protein: 'some',
    carbohydrates: 'some to moderate'
}
]

foods.each do |attrs|
    Food.create(attrs)
end