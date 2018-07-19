SpelllistSettings = {
  ['Default'] = {
    iconFile = '/images/game/spells/defaultspells',
    iconSize = {width = 32, height = 32},
    spellListWidth = 210,
    spellWindowWidth = 550,
    spellOrder = {'Aura', 'Ki Blast', 'Power Up' , 'Power Down', 'Kaioken', 'Barrier', 'Bukujutsu', 'Kiaiho' , 'Regeneration', 'Kienzan' , 'Usuale Rage' , 'Sense' , 'Ki Sword' , 'Tsubi Kienzan' , 'Power Beam' , 'Ryuken' , 'Big Bang Attack' , 'Seeker Blast' , 'Masenko' , 'Kuukanteni Punch' , 'Heal Friends' , 'Eye Layzers' , 'Renzoku Energy Dan' , 'Cube Fade' , 'Heal Friend' , 'Gran Aura' , 'Burning Attack' , 'Kamehameha' , 'Zanzoken' , 'Sai Sei' , 'Tsubi Kikouha' , 'Makosen' , 'Ikoukan Hatsusei' , 'Henka Beam' , 'Makanokosappo' , 'Final Slash' , 'Final Flash' , 'Rapid Cannon' , 'Udebunrikoge Ki' , 'Shogekiha' , 'Bakurikimacha' , 'Taiyoken' , 'Death Ball' , 'Finish Buster' , 'Renzoku Kikouha' , 'Tsuihidan' , 'Negative Karma Ball' , 'Genocide Attack' , 'Furie' , 'Genki Dama' , 'Explosion' , 'Bakuhatsuha' , 'One Hand Kamehameha' , 'Evil Energy' , 'Burning Expansion' , 'Supernova' , 'Nendouriki' , 'Mafuba' , 'Kakusanyudokodan' , 'Provoke', 'Mind Control' , 'Omega Blow' , 'Eletric Death Ball' , 'Shock Storm' , 'Chobakuretsumaha' , 'Sokidan' , 'Instant Transmission' , 'Ten Times Kamehameha' , 'Demon Death Ball' , 'Final Shine' , 'Super Kamehameha' , 'Destructo Disk' , 'Death Beam' , 'Super Charge' , 'Curse Healing' , 'Repair' , 'Namek Furie' , 'Berserker Mode' , 'Uncontroled Rage' , 'Sharp Skin' , 'Meteo Self' }
  }--[[ ,

  ['Sample'] =  {
    iconFile = '/images/game/spells/sample',
    iconSize = {width = 64, height = 64},
    spellOrder = {'Critical Strike', 'Firefly', 'Fire Breath', 'Moonglaives', 'Wind Walk'}
  }]]
}

