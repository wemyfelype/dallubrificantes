print "Criando Categorias... "
  Category.create!([
    {description: "Lubrificantes"},
    {description: "Filtro de ar"},
    {description: "Filtro de óleo"},
    {description: "Aditivo de radiador"}
  ])
print "[OK]" 
p ""

print "Criando Produtos... "
  Product.create!([
    {name: "Lubrax sd 40-25", qt_stock: Random.rand(1..100), bar_code: "123456789012", description: "lubrificação de motores", category_id: 1},
    {name: "Tecfil p-5403", qt_stock: Random.rand(1..100), bar_code: "123456789023", description: "para fusca", category_id: 2},
    {name: "varz 500 p34", qt_stock: Random.rand(1..100), bar_code: "098765432109", description: "para corcel", category_id: 3},
    {name: "radiex 1000ml", qt_stock: Random.rand(1..100), bar_code: "543216789010", description: "para corroer todo sistema de refrigeramento do carro", category_id: 4}
  ])
print "[OK]" 
p "\n"