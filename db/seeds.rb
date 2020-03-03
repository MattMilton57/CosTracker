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
ProductionsCostume.destroy_all

cd1=CostumeDesigner.create(name:'Julie Taymor')
cd2=CostumeDesigner.create(name:'Matt Milton')
cd3=CostumeDesigner.create(name:'Ruth Carter')

t1=Theatre.create(name:'Central Washington University')
t2=Theatre.create(name:'The Seattle Repertory Theatre')
t3=Theatre.create(name:'The Oregon Shakespeare Festival')

c1=Costume.create(costume_type:'skirt', era:'Restoration', material:'cotton', color:'red')
c2=Costume.create(costume_type:'bodice', era:'Restoration', material:'cotton', color:'red')
c3=Costume.create(costume_type:'hat', era:'Restoration', material:'cotton', color:'red')
c4=Costume.create(costume_type:'skirt', era:'Modern casual', material:'cotton', color:'red')
c5=Costume.create(costume_type:'coat', era:'Modern formal', material:'cotton', color:'red')
c6=Costume.create(costume_type:'hat', era:'Modern casual', material:'cotton', color:'red')
c7=Costume.create(costume_type:'coat', era:'Victorian', material:'cotton', color:'red')
c8=Costume.create(costume_type:'toga', era:'Greek & Roman', material:'cotton', color:'red')
c9=Costume.create(costume_type:'vest', era:'Early 20th century', material:'cotton', color:'red')
c10=Costume.create(costume_type:'hat', era:'Fantasy', material:'Paper Mache', color:'brown')



p1=Production.create(title:'MacBeth', costume_designer_id:1, theatre_id:1)
p2=Production.create(title:'A Thousand Cranes', costume_designer_id:2, theatre_id:1)
p3=Production.create(title:'The Odd Couple', costume_designer_id:3, theatre_id:3)
p4=Production.create(title:'A Funny Thing Happened on te Way to the Forum', costume_designer_id:2, theatre_id:3)
p5=Production.create(title:'The Diary of Anne Frank', costume_designer_id:3, theatre_id:1)
p6=Production.create(title:'Noises Off', costume_designer_id:2, theatre_id:2)

ProductionsCostume.create(costume_id:c1.id , production_id:p6.id )
ProductionsCostume.create(costume_id:c2.id , production_id:p6.id )
ProductionsCostume.create(costume_id:c3.id , production_id:p5.id )
ProductionsCostume.create(costume_id:c4.id , production_id:p4.id )
ProductionsCostume.create(costume_id:c5.id , production_id:p3.id )
ProductionsCostume.create(costume_id:c6.id , production_id:p3.id )
ProductionsCostume.create(costume_id:c6.id , production_id:p1.id )