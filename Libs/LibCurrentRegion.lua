-------------------------------------------------------
-- LibCurrentRegion
-- fyhcslb
-- Based on LibRealmInfo-10 (Phanx)
-- http://wow.curseforge.com/addons/librealminfo
-------------------------------------------------------
local _, addon = ...

local realmData = {
	[1136] = "US", --Aegwynn
	[1284] = "US", --Aerie Peak
	[1129] = "US", --Agamaggan
	[106]  = "US", --Aggramar
	[1137] = "US", --Akama
	[1070] = "US", --Alexstrasza
	[52]   = "US", --Alleria
	[1282] = "US", --Altar of 
	[1293] = "US", --Alterac Mountains
	[3722] = "US", --Aman'Thul -- US9 / new Oceanic datacenter
	[1418] = "US", -- -- Aman'Thul / old US datacenter
	[1276] = "US", --Andorhal
	[1264] = "US", --Anetheron
	[1363] = "US", --Antonidas
	[1346] = "US", --Anub'arak
	[1288] = "US", --Anvilmar
	[1165] = "US", --Arathor
	[56]   = "US", --Archimonde
	[1566] = "US", --Area 52
	[75]   = "US", --Argent Dawn
	[69]   = "US", --Arthas
	[1297] = "US", --Arygos
	[1555] = "US", --Auchindoun
	[77]   = "US", --Azgalor
	[121]  = "US", --Azjol-Nerub
	[3209] = "US", --Azralon
	[1128] = "US", --Azshara
	[1549] = "US", --Azuremyst
	[1190] = "US", --Baelgun
	[1075] = "US", --Balnazzar
	[3723] = "US", --Barthilas -- US9 / new Oceanic datacenter
	[1419] = "US", -- -- Barthilas / old US datacenter
	[1280] = "US", --Black Dragonflight
	[54]   = "US", --Blackhand
	[1168] = "US", -- -- Blackmoore
	[10]   = "US", --Blackrock
	[1347] = "US", --Blackwater Raiders
	[1296] = "US", --Blackwing Lair
	[1564] = "US", --Blade's 
	[1353] = "US", --Bladefist
	[73]   = "US", --Bleeding Hollow
	[1558] = "US", --Blood Furnace
	[64]   = "US", --Bloodhoof
	[119]  = "US", --Bloodscalp
	[83]   = "US", --Bonechewer
	[1371] = "US", --Borean Tundra
	[112]  = "US", --Boulderfist
	[117]  = "US", --Bronzebeard
	[91]   = "US", --Burning Blade
	[102]  = "US", --Burning Legion
	[3721] = "US", --Caelestrasz -- US9 / new Oceanic datacenter
	[1430] = "US", -- -- Caelestrasz / old US datacenter
	[1361] = "US", --Cairne
	[88]   = "US", --Cenarion Circle
	[2]    = "US", --Cenarius
	[1067] = "US", --Cho'gall
	[1138] = "US", --Chromaggus
	[1556] = "US", --Coilfang
	[107]  = "US", --Crushridge
	[109]  = "US", --Daggerspine
	[66]   = "US", --Dalaran
	[1278] = "US", --Dalvengyr
	[157]  = "US", --Dark Iron
	[120]  = "US", --Darkspear
	[1351] = "US", --Darrowmere
	[3735] = "US", --Dath'Remar -- US9 / new Oceanic datacenter
	[1434] = "US", -- -- Dath'Remar / old US datacenter
	[1582] = "US", --Dawnbringer
	[15]   = "US", --Deathwing
	[1286] = "US", --Demon 
	[1271] = "US", --Dentarg
	[79]   = "US", --Destromath
	[81]   = "US", --Dethecus
	[154]  = "US", --Detheroc
	[13]   = "US", --Doomhammer
	[115]  = "US", --Draenor
	[114]  = "US", --Dragonblight
	[84]   = "US", --Dragonmaw
	[1362] = "US", --Drak'Tharon
	[1140] = "US", --Drak'thul
	[1139] = "US", --Draka
	[1425] = "US", --Drakkari
	[3733] = "US", --Dreadmaul -- US9 / new Oceanic datacenter
	[1429] = "US", -- -- Dreadmaul / old US datacenter
	[1377] = "US", --Drenden
	[111]  = "US", --Dunemaul
	[63]   = "US", --Durotan
	[1258] = "US", --Duskwood
	[100]  = "US", --
	[1342] = "US", --
	[47]   = "US", --
	[123]  = "US", --
	[67]   = "US", --
	[162]  = "US", --
	[96]   = "US", --
	[93]   = "US", --
	[1277] = "US", --
	[1565] = "US", --
	[1370] = "US", --Farstriders
	[118]  = "US", --Feathermoon
	[1345] = "US", --Fenris
	[127]  = "US", --Firetree
	[1576] = "US", --Fizzcrank
	[128]  = "US", --Frostmane
	[3725] = "US", --Frostmourne -- US9 / new Oceanic datacenter
	[1133] = "US", -- -- Frostmourne / old US datacenter
	[7]    = "US", --Frostwolf
	[1581] = "US", --Galakrond
	[3234] = "US", --Gallywix
	[1141] = "US", --Garithos
	[51]   = "US", --Garona
	[1373] = "US", --Garrosh
	[1578] = "US", --Ghostlands
	[97]   = "US", --Gilneas
	[1287] = "US", --Gnomeregan
	[3207] = "US", --Goldrinn
	[92]   = "US", --Gorefiend
	[80]   = "US", --Gorgonnash
	[158]  = "US", --Greymane
	[1579] = "US", --Grizzly Hills
	[1068] = "US", --Gul'dan
	[3737] = "US", --Gundrak -- US9 / new Oceanic datacenter
	[1149] = "US", -- -- Gundrak / old US datacenter
	[129]  = "US", --Gurubashi
	[1142] = "US", --Hakkar
	[1266] = "US", --Haomarush
	[53]   = "US", --Hellscream
	[1368] = "US", --Hydraxis
	[6]    = "US", --Hyjal
	[14]   = "US", --Icecrown
	[57]   = "US", --Illidan
	[3661] = "US", -- -- Internal Record 3661
	[3675] = "US", -- -- Internal Record 3675
	[3676] = "US", -- -- Internal Record 3676
	[3677] = "US", -- -- Internal Record 3677
	[3678] = "US", -- -- Internal Record 3678
	[3683] = "US", -- -- Internal Record 3683
	[3684] = "US", -- -- Internal Record 3684
	[3685] = "US", -- -- Internal Record 3685
	[3693] = "US", -- -- Internal Record 3693
	[3694] = "US", -- -- Internal Record 3694
	[3695] = "US", -- -- Internal Record 3695 US9
	[3697] = "US", -- -- Internal Record 3697 US9
	[1291] = "US", --Jaedenar
	[3736] = "US", --Jubei'Thos -- US9 / new Oceanic datacenter
	[1144] = "US", -- -- Jubei'Thos / old US datacenter
	[1069] = "US", --Kael'thas
	[155]  = "US", --Kalecgos
	[98]   = "US", --Kargath
	[16]   = "US", --Kel'Thuzad
	[65]   = "US", --Khadgar
	[1143] = "US", --Khaz Modan
	[3726] = "US", --Khaz'goroth -- US9 / new Oceanic datacenter
	[1134] = "US", -- -- Khaz'goroth / old US datacenter
	[9]    = "US", --Kil'jaeden
	[4]    = "US", --Kilrogg
	[1071] = "US", --Kirin Tor
	[1146] = "US", --Korgath
	[1349] = "US", --Korialstrasz
	[1147] = "US", --Kul Tiras
	[101]  = "US", --Laughing 
	[1295] = "US", --Lethon
	[1]    = "US", --Lightbringer
	[95]   = "US", --Lightning's Blade
	[1130] = "US", --Lightninghoof
	[99]   = "US", --Llane
	[68]   = "US", --Lothar
	[1173] = "US", --Madoran
	[163]  = "US", --Maelstrom
	[78]   = "US", --Magtheridon
	[1357] = "US", --Maiev
	[59]   = "US", --Mal'Ganis
	[1132] = "US", --Malfurion
	[1148] = "US", --Malorne
	[104]  = "US", --Malygos
	[70]   = "US", --Mannoroth
	[62]   = "US", --Medivh
	[1350] = "US", --Misha
	[1374] = "US", --Mok'Nathal
	[1365] = "US", --Moon Guard
	[153]  = "US", --Moonrunner
	[1145] = "US", --Mug'thol
	[1182] = "US", --Muradin
	[3734] = "US", --Nagrand -- US9 / new Oceanic datacenter
	[1432] = "US", -- -- Nagrand / old US datacenter
	[89]   = "US", --Nathrezim
	[1169] = "US", -- -- Naxxramas
	[1367] = "US", --Nazgrel
	[1131] = "US", --Nazjatar
	[3208] = "US", --Nemesis
	[8]    = "US", --Ner'zhul
	[1375] = "US", --Nesingwary
	[1359] = "US", --Nordrassil
	[1262] = "US", --Norgannon
	[1285] = "US", --Onyxia
	[122]  = "US", --Perenolde
	[5]    = "US", --Proudmoore
	[1428] = "US", --Quel'Thalas
	[1372] = "US", --Quel'dorei
	[1427] = "US", --Ragnaros
	[1072] = "US", --Ravencrest
	[1352] = "US", --Ravenholdt
	[1151] = "US", --Rexxar
	[1358] = "US", --Rivendare
	[151]  = "US", --Runetotem
	[76]   = "US", --
	[3738] = "US", -- -- US9 / new Oceanic datacenter
	[1153] = "US", -- -- Saurfang / old US datacenter
	[126]  = "US", --
	[1267] = "US", --
	[1185] = "US", --
	[1290] = "US", --
	[125]  = "US", --
	[94]   = "US", --
	[85]   = "US", --
	[1364] = "US", --
	[1557] = "US", --
	[72]   = "US", --
	[1354] = "US", --
	[12]   = "US", --
	[86]   = "US", --
	[1356] = "US", --
	[74]   = "US", --
	[131]  = "US", --
	[130]  = "US", --
	[82]   = "US", --
	[124]  = "US", --
	[160]  = "US", --
	[1260] = "US", --
	[108]  = "US", --
	[60]   = "US", --
	[58]   = "US", --
	[110]  = "US", --
	[113]  = "US", --
	[1292] = "US", --Tanaris
	[90]   = "US", --Terenas
	[1563] = "US", --Terokkar
	[3724] = "US", --Thaurissan -- US9 / new Oceanic datacenter
	[1433] = "US", -- -- Thaurissan / old US datacenter
	[1344] = "US", --The Forgotten Coast
	[1570] = "US", --The 
	[1559] = "US", --The 
	[1289] = "US", --The Venture Co
	[1171] = "US", -- -- Theradras
	[1154] = "US", --Thorium Brotherhood
	[1263] = "US", --Thrall
	[105]  = "US", --Thunderhorn
	[103]  = "US", --Thunderlord
	[11]   = "US", --Tichondrius
	[3210] = "US", --Tol Barad
	[1360] = "US", --Tortheldrin
	[1175] = "US", --Trollbane
	[1265] = "US", --Turalyon
	[164]  = "US", --Twisting Nether
	[1283] = "US", --
	[1426] = "US", -- -- Ulduar
	[116]  = "US", --
	[1294] = "US", --
	[156]  = "US", --
	[3]    = "US", --
	[1348] = "US", --Vashj
	[1184] = "US", --Vek'nilash
	[1567] = "US", --Velen
	[71]   = "US", --Warsong
	[55]   = "US", --Whisperwind
	[159]  = "US", --Wildhammer
	[87]   = "US", --Windrunner
	[1355] = "US", --Winterhoof
	[1369] = "US", --Wyrmrest Accord
	[1174] = "US", -- -- Xavius
	[1270] = "US", --Ysera
	[1268] = "US", --Ysondre
	[1572] = "US", --Zangarmarsh
	[61]   = "US", --Zul'jin
	[1259] = "US", --Zuluhed

	[577]  = "EU", --Aegwynn
	[1312] = "EU", --Aerie Peak
	[518]  = "EU", --Agamaggan
	[1413] = "EU", --Aggra (Português)
	[500]  = "EU", --Aggramar
	[1093] = "EU", --Ahn'Qiraj
	[519]  = "EU", --Al'Akir
	[562]  = "EU", --Alexstrasza
	[563]  = "EU", --Alleria
	[1391] = "EU", --Alonsus
	[601]  = "EU", --Aman'Thul
	[1330] = "EU", --Ambossar
	[1394] = "EU", --Anachronos
	[1104] = "EU", --Anetheron
	[564]  = "EU", --Antonidas
	[608]  = "EU", --Anub'arak
	[512]  = "EU", --Arak-arahm
	[1334] = "EU", --Arathi
	[501]  = "EU", --Arathor
	[539]  = "EU", --Archimonde
	[1404] = "EU", --Area 52
	[536]  = "EU", --Argent Dawn
	[578]  = "EU", --Arthas
	[1406] = "EU", --Arygos
	[1923] = "EU", --Ясеневый лес
	[502]  = "EU", --Aszune
	[1597] = "EU", --Auchindoun
	[503]  = "EU", --Azjol-Nerub
	[579]  = "EU", --Azshara
	[1922] = "EU", --Азурегос
	[1417] = "EU", --Azuremyst
	[565]  = "EU", --Baelgun
	[607]  = "EU", --Balnazzar
	[566]  = "EU", --Blackhand
	[580]  = "EU", --Blackmoore
	[581]  = "EU", --Blackrock
	[1929] = "EU", --Черный Шрам
	[1416] = "EU", --Blade's 
	[521]  = "EU", --Bladefist
	[630]  = "EU", --Bloodfeather
	[504]  = "EU", --Bloodhoof
	[522]  = "EU", --Bloodscalp
	[1613] = "EU", --Blutkessel
	[1924] = "EU", --Пиратская бухта
	[1625] = "EU", --Борейская тундра
	[1299] = "EU", --Boulderfist
	[1393] = "EU", --Bronze Dragonflight
	[1081] = "EU", --Bronzebeard
	[523]  = "EU", --Burning Blade
	[524]  = "EU", --Burning Legion
	[1392] = "EU", --Burning 
	[1381] = "EU", --C'Thun
	[1315] = "EU", -- -- Caduta dei Draghi
	[3391] = "EU", -- -- Cerchio del Sangue
	[1307] = "EU", --Chamber of Aspects
	[1620] = "EU", --Chants éternels
	[545]  = "EU", --Cho'gall
	[1083] = "EU", --Chromaggus
	[1395] = "EU", --Colinas Pardas
	[1127] = "EU", --Confrérie du Thorium
	[644]  = "EU", --Conseil des Ombres
	[525]  = "EU", --Crushridge
	[1337] = "EU", --Culte de la Rive noire
	[526]  = "EU", --Daggerspine
	[538]  = "EU", --Dalaran
	[1321] = "EU", --Dalvengyr
	[1317] = "EU", --Darkmoon Faire
	[631]  = "EU", --Darksorrow
	[1389] = "EU", --Darkspear
	[1619] = "EU", --Das Konsortium
	[614]  = "EU", --Das 
	[1605] = "EU", --Страж Смерти
	[1617] = "EU", --Ткач Смерти
	[527]  = "EU", --Deathwing
	[1609] = "EU", --Подземье
	[635]  = "EU", --Defias Brotherhood
	[1084] = "EU", --Dentarg
	[1327] = "EU", --Der Mithrilorden
	[617]  = "EU", --Der Rat von Dalaran
	[1326] = "EU", --Der abyssische Rat
	[582]  = "EU", --Destromath
	[531]  = "EU", --Dethecus
	[1618] = "EU", --Die Aldor
	[1121] = "EU", --Die Arguswacht
	[1333] = "EU", --Die Nachtwache
	[576]  = "EU", --Die 
	[1119] = "EU", --Die Todeskrallen
	[1118] = "EU", --Die ewige Wacht
	[505]  = "EU", --Doomhammer
	[506]  = "EU", --Draenor
	[507]  = "EU", --Dragonblight
	[528]  = "EU", --Dragonmaw
	[1092] = "EU", --Drak'thul
	[641]  = "EU", --Drek'Thar
	[1378] = "EU", --Dun Modr
	[600]  = "EU", --Dun Morogh
	[529]  = "EU", --Dunemaul
	[535]  = "EU", --Durotan
	[561]  = "EU", --
	[1612] = "EU", --
	[1123] = "EU", --
	[1336] = "EU", --
	[540]  = "EU", --
	[508]  = "EU", --
	[1091] = "EU", --
	[1310] = "EU", --
	[583]  = "EU", --
	[1925] = "EU", --Вечная Песня
	[1087] = "EU", --
	[1385] = "EU", --
	[1611] = "EU", --Festung der 
	[1623] = "EU", --Дракономор
	[516]  = "EU", --Forscherliga
	[1300] = "EU", --Frostmane
	[584]  = "EU", --Frostmourne
	[632]  = "EU", --Frostwhisper
	[585]  = "EU", --Frostwolf
	[1614] = "EU", --Галакронд
	[1390] = "EU", -- -- GM Test realm 2
	[509]  = "EU", --Garona
	[1401] = "EU", --Garrosh
	[606]  = "EU", --Genjuros
	[1588] = "EU", --Ghostlands
	[567]  = "EU", --Gilneas
	[1403] = "EU", -- -- Gnomeregan
	[1928] = "EU", --Голдринн
	[1602] = "EU", --Гордунни
	[586]  = "EU", --Gorgonnash
	[1610] = "EU", --Седогрив
	[1303] = "EU", --Grim Batol
	[1927] = "EU", --Гром
	[1325] = "EU", -- -- Grizzlyhügel
	[587]  = "EU", --Gul'dan
	[646]  = "EU", --Hakkar
	[638]  = "EU", --Haomarush
	[1587] = "EU", --Hellfire
	[619]  = "EU", --Hellscream
	[1615] = "EU", --Ревущий фьорд
	[542]  = "EU", --Hyjal
	[541]  = "EU", --Illidan
	[3656] = "EU", -- -- Internal Record 3656
	[3657] = "EU", -- -- Internal Record 3657
	[3660] = "EU", -- -- Internal Record 3660
	[3666] = "EU", -- -- Internal Record 3666
	[3674] = "EU", -- -- Internal Record 3674
	[3679] = "EU", -- -- Internal Record 3679
	[3680] = "EU", -- -- Internal Record 3680
	[3681] = "EU", -- -- Internal Record 3681
	[3682] = "EU", -- -- Internal Record 3682
	[3686] = "EU", -- -- Internal Record 3686
	[3687] = "EU", -- -- Internal Record 3687
	[3690] = "EU", -- -- Internal Record 3690
	[3691] = "EU", -- -- Internal Record 3691
	[3692] = "EU", -- -- Internal Record 3692
	[3696] = "EU", -- -- Internal Record 3696
	[3702] = "EU", -- -- Internal Record 3702
	[3703] = "EU", -- -- Internal Record 3703
	[3713] = "EU", -- -- Internal Record 3713
	[3714] = "EU", -- -- Internal Record 3714
	[1304] = "EU", --Jaedenar
	[543]  = "EU", --Kael'thas
	[1596] = "EU", --Karazhan
	[568]  = "EU", --Kargath
	[1305] = "EU", --Kazzak
	[588]  = "EU", --Kel'Thuzad
	[1080] = "EU", --Khadgar
	[640]  = "EU", --Khaz Modan
	[569]  = "EU", --Khaz'goroth
	[589]  = "EU", --Kil'jaeden
	[1311] = "EU", --Kilrogg
	[537]  = "EU", --Kirin Tor
	[633]  = "EU", --Kor'gall
	[616]  = "EU", --Krag'jin
	[1332] = "EU", --Krasus
	[1082] = "EU", --Kul Tiras
	[613]  = "EU", --Kult der Verdammten
	[1086] = "EU", --La Croisade écarlate
	[621]  = "EU", --Laughing 
	[1626] = "EU", --Les Clairvoyants
	[647]  = "EU", --Les 
	[1603] = "EU", --Король-лич
	[1388] = "EU", --Lightbringer
	[637]  = "EU", --Lightning's Blade
	[1409] = "EU", --Lordaeron
	[1387] = "EU", --Los 
	[570]  = "EU", --Lothar
	[571]  = "EU", --Madmortem
	[622]  = "EU", --Magtheridon
	[590]  = "EU", --Mal'Ganis
	[572]  = "EU", --Malfurion
	[1324] = "EU", --Malorne
	[1098] = "EU", --Malygos
	[591]  = "EU", --Mannoroth
	[1621] = "EU", --Marécage de Zangar
	[1089] = "EU", --Mazrigos
	[517]  = "EU", --Medivh
	[1402] = "EU", -- -- Menethil
	[1386] = "EU", --Minahonda
	[1085] = "EU", --Moonglade
	[1319] = "EU", --Mug'thol
	[1329] = "EU", -- -- Muradin
	[1589] = "EU", --Nagrand
	[594]  = "EU", --Nathrezim
	[1624] = "EU", --Naxxramas
	[1105] = "EU", --Nazjatar
	[612]  = "EU", --Nefarian
	[1316] = "EU", --Nemesis
	[624]  = "EU", --Neptulon
	[544]  = "EU", --Ner'zhul
	[611]  = "EU", --Nera'thor
	[1607] = "EU", --Nethersturm
	[618]  = "EU", --Nordrassil
	[1408] = "EU", --Norgannon
	[574]  = "EU", --Nozdormu
	[610]  = "EU", --Onyxia
	[1301] = "EU", --Outland
	[575]  = "EU", --Perenolde
	[1309] = "EU", --Pozzo dell'
	[593]  = "EU", --Proudmoore
	[623]  = "EU", --Quel'Thalas
	[626]  = "EU", --Ragnaros
	[1322] = "EU", --Rajaxx
	[642]  = "EU", --Rashgarroth
	[554]  = "EU", --Ravencrest
	[1308] = "EU", --Ravenholdt
	[1616] = "EU", --Разувий
	[1099] = "EU", --Rexxar
	[547]  = "EU", --Runetotem
	[1382] = "EU", --
	[546]  = "EU", --
	[1314] = "EU", --
	[1096] = "EU", --
	[602]  = "EU", --
	[2074] = "EU", -- -- Schwarznarbe
	[548]  = "EU", --
	[1598] = "EU", --
	[556]  = "EU", --
	[1608] = "EU", --
	[1383] = "EU", --
	[549]  = "EU", --
	[533]  = "EU", --
	[557]  = "EU", --
	[1604] = "EU", --Свежеватель Душ
	[558]  = "EU", --
	[1606] = "EU", --
	[1117] = "EU", --
	[550]  = "EU", --
	[559]  = "EU", --
	[560]  = "EU", --
	[511]  = "EU", --
	[1331] = "EU", --
	[628]  = "EU", --
	[1320] = "EU", --Taerar
	[1090] = "EU", --Talnivarr
	[1306] = "EU", --Tarren Mill
	[1407] = "EU", --Teldrassil
	[1622] = "EU", --Temple noir
	[551]  = "EU", --Terenas
	[1415] = "EU", --Terokkar
	[615]  = "EU", --Terrordar
	[627]  = "EU", --The Maelstrom
	[1595] = "EU", --The 
	[636]  = "EU", --The Venture Co
	[605]  = "EU", --Theradras
	[1926] = "EU", --Термоштепсель
	[604]  = "EU", --Thrall
	[643]  = "EU", --Throk'Feroth
	[552]  = "EU", --Thunderhorn
	[1106] = "EU", --Tichondrius
	[1328] = "EU", --Tirion
	[1405] = "EU", --Todeswache
	[1088] = "EU", --Trollbane
	[553]  = "EU", --Turalyon
	[513]  = "EU", --Twilight's Hammer
	[625]  = "EU", --Twisting Nether
	[1384] = "EU", --Tyrande
	[1122] = "EU", --
	[1323] = "EU", --
	[1380] = "EU", --
	[1400] = "EU", --
	[645]  = "EU", --Varimathras
	[629]  = "EU", --Vashj
	[1318] = "EU", --Vek'lor
	[1298] = "EU", --Vek'nilash
	[510]  = "EU", --Vol'jin
	[1313] = "EU", --Wildhammer
	[2073] = "EU", -- -- Winterhuf
	[609]  = "EU", --Wrathbringer
	[639]  = "EU", --Xavius
	[1097] = "EU", --Ysera
	[1335] = "EU", --Ysondre
	[515]  = "EU", --Zenedar
	[592]  = "EU", --Zirkel des Cenarius
	[1379] = "EU", --Zul'jin
	[573]  = "EU", --Zuluhed
	
	[925]  = "CN", --万色星辰
	[922]  = "CN", --世界之树
	[1494] = "CN", --丹莫德
	[794]  = "CN", --主宰之剑
	[3751] = "CN", --丽丽（四川）
	[1696] = "CN", --亚雷戈斯
	[2124] = "CN", --亡语者
	[1663] = "CN", --伊兰尼库斯
	[790]  = "CN", --伊利丹
	[940]  = "CN", --伊森利恩
	[1694] = "CN", --伊森德雷
	[746]  = "CN", --伊瑟拉
	[1502] = "CN", --伊莫塔尔
	[951]  = "CN", --伊萨里奥斯
	[944]  = "CN", --元素之力
	[864]  = "CN", --克尔苏加德
	[1207] = "CN", --克洛玛古斯
	[1209] = "CN", --克苏恩
	[2128] = "CN", --兰娜瑟尔
	[1809] = "CN", --军团要塞
	[1666] = "CN", --冬寒
	[2137] = "CN", --冬拥湖
	[1693] = "CN", --冬泉谷
	[1657] = "CN", --冰川之拳
	[758]  = "CN", --冰霜之刃
	[852]  = "CN", --冰风岗
	[1794] = "CN", --凤凰之神
	[863]  = "CN", --凯尔萨斯
	[814]  = "CN", --凯恩血蹄
	[1797] = "CN", --刀塔
	[867]  = "CN", --利刃之拳
	[1658] = "CN", --刺骨利刃
	[927]  = "CN", --加兹鲁维
	[1498] = "CN", --加基森
	[1944] = "CN", --加尔
	[1499] = "CN", --加里索斯
	[840]  = "CN", --勇士岛
	[828]  = "CN", --千针石林
	[771]  = "CN", --卡德加
	[720]  = "CN", --卡德罗斯
	[721]  = "CN", --卡扎克
	[1216] = "CN", --卡拉赞
	[916]  = "CN", --卡珊德拉
	[1692] = "CN", --厄祖玛特
	[1520] = "CN", --双子峰
	[1489] = "CN", --古加尔
	[857]  = "CN", --古尔丹
	[1223] = "CN", --古拉巴什
	[2127] = "CN", --古达克
	[1808] = "CN", --哈兰
	[1224] = "CN", --哈卡
	[1971] = "CN", --嚎风峡湾
	[718]  = "CN", --回音山
	[745]  = "CN", --图拉扬
	[833]  = "CN", --圣火神殿
	[762]  = "CN", --地狱之石
	[761]  = "CN", --地狱咆哮
	[1496] = "CN", --埃克索图斯
	[750]  = "CN", --埃加洛尔
	[1660] = "CN", --埃基尔松
	[797]  = "CN", --埃德萨拉
	[751]  = "CN", --埃苏雷格
	[846]  = "CN", --埃雷达尔
	[859]  = "CN", --基尔加丹
	[719]  = "CN", --基尔罗格
	[879]  = "CN", --塔伦米尔
	[1512] = "CN", --塔纳利斯
	[1687] = "CN", --塞拉摩
	[1514] = "CN", --塞拉赞恩
	[1820] = "CN", --塞泰克
	[782]  = "CN", --塞纳留斯
	[1949] = "CN", --壁炉谷
	[781]  = "CN", --夏维安
	[1507] = "CN", --外域
	[930]  = "CN", --大地之怒
	[1503] = "CN", --大漩涡
	[1508] = "CN", --天空之墙
	[1524] = "CN", --天谴之门
	[1824] = "CN", --太阳之井
	[1682] = "CN", --夺灵者
	[1228] = "CN", --奈法利安
	[734]  = "CN", --奈萨里奥
	[1965] = "CN", --奎尔丹纳斯
	[1229] = "CN", --奎尔萨拉斯
	[1505] = "CN", --奥妮克希亚
	[2120] = "CN", --奥尔加隆
	[757]  = "CN", --奥拉基尔
	[1506] = "CN", --奥斯里安
	[2119] = "CN", --奥杜尔
	[850]  = "CN", --奥特兰克
	[706]  = "CN", --奥蕾莉亚
	[705]  = "CN", --奥达曼
	[1796] = "CN", --奥金顿
	[918]  = "CN", --守护之剑
	[848]  = "CN", --安东尼达斯
	[1198] = "CN", --安其拉
	[2122] = "CN", --安加萨
	[704]  = "CN", --安威玛尔
	[1517] = "CN", --安戈洛
	[2121] = "CN", --安格博达
	[1199] = "CN", --安纳塞隆
	[938]  = "CN", --密林游侠
	[858]  = "CN", --寒冰皇冠
	[710]  = "CN", --尘风峡谷
	[788]  = "CN", --屠魔山谷
	[740]  = "CN", --山丘之王
	[861]  = "CN", --巨龙之吼
	[1670] = "CN", --巫妖之王
	[851]  = "CN", --巴尔古恩
	[1486] = "CN", --巴瑟拉斯
	[1203] = "CN", --巴纳扎尔
	[921]  = "CN", --布兰卡德
	[800]  = "CN", --布莱克摩
	[1501] = "CN", --布莱恩
	[1937] = "CN", --布鲁塔卢斯
	[885]  = "CN", --希尔瓦娜斯
	[1819] = "CN", --希雷诺斯
	[1676] = "CN", --幽暗沼泽
	[1226] = "CN", --库尔提拉斯
	[723]  = "CN", --库德兰
	[766]  = "CN", --弗塞雷迦
	[2133] = "CN", --影之哀伤
	[891]  = "CN", --影牙要塞
	[1214] = "CN", --德拉诺
	[1488] = "CN", --恐怖图腾
	[924]  = "CN", --恶魔之翼
	[1492] = "CN", --恶魔之魂
	[767]  = "CN", --戈古纳斯
	[1947] = "CN", --戈提克
	[793]  = "CN", --战歌
	[1695] = "CN", --扎拉赞恩
	[1515] = "CN", --托塞德林
	[1823] = "CN", --托尔巴拉德
	[772]  = "CN", --拉文凯斯
	[1231] = "CN", --拉文霍德
	[865]  = "CN", --拉格纳罗斯
	[1230] = "CN", --拉贾克斯
	[954]  = "CN", --提尔之手
	[882]  = "CN", --提瑞斯法
	[1815] = "CN", --摩摩尔
	[920]  = "CN", --斩魔者
	[1972] = "CN", --斯克提斯
	[878]  = "CN", --斯坦索姆
	[1240] = "CN", --无尽之海
	[1803] = "CN", --无底海渊
	[946]  = "CN", --日落沼泽
	[3757] = "CN", --时光之穴
	[737]  = "CN", --普瑞斯托
	[827]  = "CN", --普罗德摩
	[3752] = "CN", --晴日峰（江苏）
	[756]  = "CN", --暗影之月
	[862]  = "CN", --暗影裂口
	[849]  = "CN", --暗影议会
	[1821] = "CN", --暗影迷宫
	[943]  = "CN", --暮色森林
	[708]  = "CN", --暴风祭坛
	[791]  = "CN", --月光林地
	[792]  = "CN", --月神殿
	[1827] = "CN", --末日祷告祭坛
	[1939] = "CN", --末日行者
	[959]  = "CN", --朵丹尼尔
	[802]  = "CN", --杜隆坦
	[1222] = "CN", --格瑞姆巴托
	[1500] = "CN", --格雷迈恩
	[1807] = "CN", --格鲁尔
	[1212] = "CN", --桑德兰
	[775]  = "CN", --梅尔加尼
	[776]  = "CN", --梦境之树
	[1232] = "CN", --森金
	[741]  = "CN", --死亡之翼
	[1802] = "CN", --死亡熔炉
	[769]  = "CN", --毁灭之锤
	[956]  = "CN", --永夜港
	[1236] = "CN", --永恒之井
	[837]  = "CN", --沃金
	[1970] = "CN", --沙怒
	[960]  = "CN", --法拉希姆
	[787]  = "CN", --泰兰德
	[1234] = "CN", --泰拉尔
	[1227] = "CN", --洛丹伦
	[2129] = "CN", --洛肯
	[730]  = "CN", --洛萨
	[1225] = "CN", --海克泰尔
	[768]  = "CN", --海加尔
	[1237] = "CN", --海达希亚
	[1793] = "CN", --深渊之喉
	[1659] = "CN", --深渊之巢
	[926]  = "CN", --激流之傲
	[860]  = "CN", --激流堡
	[1664] = "CN", --火喉
	[1662] = "CN", --火烟之谷
	[770]  = "CN", --火焰之树
	[810]  = "CN", --火羽山
	[1484] = "CN", --灰谷
	[727]  = "CN", --烈焰峰
	[1681] = "CN", --烈焰荆棘
	[1221] = "CN", --熔火之心
	[1941] = "CN", --熵魔
	[829]  = "CN", --燃烧之刃
	[1206] = "CN", --燃烧军团
	[738]  = "CN", --燃烧平原
	[755]  = "CN", --爱斯特纳
	[915]  = "CN", --狂热之刃
	[815]  = "CN", --狂风峭壁
	[731]  = "CN", --玛多兰
	[773]  = "CN", --玛法里奥
	[2130] = "CN", --玛洛加尔
	[732]  = "CN", --玛瑟里顿
	[869]  = "CN", --玛诺洛斯
	[822]  = "CN", --玛里苟斯
	[874]  = "CN", --瑞文戴尔
	[1513] = "CN", --瑟莱德丝
	[1829] = "CN", --瓦丝琪
	[1235] = "CN", --瓦拉斯塔兹
	[2136] = "CN", --瓦拉纳
	[1202] = "CN", --瓦里玛萨斯
	[835]  = "CN", --甜水绿洲
	[1934] = "CN", --生态船
	[1936] = "CN", --白骨荒野
	[1948] = "CN", --盖斯
	[786]  = "CN", --石爪峰
	[1685] = "CN", --石锤
	[1208] = "CN", --破碎岭
	[1519] = "CN", --祖尔金
	[1831] = "CN", --祖达克
	[1830] = "CN", --祖阿曼
	[941]  = "CN", --神圣之歌
	[1813] = "CN", --穆戈尔
	[803]  = "CN", --符文图腾
	[1672] = "CN", --米奈希尔
	[742]  = "CN", --索拉丁
	[743]  = "CN", --索瑞森
	[807]  = "CN", --红云台地
	[717]  = "CN", --红龙军团
	[806]  = "CN", --红龙女王
	[1239] = "CN", --纳克萨玛斯
	[825]  = "CN", --纳沙塔尔
	[2123] = "CN", --织亡者
	[729]  = "CN", --罗宁
	[1818] = "CN", --罗曼斯
	[841]  = "CN", --羽月
	[1832] = "CN", --翡翠梦境
	[872]  = "CN", --耐奥祖
	[778]  = "CN", --耐普图隆
	[856]  = "CN", --耳语海岸
	[1942] = "CN", --能源舰
	[843]  = "CN", --自由之风
	[754]  = "CN", --艾森娜
	[847]  = "CN", --艾欧纳尔
	[1485] = "CN", --艾维娜
	[703]  = "CN", --艾苏恩
	[1495] = "CN", --艾莫莉丝
	[753]  = "CN", --艾萨拉
	[1812] = "CN", --艾露恩
	[949]  = "CN", --芬里斯
	[929]  = "CN", --苏塔恩
	[1828] = "CN", --范克里夫
	[1233] = "CN", --范达尔鹿盔
	[1510] = "CN", --荆棘谷
	[1241] = "CN", --莱索恩
	[1497] = "CN", --菲拉斯
	[1943] = "CN", --菲米丝
	[830]  = "CN", --萨尔
	[739]  = "CN", --萨格拉斯
	[1969] = "CN", --萨洛拉丝
	[1238] = "CN", --萨菲隆
	[725]  = "CN", --蓝龙军团
	[709]  = "CN", --藏宝海湾
	[842]  = "CN", --蜘蛛王国
	[1946] = "CN", --血吼
	[839]  = "CN", --血牙魔王
	[799]  = "CN", --血环
	[1205] = "CN", --血羽
	[886]  = "CN", --血色十字军
	[1487] = "CN", --血顶
	[1817] = "CN", --试炼之环
	[826]  = "CN", --诺兹多姆
	[1504] = "CN", --诺森德
	[736]  = "CN", --诺莫瑞根
	[933]  = "CN", --踏梦者
	[780]  = "CN", --轻风之语
	[3755] = "CN", --辛达苟萨
	[2125] = "CN", --达克萨隆
	[1940] = "CN", --达基萨斯
	[1938] = "CN", --达尔坎
	[1490] = "CN", --达文格尔
	[760]  = "CN", --达斯雷玛
	[711]  = "CN", --达纳斯
	[855]  = "CN", --达隆米尔
	[917]  = "CN", --迅捷微风
	[2135] = "CN", --远古海滩
	[2118] = "CN", --迦拉克隆
	[1667] = "CN", --迦玛兰
	[812]  = "CN", --迦罗娜
	[1945] = "CN", --迦顿
	[712]  = "CN", --迪托马斯
	[1493] = "CN", --迪瑟洛克
	[1511] = "CN", --逐日者
	[883]  = "CN", --通灵学院
	[887]  = "CN", --遗忘海岸
	[1668] = "CN", --金度
	[962]  = "CN", --金色平原
	[744]  = "CN", --铜龙军团
	[889]  = "CN", --银月
	[888]  = "CN", --银松森林
	[784]  = "CN", --闪电之刃
	[749]  = "CN", --阿克蒙德
	[1200] = "CN", --阿努巴拉克
	[1482] = "CN", --阿卡玛
	[1795] = "CN", --阿古斯
	[844]  = "CN", --阿尔萨斯
	[1483] = "CN", --阿扎达斯
	[1201] = "CN", --阿拉希
	[845]  = "CN", --阿拉索
	[1935] = "CN", --阿斯塔洛
	[1932] = "CN", --阿曼尼
	[700]  = "CN", --阿格拉玛
	[1931] = "CN", --阿比迪斯
	[1210] = "CN", --阿纳克洛斯
	[748]  = "CN", --阿迦玛甘
	[931]  = "CN", --雏龙之翼
	[817]  = "CN", --雷克萨
	[816]  = "CN", --雷斧堡垒
	[1211] = "CN", --雷霆之怒
	[726]  = "CN", --雷霆之王
	[818]  = "CN", --雷霆号角
	[876]  = "CN", --霜狼
	[764]  = "CN", --风暴之怒
	[953]  = "CN", --风暴之眼
	[1509] = "CN", --风暴之鳞
	[2134] = "CN", --风暴峭壁
	[765]  = "CN", --风行者
	[804]  = "CN", --鬼雾峰
	[1798] = "CN", --鲜血熔炉
	[890]  = "CN", --鹰巢山
	[1810] = "CN", --麦姆
	[774]  = "CN", --麦维影歌
	[870]  = "CN", --麦迪文
	[808]  = "CN", --黄金之路
	[1204] = "CN", --黑手军团
	[805]  = "CN", --黑暗之矛
	[1801] = "CN", --黑暗之门
	[1516] = "CN", --黑暗虚空
	[932]  = "CN", --黑暗魅影
	[716]  = "CN", --黑石尖塔
	[1213] = "CN", --黑翼之巢
	[1491] = "CN", --黑铁
	[2126] = "CN", --黑锋哨站
	[715]  = "CN", --黑龙军团
	[1215] = "CN", --龙骨平原

	[982]  = "TW", --世界之樹
	[1038] = "TW", --亞雷戈斯
	[977]  = "TW", --冰霜之刺
	[1001] = "TW", --冰風崗哨
	[979]  = "TW", --地獄吼
	[1043] = "TW", --夜空之歌
	[980]  = "TW", --天空之牆
	[1057] = "TW", --寒冰皇冠
	[964]  = "TW", --尖石
	[1023] = "TW", --屠魔山谷
	[966]  = "TW", --巨龍之喉
	[1049] = "TW", --憤怒使者
	[978]  = "TW", --日落沼澤
	[963]  = "TW", --暗影之月
	[985]  = "TW", --水晶之刺
	[999]  = "TW", --狂熱之刃
	[1056] = "TW", --眾星之子
	[1006] = "TW", --米奈希爾
	[1046] = "TW", --聖光之願
	[1037] = "TW", --血之谷
	[1033] = "TW", --語風
	[1048] = "TW", --銀翼要塞
	[1054] = "TW", --阿薩斯
	[3663] = "TW", --米奈希爾
	[965]  = "TW", --雷鱗
}

function addon:GetCurrentRegion()
	local guid = UnitGUID("player")
	if guid then
		local serverID = tonumber(strmatch(guid, "^Player%-(%d+)"))
		local region = realmData[serverID]

		if region then
			return region
		else
			return GetCVar("portal")	-- not found, use CVar
		end
	end
end