SpellInfo = {
  ['Default'] = {
    ['Kiaiho'] =             	       { vocations = {47, 48, 49, 50, 51, 52, 102,41, 42, 43, 44, 45, 46, 101,13, 14, 15, 16, 17, 18, 96,1, 2, 3, 4, 5, 6, 94} ,id = 1 ,                                                                                                                                                                                                                                                                                                                          words = 'kiaiho' ,            	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kiaiho' ,           	        mana = 350 ,            level = 15 ,  soul = 0 , group = {[1] = 1000} ,tp = 35 }  ,
    ['Ryuken'] =            	       { vocations = {1, 2, 3, 4, 5, 6, 94} ,id = 2 ,                                                                                                                                                                                                                                                                                                                                                                                                             words = 'ryuken' ,            	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'ryuken' ,           	        mana = 560 ,            level = 30 ,  soul = 0 , group = {[1] = 1000} ,tp = 50  } ,
    ['Renzoku Energy Dan'] =           { vocations = {89, 90, 91, 92, 93, 108,19, 20, 21, 22, 23, 97,13, 14, 15, 16, 17, 18, 96,1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95} ,id = 3 ,                                                                                                                                                                                                                                                                                                           words = 'renzoku energy dan' ,           exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'renzoku energy dan' ,           mana = 475 ,            level = 40 ,  soul = 0 , group = {[1] = 1000} ,tp = 60 } ,
    ['Furie'] =    				       { vocations = {24, 25, 26, 27, 28, 98,19, 20, 21, 22, 23, 97,13, 14, 15, 16, 17, 18, 96,7, 8, 9, 10, 11, 12, 95,1, 2, 3, 4, 5, 6, 94} ,id = 4 ,                                                                                                                                                                                                                                                                                                            words = 'furie' ,        		         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'furie' ,   			            mana = 1500 ,           level = 90 ,  soul = 0 , group = {[1] = 1000} ,tp = 110 }  ,
	['Genki Dama'] =                   { vocations = {1, 2, 3, 4, 5, 6, 94} ,id = 5 ,                                                                                                                                                                                                                                                                                                                                                                                                             words = 'genki dama' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'genki dama' ,                   mana = 1450 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Ten Times Kamehameha'] =         { vocations = {1, 2, 3, 4, 5, 6, 94} ,id = 6 ,                                                                                                                                                                                                                                                                                                                                                                                                             words = 'ten times kamehameha' ,         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'ten times kamehameha' ,         mana = 2550 ,           level = 130 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Berserker Mode'] =  	           { vocations = {13, 14, 15, 16, 17, 18, 96,7, 8, 9, 10, 11, 12, 95,1, 2, 3, 4, 5, 6, 94} ,id = 7 ,                                                                                                                                                                                                                                                                                                                                                          words = 'berserker mode' ,               exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'berserker mode' ,   	        mana = 3000 ,           level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 },
    ['Barrier'] =                      { vocations = {77, 78, 79, 80, 81, 82, 106,71, 72, 73, 74, 75, 76, 105,64, 65, 66, 67, 68, 69, 70,53, 54, 55, 56, 57, 58, 103,41, 42, 43, 44, 45, 46, 101,35, 36, 37, 38, 39, 40, 100,19, 20, 21, 22, 23, 97,13, 14, 15, 16, 17, 18, 96,7, 8, 9, 10, 11, 12, 95} ,id = 8 ,                                                                                                                                                                                    words = 'barrier' ,                      exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'barrier' ,         	            mana = 50 ,             level = 10 ,  soul = 0 , group = {[1] = 1000} ,tp = 15 },
    ['Big Bang Attack'] =              { vocations = {7, 8, 9, 10, 11, 12, 95} ,id = 9 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'big bang attack' ,              exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'big bang attack' ,              mana = 510 ,            level = 30 ,  soul = 0 , group = {[1] = 1000} ,tp = 50  } ,
    ['Final Flash'] =                  { vocations = {29, 30, 31, 32, 33, 34, 99,7, 8, 9, 10, 11, 12, 95} ,id = 10 ,                                                                                                                                                                                                                                                                                                                                                                              words = 'final flash' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'final flash' ,                  mana = 820 ,            level = 65 ,  soul = 0 , group = {[1] = 1000} ,tp = 85 }  ,
    ['Explosion'] =    			       { vocations = {35, 36, 37, 38, 39, 40, 100,7, 8, 9, 10, 11, 12, 95} ,id = 11 ,                                                                                                                                                                                                                                                                                                                                                                             words = 'explosion' ,        	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'explosion' ,    		        mana = 2000 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 }  ,
    ['Final Shine'] =                  { vocations = {7, 8, 9, 10, 11, 12, 95} ,id = 12 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'final shine' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'final shine' ,                  mana = 2120 ,           level = 150 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Seeker Blast'] =                 { vocations = {64, 65, 66, 67, 68, 69, 70,13, 14, 15, 16, 17, 18, 96} ,id = 13 ,                                                                                                                                                                                                                                                                                                                                                                              words = 'seeker blast' ,                 exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'seeker blast' ,                 mana = 300 ,            level = 30 ,  soul = 0 , group = {[1] = 1000} ,tp = 50 } ,
	['Tsubi Kikouha'] =                { vocations = {13, 14, 15, 16, 17, 18, 96} ,id = 14 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'tsubi kikouha' ,                exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'tsubi kikouha' ,                mana = 500 ,            level = 55 ,  soul = 0 , group = {[1] = 1000} ,tp = 75 } ,
    ['Shogekiha'] =                    { vocations = {13, 14, 15, 16, 17, 18, 96,64, 65, 66, 67, 68, 69, 70} ,id = 15 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'shogekiha' ,      	             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'shogekiha' ,                    mana = 1050 ,           level = 70 ,  soul = 0 , group = {[1] = 1000} ,tp = 90 } ,
    ['Renzoku Kikouha'] =              { vocations = {13, 14, 15, 16, 17, 18, 96} ,id = 16 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'renzoku kikouha' ,              exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'renzoku kikouha' ,              mana = 1300 ,           level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 100 } ,
    ['Bakuhatsuha'] =                  { vocations = {13, 14, 15, 16, 17, 18, 96} ,id = 17 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'bakuhatsuha' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'bakuhatsuha' ,                  mana = 2200 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Masenko'] =                      { vocations = {24, 25, 26, 27, 28, 98,19, 20, 21, 22, 23, 97} ,id = 18 ,                                                                                                                                                                                                                                                                                                                                                                                   words = 'masenko' ,                      exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'masenko' ,                      mana = 275 ,            level = 30 ,  soul = 0 , group = {[1] = 1000} ,tp = 50 }  ,
	['Bakurikimacha'] =                { vocations = {89, 90, 91, 92, 93, 108, 19, 20, 21, 22, 23, 97} ,id = 19 ,                                                                                                                                                                                                                                                                                                                                                                                  words = 'bakurikimacha' ,                exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'bakurikimacha' ,  	            mana = 920 ,            level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 95 } ,
    ['One Hand Kamehameha'] =          { vocations = {19, 20, 21, 22, 23, 97} ,id = 20 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'one hand kamehameha' ,          exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'one hand kamehameha' ,          mana = 1650 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Uncontroled Rage'] =             { vocations = {24, 25, 26, 27, 28, 98,19, 20, 21, 22, 23, 97} ,id = 21 ,                                                                                                                                                                                                                                                                                                                                                                                   words = 'uncontroled Rage' ,             exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'uncontroled rage' ,             mana = 5000 ,           level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 } ,
    ['Burning Attack'] =               { vocations = {24, 25, 26, 27, 28, 98} ,id = 22 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'burning attack' ,               exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'burning attack' ,               mana = 450 ,            level = 45 ,  soul = 0 , group = {[1] = 1000} ,tp = 65 } ,
    ['Final Slash'] =                  { vocations = {24, 25, 26, 27, 28, 98} ,id = 23 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'final slash' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'final slash' ,                  mana = 350 ,            level = 60 ,  soul = 0 , group = {[1] = 1000} ,tp = 80 } ,
    ['Finish Buster'] =                { vocations = {24, 25, 26, 27, 28, 98} ,id = 24 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'finish buster' ,                exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'finish buster' ,                mana = 1200 ,           level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 100 } ,
    ['Burning Expansion'] =            { vocations = {24, 25, 26, 27, 28, 98} ,id = 25 ,                                                                                                                                                                                                                                                                                                                                                                                                          words = 'burning expansion' ,            exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'burning expansion' ,            mana = 2150 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Regeneration'] =                 { vocations = {89, 90, 91, 92, 93, 108,84, 85, 86, 87, 88, 107,53, 54, 55, 56, 57, 58, 103,35, 36, 37, 38, 39, 40, 100,29, 30, 31, 32, 33, 34, 99} ,id = 26 ,                                                                                                                                                                                                                                                                                              words = 'regeneration' ,   		         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'regeneration' ,                 mana = 250 ,            level = 15 ,  soul = 0 , group = {[1] = 1000} ,tp = 35 } ,
    ['Power Beam'] =                   { vocations = {29, 30, 31, 32, 33, 34, 99} ,id = 27 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'power beam' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'power beam' ,                   mana = 300 ,            level = 25 ,  soul = 0 , group = {[1] = 1000} ,tp = 45 } ,
    ['Death Ball'] =                   { vocations = {64, 65, 66, 67, 68, 69, 70,47, 48, 49, 50, 51, 52, 102,41, 42, 43, 44, 45, 46, 101,29, 30, 31, 32, 33, 34, 99} ,id = 28 ,                                                                                                                                                                                                                                                                                                                   words = 'death ball' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'death ball' ,                   mana = 1350 ,           level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 100 },
    ['Evil Energy'] =                  { vocations = {47, 48, 49, 50, 51, 52, 102, 29, 30, 31, 32, 33, 34, 99} ,id = 29 ,                                                                                                                                                                                                                                                                                                                                                                          words = 'evil energy' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'evil energy' ,                  mana = 1600 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 }  ,
    ['Mind Control'] =                 { vocations = {29, 30, 31, 32, 33, 34, 99} ,id = 30 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'mind control' ,                 exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'mind control' ,                 mana = 900 ,            level = 110 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Meteo Self'] =                   { vocations = {29, 30, 31, 32, 33, 34, 99} ,id = 31 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'meteo self' ,  		         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'meteo self' ,                   mana = 3100 ,           level = 220 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Sharp Skin'] =                   { vocations = {35, 36, 37, 38, 39, 40, 100,29, 30, 31, 32, 33, 34, 99} ,id = 32 ,                                                                                                                                                                                                                                                                                                                                                                          words = 'sharp skin' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'sharp skin' ,                   mana = 0 ,              level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 }  ,
    ['Kienzan'] =        		       { vocations = {77, 78, 79, 80, 81, 82, 106,71, 72, 73, 74, 75, 76, 105,53, 54, 55, 56, 57, 58, 103,47, 48, 49, 50, 51, 52, 102,41, 42, 43, 44, 45, 46, 101,35, 36, 37, 38, 39, 40, 100} ,id = 33 ,                                                                                                                                                                                                                                                         words = 'kienzan' ,      		         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kienzan' ,        	            mana = 250 ,            level = 20 ,  soul = 0 , group = {[1] = 1000} ,tp = 40 }  ,
    ['Makanokosappo'] =                { vocations = {89, 90, 91, 92, 93, 108, 35, 36, 37, 38, 39, 40, 100} ,id = 35 ,                                                                                                                                                                                                                                                                                                                                                                             words = 'makanokosappo' ,                exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'makanokosappo' ,                mana = 970 ,            level = 60 ,  soul = 0 , group = {[1] = 1000} ,tp = 80 } ,  
    ['Eye Layzers'] =     	           { vocations = {84, 85, 86, 87, 88, 107, 89, 90, 91, 92, 93, 108,77, 78, 79, 80, 81, 82, 106,71, 72, 73, 74, 75, 76, 105,64, 65, 66, 67, 68, 69, 70,53, 54, 55, 56, 57, 58, 103,47, 48, 49, 50, 51, 52, 102,41, 42, 43, 44, 45, 46, 101,35, 36, 37, 38, 39, 40, 100} ,id = 38 ,                                                                                                                                                                                                         words = 'eye layzers' ,       	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'eye layzers' ,  	            mana = 700 ,            level = 35 ,  soul = 0 , group = {[1] = 1000} ,tp = 55 },
    ['Taiyoken'] =                     { vocations = {77, 78, 79, 80, 81, 82, 106, 71, 72, 73, 74, 75, 76, 105, 35, 36, 37, 38, 39, 40, 100} ,id = 36 ,                                                                                                                                                                                                                                                                                                                                             words = 'taiyoken' ,  			         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'taiyoken' ,                     mana = 1250 ,           level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 100 }  ,
    ['Destructo Disk'] =               { vocations = {35, 36, 37, 38, 39, 40, 100} ,id = 37 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'destructo disk' ,               exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'destructo disk' ,               mana = 2750 ,           level = 190 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Tsubi Kienzan'] =                { vocations = {47, 48, 49, 50, 51, 52, 102, 41, 42, 43, 44, 45, 46, 101} ,id = 39 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'tsubi kienzan' ,                exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'tsubi kienzan' ,                mana = 380 ,            level = 25 ,  soul = 0 , group = {[1] = 1000} ,tp = 45 }  ,
    ['Supernova'] =                    { vocations = {41, 42, 43, 44, 45, 46, 101} ,id = 40 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'supernova' ,      	             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'supernova' ,     	            mana = 1750 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Death Beam'] =                   { vocations = {47, 48, 49, 50, 51, 52, 102, 41, 42, 43, 44, 45, 46, 101} ,id = 41 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'death beam' ,        	     	 exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'death beam' ,   		        mana = 2000 ,           level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 } ,
    ['Henka Beam'] =                   { vocations = {53, 54, 55, 56, 57, 58, 103} ,id = 42 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'henka beam' ,        	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'henka beam' ,                   mana = 700 ,            level = 60 ,  soul = 0 , group = {[1] = 1000} ,tp = 80 } ,
    ['Udebunrikoge Ki'] =              { vocations = {53, 54, 55, 56, 57, 58, 103} ,id = 43 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'udebunrik   oge ki' ,   	     exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'udebunrikoge ki' ,              mana = 800 ,            level = 70 ,  soul = 0 , group = {[1] = 1000} ,tp = 90 } ,
    ['Genocide Attack'] =              { vocations = {53, 54, 55, 56, 57, 58, 103} ,id = 44 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'genocide attack' ,              exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'genocide attack' ,              mana = 1800 ,           level = 90 ,  soul = 0 , group = {[1] = 1000} ,tp = 110 } ,
    ['Curse Healing'] =                { vocations = {53, 54, 55, 56, 57, 58, 103} ,id = 45 ,                                                                                                                                                                                                                                                                                                                                                                                                     words = 'curse healing' ,                exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'curse healing' ,                mana = 2600 ,          level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 } ,
    ['Negative Karma Ball'] =          { vocations = {64, 65, 66, 67, 68, 69, 70} ,id = 46 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'negative karma ball' ,          exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'negative karma ball' ,          mana = 1550 ,           level = 90 ,  soul = 0 , group = {[1] = 1000} ,tp = 110 } ,
    ['Omega Blow'] =  			       { vocations = {64, 65, 66, 67, 68, 69, 70} ,id = 47 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'omega blow' ,        	         exhaustion = 30000 , premium = false ,  type = 'Instant' , icon = 'omega blow' ,  		            mana = "40%" ,          level = 120 , soul = 0 , group = {[1] = 1000} ,tp = 115 } ,
    ['Demon Death Ball'] =             { vocations = {59, 60, 61, 62, 63, 104} ,id = 48 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'demon death ball' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'demon death ball' ,             mana = 2040 ,           level = 140 , soul = 0 , group = {[1] = 1000} ,tp = 130 } ,
    ['Super Charge'] =                 { vocations = {64, 65, 66, 67, 68, 69, 70, 59, 60, 61, 62, 63, 104} ,id = 49 ,                                                                                                                                                                                                                                                                                                                                                                              words = 'super charge' ,                 exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'super charge' ,                 mana = 2300 ,           level = 200 , soul = 0 , group = {[1] = 30000},tp = 140 } , 
    ['Usuale Rage'] =                  { vocations = {59, 60, 61, 62, 63, 104} ,id = 50 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'usuale rage' ,                  exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'usuale rage' ,                  mana = 160 ,            level = 20 ,  soul = 0 , group = {[1] = 1000} ,tp = 20 } ,
    ['Ki Sword'] =                     { vocations = {59, 60, 61, 62, 63, 104} ,id = 51 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'ki sword' ,                     exhaustion = 1000  , premium = false ,  type = 'Conjure' , icon = 'ki sword' ,                     mana = 520 ,            level = 25 ,  soul = 0 , group = {[1] = 1000} ,tp = 45 } ,
    ['Kuukanteni Punch'] =             { vocations = {59, 60, 61, 62, 63, 104} ,id = 52 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'kuukanteni punch' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kuukanteni punch' ,             mana = 450 ,            level = 30 ,  soul = 0 , group = {[1] = 1000} ,tp = 50 } ,
    ['Cube Fade'] =        	           { vocations = {59, 60, 61, 62, 63, 104} ,id = 53 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'cube fade' ,                    exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'cube fade' ,        	        mana = 720 ,            level = 40 ,  soul = 0 , group = {[1] = 1000} ,tp = 60 } ,
    ['Ikoukan Hatsusei'] =             { vocations = {59, 60, 61, 62, 63, 104} ,id = 54 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'ikoukan hatsusei' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'ikoukan hatsusei' ,             mana = 1500 ,           level = 60 ,  soul = 0 , group = {[1] = 1000} ,tp = 80 } ,
    ['Rapid Cannon'] =                 { vocations = {59, 60, 61, 62, 63, 104} ,id = 55 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'rapid cannon' ,                 exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'rapid cannon' ,                 mana = 900 ,            level = 70 ,  soul = 0 , group = {[1] = 1000} ,tp = 90 } ,
    ['Nendouriki'] =                   { vocations = {59, 60, 61, 62, 63, 104} ,id = 56 ,                                                                                                                                                                                                                                                                                                                                                                                                      words = 'nendouriki' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'nendouriki' ,                   mana = 2500 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 120 } ,
    ['Eletric Death Ball'] =           { vocations = {77, 78, 79, 80, 81, 82, 106} ,id = 57 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'eletric death ball' ,           exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'eletric death ball' ,           mana = 1950 ,           level = 120 , soul = 0 , group = {[1] = 1000} ,tp = 120 }   ,
    ['Repair'] =             	       { vocations = {77, 78, 79, 80, 81, 82, 106, 71, 72, 73, 74, 75, 76, 105} ,id = 58 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'repair' ,    			         exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'repair' ,            	        mana = 3000 ,           level = 200 , soul = 0 , group = {[2] = 60000},tp = 140 }  , 
    ['Sokidan'] =          	           { vocations = {77, 78, 79, 80, 81, 82, 106, 71, 72, 73, 74, 75, 76, 105} ,id = 59 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'sokidan' ,                      exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'sokidan' ,          	        mana = 780 ,            level = 125 , soul = 0 , group = {[1] = 1000} ,tp = 110 } ,
    ['Heal Friends'] =                 { vocations = {84, 85, 86, 87, 88, 107} ,id = 60 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'heal friends' ,                 exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'heal friends' ,                 mana = 810 ,            level = 35 ,  soul = 0 , group = {[1] = 1000} ,tp = 10 } ,
    ['Heal Friend'] =     	           { vocations = {84, 85, 86, 87, 88, 107} ,id = 61 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'heal friend (nickname)' ,       exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'heal friend (nickname)',        mana = 1240 ,           level = 40 ,  soul = 0 , group = {[1] = 1000} ,tp = 10 } ,
    ['Sai Sei'] =                      { vocations = {84, 85, 86, 87, 88, 107} ,id = 62 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'sai sei' ,            	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'sai sei' ,                      mana = 720 ,            level = 50 ,  soul = 0 , group = {[1] = 1000} ,tp = 70 } ,
    ['Makosen'] =                      { vocations = {84, 85, 86, 87, 88, 107} ,id = 63 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'makosen' ,                      exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'makosen' ,                      mana = 650 ,            level = 55 ,  soul = 0 , group = {[1] = 1000} ,tp = 75 } ,
    ['Bakurikimacha'] =                { vocations = {84, 85, 86, 87, 88, 107} ,id = 64 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'bakurikimach' ,       	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'bakurikimacha' ,                mana = 920 ,            level = 80 ,  soul = 0 , group = {[1] = 1000} ,tp = 95 } ,
    ['Tsuihidan'] =                    { vocations = {84, 85, 86, 87, 88, 107} ,id = 65 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'tsuihidan' ,                    exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'tsuihidan' ,                    mana = 2000 ,           level = 90 ,  soul = 0 , group = {[1] = 1000} ,tp = 110 } , 
    ['Mafuba'] =                       { vocations = {84, 85, 86, 87, 88, 107} ,id = 66 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'mafuba' ,             	         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'mafuba' ,                       mana = 1800 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 125 },
    ['Chobakuretsumaha'] =             { vocations = {89, 90, 91, 92, 93, 108, 84, 85, 86, 87, 88, 107} ,id = 67 ,                                                                                                                                                                                                                                                                                                                                                                                 words = 'chobakuretsumaha' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'chobakuretsumaha' ,             mana = 1500 ,           level = 120 , soul = 0 , group = {[1] = 1000} ,tp = 130 },
    ['Namek Furie'] =                  { vocations = {89, 90, 91, 92, 93, 108, 84, 85, 86, 87, 88, 107} ,id = 68 ,                                                                                                                                                                                                                                                                                                                                                                                 words = 'namek furie' ,       	         exhaustion = 60000 , premium = false ,  type = 'Instant' , icon = 'namek furie' ,                  mana = 2000 ,           level = 200 , soul = 0 , group = {[1] = 1000} ,tp = 130 },
    ['Kakusanyudokodan'] =             { vocations = {89, 90, 91, 92, 93, 108} ,id = 69 ,                                                                                                                                                                                                                                                                                                                                                                                                         words = 'kakusanyudokodan' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kakusanyudokodan' ,             mana = 2100 ,           level = 100 , soul = 0 , group = {[1] = 1000} ,tp = 125 },
    ['Power Down'] =                   { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 70 ,     words = 'power down' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'power down' ,                   mana = 0 ,              level = 1 ,   soul = 0 , group = {[1] = 1000} ,tp = 0 },
    ['Power Up'] =                     { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 71 ,     words = 'power up' ,       		         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'power up' ,                     mana = 0 ,              level = 1 ,   soul = 0 , group = {[1] = 1000} ,tp = 0 },
    ['Aura'] =            	           { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 72 ,     words = 'aura' ,                         exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'aura' ,                         mana = 50 ,             level = 1 ,   soul = 0 , group = {[1] = 1000} ,tp = 0 },
    ['Ki Blast'] =                     { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 73 ,     words = 'ki blast' ,                     exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'ki blast' ,                     mana = 80 ,             level = 1 ,   soul = 0 , group = {[1] = 1000} ,tp = 0 },
    ['Kaioken'] =                      { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 74 ,     words = 'kaioken' ,                      exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kaioken' ,                      mana = "% of max" ,     level = 1 ,   soul = 0 , group = {[1] = 1000} ,tp = 10 },
    ['Bukujutsu'] =                    { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 75 ,     words = 'bukujutsu' ,                    exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'bukujutsu' ,                    mana = 260 ,            level = 15 ,  soul = 0 , group = {[1] = 1000} ,tp = 35 },
    ['Sense'] =             	       { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 76 ,     words = 'sense (nick)' ,                 exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'sense (nick)' ,                 mana = 320 ,            level = 25 ,  soul = 0 , group = {[1] = 1000} ,tp = 10 },
    ['Gran Aura'] =                    { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 77 ,     words = 'gran aura' ,                    exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'gran aura' ,                    mana = 280 ,            level = 40 ,  soul = 0 , group = {[1] = 1000} ,tp = 60 },
    ['Zanzoken'] =                     { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 78 ,     words = 'PPM Click' ,                     exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'zanzoken' ,                     mana = 450 ,            level = 50 ,  soul = 0 , group = {[1] = 1000} ,tp = 10 },
    ['Kamehameha'] =                   { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 79 ,     words = 'kamehameha' ,                   exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'kamehameha' ,                   mana = 550 ,            level = 50 ,  soul = 0 , group = {[1] = 1000} ,tp = 75 },
    ['Super Kamehameha'] =             { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 80 ,     words = 'super kamehameha' ,             exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'super kamehameha' ,             mana = 1650 ,           level = 170 , soul = 0 , group = {[1] = 1000} ,tp = 135 },
    ['Instant Transmission'] =  { vocations = {1, 2, 3, 4, 5, 6, 94,7, 8, 9, 10, 11, 12, 95,13, 14, 15, 16, 17, 18, 96,19, 20, 21, 22, 23, 97,24, 25, 26, 27, 28, 98,29, 30, 31, 32, 33, 34, 99,35, 36, 37, 38, 39, 40, 100,41, 42, 43, 44, 45, 46, 101,47, 48, 49, 50, 51, 52, 102,53, 54, 55, 56, 57, 58, 103,59, 60, 61, 62, 63, 104,64, 65, 66, 67, 68, 69, 70,71, 72, 73, 74, 75, 76, 105,77, 78, 79, 80, 81, 82, 106,84, 85, 86, 87, 88, 107,89, 90, 91, 92, 93, 108} ,id = 81 ,     words = 'instant transmission (nick)' ,  exhaustion = 30000 , premium = false ,  type = 'Instant' , icon = 'instant transmission (nick)',   mana = 5000 ,           level = 125 , soul = 0 , group = {[3] = 30000},tp = 125 },
    ['Provoke'] =                      { vocations = {29, 30, 31, 32, 33, 34, 99, 35, 36, 37, 38, 39, 40, 100, 53, 54, 55, 56, 57, 58, 103, 59, 60, 61, 62, 63, 104, 64, 65, 66, 67, 68, 69, 70, 89, 90, 91, 92, 93, 108}																																																													 ,id = 82 ,     words = 'provoke' ,                      exhaustion = 350   , premium = false ,  type = 'Instant' , icon = 'provoke' ,                      mana = 500 ,            level = 100 , soul = 0 , group = {[1] = 350}  ,tp = 10 },
    ['Shock Storm'] =           { vocations = {71, 72, 73, 74, 75, 76, 105} ,id = 83 ,                                                                                                                                                                                                                                                                                                                                                                         words = 'shock storm' ,           exhaustion = 1000  , premium = false ,  type = 'Instant' , icon = 'shock storm' ,           mana = 1950 ,           level = 120 , soul = 0 , group = {[1] = 1000} ,tp = 120 } 

  }--[[,

  ['Sample'] = {
    ['Wind Walk'] =                {id = 1, words = 'windwalk',        description = 'Run at enormous speed.',          exhaustion = 2000,  premium = false, type = 'Instant', icon = 1,  mana = 50,     level = 10, soul = 0, group = {[3] = 2000}, vocations = {1, 2}},
    ['Fire Breath'] =              {id = 2, words = 'firebreath',      description = 'A strong firewave.',              exhaustion = 2000,  premium = false, type = 'Instant', icon = 2,  mana = 350,    level = 27, soul = 0, group = {[1] = 2000}, vocations = {4, 8}},
    ['Moonglaives'] =              {id = 3, words = 'moonglaives',     description = 'Throw moonglaives around you.',   exhaustion = 2000,  premium = false, type = 'Instant', icon = 3,  mana = 90,     level = 55, soul = 0, group = {[1] = 2000}, vocations = {3, 7}},
    ['Critical Strike'] =          {id = 4, words = 'criticalstrike',  description = 'Land a critical strike.',         exhaustion = 2000,  premium = false, type = 'Instant', icon = 4,  mana = 350,    level = 27, soul = 0, group = {[1] = 2000}, vocations = {3, 4, 7, 8}},
    ['Firefly'] =                  {id = 5, words = 'firefly',         description = 'Summon a angry firefly',          exhaustion = 2000,  premium = false, type = 'Instant', icon = 5,  mana = 350,    level = 27, soul = 0, group = {[1] = 2000}, vocations = {1, 2, 5, 6}}
  }]]
}

-- ['const_name'] =       {client_id, TFS_id}
-- Conversion from TFS icon id to the id used by client (icons.png order)
SpellIcons = {
  ['intenserecovery']           = {16, 160},
  ['recovery']                  = {15, 159},
  ['intensewoundcleansing']     = {4, 158},
  ['ultimateterrastrike']       = {37, 157},
  ['ultimateicestrike']         = {34, 156},
  ['ultimateenergystrike']      = {31, 155},
  ['ultimateflamestrike']       = {28, 154},
  ['strongterrastrike']         = {36, 153},
  ['strongicestrike']           = {33, 152},
  ['strongenergystrike']        = {30, 151},
  ['strongflamestrike']         = {27, 150},
  ['lightning']                 = {51, 149},
  ['physicalstrike']            = {17, 148},
  ['curecurse']                 = {11, 147},
  ['curseelectrification']      = {14, 146},
  ['cureburning']               = {13, 145},
  ['curebleeding']              = {12, 144},
  ['holyflash']                 = {53, 143},
  ['envenom']                   = {58, 142},
  ['inflictwound']              = {57, 141},
  ['electrify']                 = {56, 140},
  ['curse']                     = {54, 139},
  ['ignite']                    = {55, 138},
  -- [[ 136 / 137 Unknown ]]
  ['sharpshooter']              = {121, 135},
  ['swiftfoot']                 = {119, 134},
  ['bloodrage']                 = {96, 133},
  ['protector']                 = {122, 132},
  ['charge']                    = {98, 131},
  ['holymissile']               = {76, 130},
  ['enchantparty']              = {113, 129},
  ['healparty']                 = {126, 128},
  ['protectparty']              = {123, 127},
  ['trainparty']                = {120, 126},
  ['divinehealing']             = {2, 125},
  ['divinecaldera']             = {40, 124},
  ['woundcleansing']            = {3, 123},
  ['divinemissile']             = {39, 122},
  ['icewave']                   = {45, 121},
  ['terrawave']                 = {47, 120},
  ['rageoftheskies']            = {52, 119},
  ['eternalwinter']             = {50, 118},
  ['thunderstorm']              = {63, 117},
  ['stoneshower']               = {65, 116},
  ['avalanche']                 = {92, 115},
  ['icicle']                    = {75, 114},
  ['terrastrike']               = {35, 113},
  ['icestrike']                 = {32, 112},
  ['etherealspear']             = {18, 111},
  ['enchantspear']              = {104, 110},
  ['piercingbolt']              = {110, 109},
  ['sniperarrow']               = {112, 108},
  ['whirlwindthrow']            = {19, 107},
  ['groundshaker']              = {25, 106},
  ['fierceberserk']             = {22, 105},
  -- [[ 96 - 104 Unknown ]]
  ['powerbolt']                 = {108, 95},
  ['wildgrowth']                = {61, 94},
  ['challenge']                 = {97, 93},
  ['enchantstaff']              = {103, 92},
  ['poisonbomb']                = {70, 91},
  ['cancelinvisibility']        = {95, 90},
  ['flamestrike']               = {26, 89},
  ['energystrike']              = {29, 88},
  ['deathstrike']               = {38, 87},
  ['magicwall']                 = {72, 86},
  ['healfriend']                = {8, 84},
  ['animatedead']               = {93, 83},
  ['masshealing']               = {9, 82},
  ['levitate']                  = {125, 81},
  ['berserk']                   = {21, 80},
  ['conjurebolt']               = {107, 79},
  ['desintegrate']              = {88, 78},
  ['stalagmite']                = {66, 77},
  ['magicrope']                 = {105, 76},
  ['ultimatelight']             = {115, 75},
  -- [[ 71 - 64 TFS House Commands ]]
  -- [[ 63 - 70 Unknown ]]
  ['annihilation']              = {24, 62},
  ['brutalstrike']              = {23, 61},
  -- [[ 60 Unknown ]]
  ['frontsweep']                = {20, 59},
  -- [[ 58 Unknown ]]
  ['strongetherealspear']       = {59, 57},
  ['wrathofnature']             = {48, 56},
  ['energybomb']                = {86, 55},
  ['paralyze']                  = {71, 54},
  --  [[ 53 Unknown ]]
  --  [[ 52 TFS Retrieve Friend ]]
  ['conjurearrow']              = {106, 51},
  ['soulfire']                  = {67, 50},
  ['explosivearrow']            = {109, 49},
  ['poisonedarrow']             = {111, 48},
  -- [[ 46 / 47 Unknown ]]
  ['invisible']                 = {94, 45},
  ['magicshield']               = {124, 44},
  ['strongicewave']             = {46, 43},
  ['food']                      = {99, 42},
  -- [[ 40 / 41 Unknown ]]
  ['stronghaste']               = {102, 39},
  ['creatureillusion']          = {100, 38},
  -- [[ 37 TFS Move ]]
  ['salvation']                 = {60, 36},
  -- [[ 34 / 35 Unknown ]]
  ['energywall']                = {84, 33},
  ['poisonwall']                = {68, 32},
  ['antidote']                  = {10, 31},
  ['destroyfield']              = {87, 30},
  ['curepoison']                = {10, 29},
  ['firewall']                  = {80, 28},
  ['energyfield']               = {85, 27},
  ['poisonfield']               = {69, 26},
  ['firefield']                 = {81, 25},
  ['hellscore']                 = {49, 24},
  ['greatenergybeam']           = {42, 23},
  ['energybeam']                = {41, 22},
  ['suddendeath']               = {64, 21},
  ['findperson']                = {114, 20},
  ['firewave']                  = {44, 19},
  ['explosion']                 = {83, 18},
  ['firebomb']                  = {82, 17},
  ['greatfireball']             = {78, 16},
  ['fireball']                  = {79, 15},
  ['chameleon']                 = {91, 14},
  ['energywave']                = {43, 13},
  ['convincecreature']          = {90, 12},
  ['greatlight']                = {116, 11},
  ['light']                     = {117, 10},
  ['summoncreature']            = {118, 9},
  ['heavymagicmissile']         = {77, 8},
  ['lightmagicmissile']         = {73, 7},
  ['haste']                     = {101, 6},
  ['ultimatehealingrune']       = {62, 5},
  ['intensehealingrune']        = {74, 4},
  ['ultimatehealing']           = {1, 3},
  ['intensehealing']            = {7, 2},
  ['lighthealing']              = {6, 1}
}

VocationNames = {
  [1] = 'Sorcerer',
  [2] = 'Druid',
  [3] = 'Paladin',
  [4] = 'Knight',
  [5] = 'Master Sorcerer',
  [6] = 'Elder Druid',
  [7] = 'Royal Paladin',
  [8] = 'Elite Knight',
[9] = 'Sorcerer',
[10] = 'Sorcerer',
[11] = 'Sorcerer',
[12] = 'Sorcerer',
[13] = 'Sorcerer',
[14] = 'Sorcerer',
[15] = 'Sorcerer',
[16] = 'Sorcerer',
[17] = 'Sorcerer',
[18] = 'Sorcerer',
[19] = 'Sorcerer',
[20] = 'Sorcerer',
[21] = 'Sorcerer',
[22] = 'Sorcerer',
[23] = 'Sorcerer',
[24] = 'Sorcerer',
[25] = 'Sorcerer',
[26] = 'Sorcerer',
[27] = 'Sorcerer',
[28] = 'Sorcerer',
[29] = 'Sorcerer',
[30] = 'Sorcerer',
[31] = 'Sorcerer',
[32] = 'Sorcerer',
[33] = 'Sorcerer',
[34] = 'Sorcerer',
[35] = 'Sorcerer',
[36] = 'Sorcerer',
[37] = 'Sorcerer',
[38] = 'Sorcerer',
[39] = 'Sorcerer',
[40] = 'Sorcerer',
[41] = 'Sorcerer',
[42] = 'Sorcerer',
[43] = 'Sorcerer',
[44] = 'Sorcerer',
[45] = 'Sorcerer',
[46] = 'Sorcerer',
[47] = 'Sorcerer',
[48] = 'Sorcerer',
[49] = 'Sorcerer',
[50] = 'Sorcerer',
[51] = 'Sorcerer',
[52] = 'Sorcerer',
[53] = 'Sorcerer',
[54] = 'Sorcerer',
[55] = 'Sorcerer',
[56] = 'Sorcerer',
[57] = 'Sorcerer',
[58] = 'Sorcerer',
[59] = 'Sorcerer',
[60] = 'Sorcerer',
[61] = 'Sorcerer',
[62] = 'Sorcerer',
[63] = 'Sorcerer',
[64] = 'Sorcerer',
[65] = 'Sorcerer',
[66] = 'Sorcerer',
[67] = 'Sorcerer',
[68] = 'Sorcerer',
[69] = 'Sorcerer',
[70] = 'Sorcerer',
[71] = 'Sorcerer',
[72] = 'Sorcerer',
[73] = 'Sorcerer',
[74] = 'Sorcerer',
[75] = 'Sorcerer',
[76] = 'Sorcerer',
[77] = 'Sorcerer',
[78] = 'Sorcerer',
[79] = 'Sorcerer',
[80] = 'Sorcerer',
[81] = 'Sorcerer',
[82] = 'Sorcerer',
[83] = 'Sorcerer',
[84] = 'Sorcerer',
[85] = 'Sorcerer',
[86] = 'Sorcerer',
[87] = 'Sorcerer',
[88] = 'Sorcerer',
[89] = 'Sorcerer',
[90] = 'Sorcerer',
[91] = 'Sorcerer',
[92] = 'Sorcerer',
[93] = 'Sorcerer',
[94] = 'Sorcerer',
[95] = 'Sorcerer',
[96] = 'Sorcerer',
[97] = 'Sorcerer',
[98] = 'Sorcerer',
[99] = 'Sorcerer',
[100] = 'Sorcerer',
[101] = 'Sorcerer',
[102] = 'Sorcerer',
[103] = 'Sorcerer',
[104] = 'Sorcerer',
[105] = 'Sorcerer',
[106] = 'Sorcerer',
[107] = 'Sorcerer',
[108] = 'Sorcerer',
[109] = 'Sorcerer',
[110] = 'Sorcerer'

}

SpellGroups = {
  [1] = 'Attack',
  [2] = 'Healing',
  [3] = 'Support',
  [4] = 'Special'
}

Spells = {}

function Spells.getClientId(spellName)
  local profile = Spells.getSpellProfileByName(spellName)

  local id = SpellInfo[profile][spellName].icon
  if not tonumber(id) and SpellIcons[id] then
    return SpellIcons[id][1]
  end
  return tonumber(id)
end

function Spells.getServerId(spellName)
  local profile = Spells.getSpellProfileByName(spellName)

  local id = SpellInfo[profile][spellName].icon
  if not tonumber(id) and SpellIcons[id] then
    return SpellIcons[id][2]
  end
  return tonumber(id)
end

function Spells.getSpellByName(name)
  return SpellInfo[Spells.getSpellProfileByName(name)][name]
end

function Spells.getSpellByWords(words)
  local words = words:lower():trim()
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      if spell.words == words then
        return spell, profile, k
      end
    end
  end
  return nil
end

function Spells.getSpellByIcon(iconId)
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      if spell.id == iconId then
        return spell, profile, k
      end
    end
  end
  return nil
end

function Spells.getSpellIconIds()
  local ids = {}
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      table.insert(ids, spell.id)
    end
  end
  return ids
end

function Spells.getSpellProfileById(id)
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      if spell.id == id then
        return profile
      end
    end
  end
  return nil
end

function Spells.getSpellProfileByWords(words)
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      if spell.words == words then
        return profile
      end
    end
  end
  return nil
end

function Spells.getSpellProfileByName(spellName)
  for profile,data in pairs(SpellInfo) do
    if table.findbykey(data, spellName:trim(), true) then
      return profile
    end
  end
  return nil
end

function Spells.getSpellsByVocationId(vocId)
  local spells = {}
  for profile,data in pairs(SpellInfo) do
    for k,spell in pairs(data) do
      if table.contains(spell.vocations, vocId) then
        table.insert(spells, spell)
      end
    end
  end
  return spells
end

function Spells.filterSpellsByGroups(spells, groups)
  local filtered = {}
  for v,spell in pairs(spells) do
    local spellGroups = Spells.getGroupIds(spell)
    if table.equals(spellGroups, groups) then
      table.insert(filtered, spell)
    end
  end
  return filtered
end

function Spells.getGroupIds(spell)
  local groups = {}
  for k,_ in pairs(spell.group) do
    table.insert(groups, k)
  end
  return groups
end

function Spells.getImageClip(id, profile)
  return (((id-1)%12)*SpelllistSettings[profile].iconSize.width) .. ' ' 
    .. ((math.ceil(id/12)-1)*SpelllistSettings[profile].iconSize.height) .. ' ' 
    .. SpelllistSettings[profile].iconSize.width .. ' ' 
    .. SpelllistSettings[profile].iconSize.height
end