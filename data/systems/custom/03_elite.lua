local s_diso = CustomSystem:new("Diso",{'STAR_G'})
	:govtype('LIBDEM')
	:short_desc('This planet is mildly noted for its ancient Ouza tulip plantations but ravaged by frequent earthquakes.')
	:long_desc([[This planet is mildly noted for its ancient Ouza tulip plantations but ravaged by frequent earthquakes.]])
	:explored(true)

local lucy = CustomSystemBody:new("Lucy",'STAR_G')
   :radius(f(11,10))
   :mass(f(9,10))
   :temp(5750)

local diso = CustomSystemBody:new('Diso', 'PLANET_TERRESTRIAL')
   :seed(1)
   :radius(f(6155,6378))
   :mass(f(980,1000))
   :temp(280)
   :semi_major_axis(f(90,100))
   :eccentricity(f(2,100))
   :rotation_period(f(9,10))
   :life(f(9,10))
   :volcanicity(f(4,10))
   :atmos_density(f(11,10))

local diso_station =  CustomSystemBody:new('Diso High','STARPORT_ORBITAL')
	:semi_major_axis(f(5,100000))
	:rotation_period(f(1,24*60*4))

s_diso:bodies(lucy, {diso, {diso_station}})

local s_lave = CustomSystem:new("Lave",{'STAR_K'})
	:govtype('MILDICT1')
	:short_desc('Lave is most famous for its vast rain forests and the Laveian tree grub.')
	:long_desc([[Lave is most famous for its vast rain forests and the Laveian tree grub.]])
	:explored(true)

local eshe = CustomSystemBody:new("Eshe",'STAR_K')
   :radius(f(11,10))
   :mass(f(11,10))
   :temp(4850)

local lave = CustomSystemBody:new('Lave', 'PLANET_TERRESTRIAL')
   :seed(2)
   :radius(f(4116,6378))
   :mass(f(900,1000))
   :temp(290)
   :semi_major_axis(f(95,100))
   :eccentricity(f(2,100))
   :rotation_period(f(1,1))
   :life(f(9,10))
   :volcanicity(f(8,10))
   :ocean_cover(f(4,10))
   :atmos_density(f(9,10))
	:atmos_oxidizing(f(99,100))

local lave_station =  CustomSystemBody:new('Lave Station','STARPORT_ORBITAL')
	:semi_major_axis(f(4,100000))
	:rotation_period(f(1,24*60*4))
	:seed(5)

s_lave:bodies(eshe, {lave, {lave_station}})

local s_leesti = CustomSystem:new("Leesti",{'STAR_G'})
	:govtype('CORPORATE')
	:short_desc('The planet Leesti is reasonably fabled for Zero-G cricket and Leestiian evil juice.')
	:long_desc([[The planet Leesti is reasonably fabled for Zero-G cricket and Leestiian evil juice.]])
	:explored(true)

local hal = CustomSystemBody:new("Hal",'STAR_G')
   :radius(f(11,10))
   :mass(f(11,10))
   :temp(5540)

local leesti = CustomSystemBody:new('Leesti', 'PLANET_TERRESTRIAL')
   :seed(3)
   :radius(f(3085,6378))
   :mass(f(790,1000))
   :temp(290)
   :semi_major_axis(f(109,100))
   :eccentricity(f(9,1000))
   :rotation_period(f(36,13))
   :life(f(9,10))
   :ocean_cover(f(7,10))
   :atmos_density(f(6,5))

local leesti_station =  CustomSystemBody:new('Dodec One','STARPORT_ORBITAL')
	:semi_major_axis(f(8,100000))
	:rotation_period(f(1,24*60*2))

s_leesti:bodies(hal, {leesti, {leesti_station}})

local s_orerve = CustomSystem:new("Orerve",{'STAR_K'})
	:govtype('PLUTOCRATIC')
	:short_desc('This planet is a dull place.')
	:long_desc('This planet is a dull place. Expect enthusiasm for cheese. Wrap up warmly.')
	:explored(true)

local orerve = CustomSystemBody:new("Orerve",'STAR_K')
	:radius(f(9,19))
	:mass(f(9,10))
	:temp(4900)

local normandy = CustomSystemBody:new('Normandy','PLANET_TERRESTRIAL')
	:seed(4)
	:radius(f(5132,6378))
	:mass(f(85,100))
	:temp(265)
	:semi_major_axis(f(87,100))
	:eccentricity(f(2,1000))
	:rotation_period(f(5,48)) -- Two and a half hours!
	:life(f(8,10))
	:ocean_cover(f(1,10))
	:ice_cover(f(9,10))
	:atmos_density(f(2,1))

