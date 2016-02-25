# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a= ["admin@admin.com", 
"admin1@admin.com", 
"admin2@admin.com", 
"admin3@admin.com", 
"admin4@admin.com", 
"admin5@admin.com", 
"admin6@admin.com", 
"admin7@admin.com", 
"admin89@admin.com", 
"admin99@admin.com"]

# Do NOT forget to avoid doublons when recreating entries (here with 'delete_all' method)
Product.delete_all
Provider.delete_all
User.delete_all

pict = File.open(Rails.root.join("public/exemple.jpg"))


10.times do |i|
User.create!(email: a[i], password:"password", password_confirmation:"password",username:"bily", phone: "+54 06 06 06 06 06",subscribe:1,gender:1,adress:"16 rue rolo",citycode:"51000",city:"Chezmoitown")

 end

10.times do |i|
	a =Provider.create(brand_name:"brand#{i}" , user_id: User.first.id)
	i+=1
	15.times do |j|
		Product.create(name:"name#{j}" ,pict:pict , price: "99", provider_id:a.id)
		j+=1
	end
end
# # Use these variable to  populate text zones
# text1 = "Donec commodo lacus arcu, vitae iaculis nisi pharetra accumsan. Phasellus nibh ligula, efficitur non metus sit amet, accumsan condimentum magna. Ut non cursus purus. Vestibulum eu lobortis enim. Vivamus mattis dictum tellus et tempus. Maecenas massa nunc, varius at risus eget, euismod varius ipsum. Nam accumsan, est sit amet interdum ultricies, tellus erat semper orci, in posuere urna dolor vitae erat. Aenean vel faucibus tortor. Morbi semper vulputate tortor, nec vulputate leo mollis quis. Vestibulum sit amet tincidunt risus. Vivamus purus nisl, porttitor eget tempor a, gravida eget eros. Fusce eget augue finibus, tincidunt nulla eu, rutrum sapien. Mauris sed semper orci."

# text2 = "Vestibulum vestibulum elit eget purus mollis iaculis. Donec sed purus ut justo rutrum vestibulum. Suspendisse vitae commodo nibh. Nam facilisis rutrum libero vitae cursus. Curabitur dui odio, ultricies maximus nunc nec, dignissim dignissim lacus. Proin sagittis hendrerit neque sit amet ornare. Fusce pretium facilisis rhoncus. In nibh lacus, semper sed bibendum et, vehicula id nunc. Nunc quis nibh massa. Proin dapibus vel quam eget ultricies. Duis neque libero, viverra et gravida et, lobortis placerat turpis. Etiam consequat leo porttitor accumsan venenatis. Fusce ut mauris ipsum."

# text3 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut euismod, magna ut vestibulum feugiat, eros sem feugiat justo, et vulputate tellus sapien eu lorem. Morbi sagittis ultricies consequat. Donec ac maximus dolor, in porta libero. Duis a tellus vitae ipsum semper egestas. Quisque nec tincidunt diam. Curabitur fringilla, dolor id sodales lobortis, enim risus aliquam elit, euismod auctor nunc purus vel diam. Praesent dignissim mauris et dapibus commodo. Donec sollicitudin nibh urna, in interdum libero iaculis vitae. Suspendisse consectetur turpis ac justo varius, eget mollis ante blandit. Mauris id luctus libero. Quisque congue felis at libero vulputate, vel bibendum ligula varius. Aenean ac magna scelerisque, ultrices diam nec, rhoncus diam. Vivamus id dui blandit, pulvinar orci a, bibendum tellus. Fusce eleifend nec sapien nec mollis."

# text4 = "Ut non velit in eros efficitur placerat in et sem. Quisque vitae mollis turpis. Phasellus vestibulum sollicitudin bibendum. Nam aliquam diam ipsum, non commodo nisi semper ac. Aenean malesuada magna vitae tempor porttitor. Cras et ligula rutrum leo ultrices tempus. Maecenas interdum mauris leo, vitae interdum diam mattis a. Phasellus a egestas odio. Curabitur tincidunt non erat non porta. Donec imperdiet porta quam, sed luctus dolor fringilla sed. Maecenas nunc orci, dictum et turpis non, rhoncus lacinia risus. Sed posuere tincidunt mi, vel ultrices felis tincidunt non. Maecenas pretium auctor iaculis. Fusce ipsum erat, ornare id convallis lobortis, tempus nec velit. Sed tristique mi elit, ut sodales dui feugiat quis."

## exemple:
                                                                        
# Post.create(name: "title exemple",content: text4) 
