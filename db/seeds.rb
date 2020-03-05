require 'byebug'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Production.destroy_all
CostumeDesigner.destroy_all
Theatre.destroy_all
Costume.destroy_all
ProductionCostume.destroy_all

@costume_types = ['shirt', 'pants', 'hat', 'skirt', 'bodice', 'shoes', 'coat', 'vest', ]
@costume_eras = ['Greek & Roman', 'Asian', 'Victorian', 'Elizabethan', 'Early 20th century', 'Mid 20th century','Modern casual','Modern formal', 'Fantasy' ]
@costume_materials = ['cotton', 'paper mache', 'polyester', 'hemp', 'muslin', 'wool', 'thule', 'lycra',  ]

cd1=CostumeDesigner.create(name:'Julie Taymor')
cd2=CostumeDesigner.create(name:'Matt Milton')
cd3=CostumeDesigner.create(name:'Ruth Carter')

t1=Theatre.create(name:'Central Washington University')
t2=Theatre.create(name:'The Seattle Repertory Theatre')
t3=Theatre.create(name:'The Oregon Shakespeare Festival')

c1=Costume.create(costume_type:'hat', era:'Medieval', material:'cotton', color:'orange', image:'fantasy/09010973.jpg')
c2=Costume.create(costume_type:'bodice', era:'Fantasy', material:'cotton', color:'purple', image:'fantasy/09006489.jpg')
c3=Costume.create(costume_type:'bodice', era:'Fantasy', material:'leather', color:'pink', image:'fantasy/09035408.jpg')
c4=Costume.create(costume_type:'hat', era:'Fantasy', material:'cotton', color:'brown', image:'fantasy/09038392.jpg')
c5=Costume.create(costume_type:'dress', era:'Fantasy', material:'cotton', color:'green', image:'fantasy/09044046.jpg')
c6=Costume.create(costume_type:'dress', era:'Fantasy', material:'cotton', color:'white', image:'fantasy/09044282.jpg')
c7=Costume.create(costume_type:'bodice', era:'Fantasy', material:'cotton', color:'gold', image:'fantasy/09048606.jpg')
c8=Costume.create(costume_type:'hat', era:'Fantasy', material:'feather', color:'red', image:'fantasy/11001814.jpg')
c9=Costume.create(costume_type:'hat', era:'Fantasy', material:'wool', color:'brown', image:'fantasy/11001901.jpg')
c10=Costume.create(costume_type:'hat', era:'Fantasy', material:'Paper Mache', color:'white', image:'fantasy/11002884.jpg' )



p1=Production.create(title:'MacBeth', costume_designer_id:1, theatre_id:1)
p2=Production.create(title:'A Thousand Cranes', costume_designer_id:2, theatre_id:1)
p3=Production.create(title:'The Odd Couple', costume_designer_id:3, theatre_id:3)
p4=Production.create(title:'A Funny Thing Happened on te Way to the Forum', costume_designer_id:2, theatre_id:3)
p5=Production.create(title:'The Diary of Anne Frank', costume_designer_id:3, theatre_id:1)
p6=Production.create(title:'Noises Off', costume_designer_id:2, theatre_id:2)

ProductionCostume.create(costume_id:c1.id , production_id:p6.id )
ProductionCostume.create(costume_id:c2.id , production_id:p6.id )
ProductionCostume.create(costume_id:c3.id , production_id:p5.id )
ProductionCostume.create(costume_id:c4.id , production_id:p4.id )
ProductionCostume.create(costume_id:c5.id , production_id:p3.id )
ProductionCostume.create(costume_id:c6.id , production_id:p3.id )
ProductionCostume.create(costume_id:c6.id , production_id:p1.id )