local cheesery = CustomSystemBody:new('The Cheesery','STARPORT_ORBITAL')
	:semi_major_axis(f(45,1000000))
	:rotation_period(f(1,1)) -- practically stationary

s_orerve:bodies(orerve, {normandy, {cheesery}})

local s_orrere = CustomSystem:new("Orrere",{'STAR_G'})
	:govtype('CORPORATE')
	:short_desc('Orrere is mildly well known for Orrereian vicious brew.')
	:long_desc('Orrere is mildly well known for Orrereian vicious brew.')
	:explored(true)

local centre = CustomSystemBody:new('Centre','STAR_G')
	:mass(f(1,1))
	:radius(f(1,1))
	:temp(6000)

local orrere = CustomSystemBody:new('Orrere','PLANET_TERRESTRIAL')
	:seed(5)
	:radius(f(5126,6378))
	:mass(f(4,5))
	:temp(280)
	:semi_major_axis(f(97,100))
	:eccentricity(f(6,100))
	:rotation_period(f(23,24))
	:life(f(9,10))
	:ocean_cover(f(6,10))
	:atmos_density(f(11,10))

local orrery = CustomSystemBody:new('Orrery Starport','STARPORT_ORBITAL')
	:semi_major_axis(f(45,1000000))
	:rotation_period(f(1,24*60*15))

s_orrere:bodies(centre, {orrere, {orrery}})

local s_reorte = CustomSystem:new("Reorte",{'STAR_G'})
	:govtype('MILDICT1')
	:short_desc("This planet is mildly fabled for its inhabitants' eccentric love for tourists but plagued by deadly earthquakes.")
	:long_desc("This planet is mildly fabled for its inhabitants' eccentric love for tourists but plagued by deadly earthquakes.")
	:explored(true)

local holy_light = CustomSystemBody:new('Holy Light','STAR_G')
	:mass(f(11,10))
	:radius(f(12,10))
	:temp(6500)

local reorte = CustomSystemBody:new('Reorte','PLANET_TERRESTRIAL')
	:seed(6)
	:radius(f(6419,6378))
	:mass(f(1443,1000))
	:temp(350)
	:semi_major_axis(f(12,10))
	:eccentricity(f(1,250))
	:rotation_period(f(26,24))
	:life(f(8,10))
	:ocean_cover(f(7,10))
	:atmos_density(f(23,10))
	:atmos_oxidizing(f(99,100))
	:volcanicity(f(8,10))

local lair_of_gods = CustomSystemBody:new('Lair of Gods','STARPORT_ORBITAL')
	:semi_major_axis(f(6,100000))
	:rotation_period(f(1,24*60*20))

s_reorte:bodies(holy_light, {reorte, {lair_of_gods}})

local s_riedquat = CustomSystem:new("Riedquat",{'STAR_G'})
	:govtype('DISORDER')
	:short_desc('This planet is most notable for its fabulous cuisine but beset by occasional civil war')
	:long_desc('This planet is most notable for its fabulous cuisine but beset by occasional civil war')
	:explored(true)

local riedquat = CustomSystemBody:new('Riedquat', 'STAR_G')
	:radius(f(12,10))
	:mass(f(12,10))
	:temp(5600)

local tortuga = CustomSystemBody:new('Tortuga', 'PLANET_TERRESTRIAL')
	:seed(7)
	:radius(f(6403,6378))
	:mass(f(21,20))
	:temp(295)
	:semi_major_axis(f(115,100))
	:eccentricity(f(8,1000))
	:rotation_period(f(25,24))
   :life(f(9,10))
   :ocean_cover(f(7,10))
   :ice_cover(f(6,10))
   :atmos_density(f(6,5))

local hard_harbour = CustomSystemBody:new('Hard Harbour', 'STARPORT_ORBITAL')
	:semi_major_axis(f(55,1000000))
	:rotation_period(f(1,24*30))

s_riedquat:bodies(riedquat, {tortuga, {hard_harbour}})

local s_tionisla = CustomSystem:new('Tionisla',{'STAR_M'})
	:govtype('CISLIBDEM')
	:short_desc("This world is very notable for its inhabitants' ingrained shyness.")
	:long_desc("This world is very notable for its inhabitants' ingrained shyness.")
	:explored(true)

local tionisla = CustomSystemBody:new('Tionisla','STAR_M')
	:radius(f(11,10))
	:mass(f(11,10))
	:temp(3500)

local landfall = CustomSystemBody:new('Landfall','PLANET_TERRESTRIAL')
	:seed(8)
	:radius(f(4646,6378))
	:mass(f(5,7))
	:temp(285)
	:semi_major_axis(f(7,10))
	:rotation_period(f(24,1))
	:life(f(0,1))
	:ocean_cover(f(0,1))
	:atmos_density(f(1,20))

local things_in_orbit = {
	CustomSystemBody:new('Leader','PLANET_ASTEROID')
		:semi_major_axis(f(4,100000))
		:mass(f(1,10000))
		:radius(f(1,10000))
		:rotation_period(f(1,24*60*17))
		:orbital_offset(f(1,1000)),
	CustomSystemBody:new('Central Cemetary','STARPORT_ORBITAL')
		:semi_major_axis(f(4,100000))
		:rotation_period(f(1,24*60*17))
		:orbital_offset(f(2,1000)),
	CustomSystemBody:new('Follower','PLANET_ASTEROID')
		:semi_major_axis(f(4,100000))
		:mass(f(1,10000))
		:radius(f(1,10000))
		:rotation_period(f(1,24*60*17))
		:orbital_offset(f(3,1000)),
}

s_tionisla:bodies(tionisla, {landfall, things_in_orbit})

local s_uszaa = CustomSystem:new('Uszaa',{'STAR_G'})
	:govtype('DISORDER')
	:short_desc("The planet Uszaa is reasonably noted for its inhabitants' eccentric love for tourists and the Uszaaian tree grub.")
	:long_desc("The planet Uszaa is reasonably noted for its inhabitants' eccentric love for tourists and the Uszaaian tree grub.")
	:explored(true)

local prime = CustomSystemBody:new('Prime','STAR_G')
	:radius(f(95,100))
	:mass(f(98,100))
	:temp(6100)

local uszaa = CustomSystemBody:new('Uszaa','PLANET_TERRESTRIAL')
	:seed(9)
	:radius(f(4867,6378))
	:mass(f(7,8))
	:temp(276)
	:semi_major_axis(f(97,100))
	:rotation_period(f(19,24))
	:life(f(9,10))
	:ocean_cover(f(7,9))
	:ice_cover(f(2,9))
	:atmos_density(f(12,11))
	:atmos_oxidizing(f(99,100))

local haven = CustomSystemBody:new('Haven','STARPORT_ORBITAL')
	:inclination(math.deg2rad(45))
	:semi_major_axis(f(45,1000000))
	:rotation_period(f(1,24*60))

s_uszaa:bodies(prime, {uszaa, {haven}})

local s_zaonce = CustomSystem:new('Zaonce',{'STAR_K'})
	:govtype('CORPORATE')
	:short_desc('Traditional seat of many high-tech companies')
	:long_desc('Traditional seat of many high-tech companies')
	:explored(true)

local trieve = CustomSystemBody:new('Trieve','STAR_K')
	:radius(f(1001,1000))
	:mass(f(1001,1000))
	:temp(5062)

local zaonce = CustomSystemBody:new('Zaonce','PLANET_TERRESTRIAL')
	:seed(10)
	:radius(f(3873,6378))
	:mass(f(11,20))
	:temp(281)
	:semi_major_axis(f(7,10))
	:rotation_period(f(50,24))
	:life(f(9,10))
	:ocean_cover(f(1,1))
	:atmos_density(f(34,10))
	:atmos_oxidizing(f(16,100))

local rebecca_weston = CustomSystemBody:new('Rebecca Weston','STARPORT_ORBITAL')
	:semi_major_axis(f(45,1000000))
	:rotation_period(f(1,24*60*19))

s_zaonce:bodies(trieve, {zaonce, {rebecca_weston}})

-- Add them to the map

s_diso:add_to_sector(-3,0,90,v(0.550,0.950,0.930))
s_lave:add_to_sector(-2,1,90,v(0.001,0.001,0.910))
s_leesti:add_to_sector(-3,0,90,v(0.650,0.550,0.960))
s_orerve:add_to_sector(-3,0,90,v(0.600,0.050,0.830))
s_orrere:add_to_sector(-3,1,90,v(0.300,0.950,0.850))
s_reorte:add_to_sector(-3,1,90,v(0.950,0.750,0.900))
s_riedquat:add_to_sector(-3,0,90,v(0.150,0.600,0.950))
s_tionisla:add_to_sector(-2,0,90,v(0.900,0.100,0.840))
s_uszaa:add_to_sector(-3,1,90,v(0.150,0.800,0.890))
s_zaonce:add_to_sector(-2,0,90,v(0.600,0.450,0.920))
