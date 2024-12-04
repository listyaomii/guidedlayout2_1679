class Person {
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

final List<Person> people = _people
    .map((e) => Person(
        e['name'] as String, e['phone'] as String, e['picture'] as String))
    .toList(growable: false);

final List<Map<String, Object>> _people = [
  {
    "_id": "66f8a5204c7c1b70e10adf15",
    "index": 0,
    "guid": "3e8b5912-b9cc-4ce1-ae61-2f31ee9760a4",
    "isActive": true,
    "balance": "\$2,006.30",
    "picture": "http://placehold.it/32x32",
    "age": 30,
    "eyeColor": "green",
    "name": "Olga Andrews",
    "gender": "female",
    "company": "BUZZOPIA",
    "email": "olgaandrews@buzzopia.com",
    "phone": "+1 (867) 467-3798",
    "address": "265 Strong Place, Rew, Vermont, 1451",
    "about":
        "Irure veniam deserunt aute eu consequat ullamco est ad id id reprehenderit proident incididunt. Consectetur reprehenderit aute sunt nulla et magna ex laborum fugiat excepteur consequat. In amet deserunt laborum non enim minim elit. Incididunt pariatur ea id excepteur occaecat quis irure anim sint ipsum culpa fugiat excepteur veniam. Anim occaecat amet amet dolor sint minim ex labore anim voluptate officia. Excepteur consequat elit cillum ea.\r\n",
    "registered": "2021-01-27T06:07:21 -07:00",
    "latitude": -60.435239,
    "longitude": -40.542646,
    "tags": [
      "aliquip",
      "ut",
      "exercitation",
      "anim",
      "voluptate",
      "irure",
      "labore"
    ],
    "friends": [
      {"id": 0, "name": "Hernandez Little"},
      {"id": 1, "name": "Katharine Robinson"},
      {"id": 2, "name": "Connie Arnold"}
    ],
    "greeting": "Hello, Olga Andrews! You have 10 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f8a52052209d08a25d69f2",
    "index": 1,
    "guid": "8e46e843-981a-4702-9f3b-c67ec0b90c17",
    "isActive": true,
    "balance": "\$3,233.80",
    "picture": "http://placehold.it/32x32",
    "age": 39,
    "eyeColor": "green",
    "name": "Elvia Castaneda",
    "gender": "female",
    "company": "DELPHIDE",
    "email": "elviacastaneda@delphide.com",
    "phone": "+1 (908) 455-3274",
    "address": "667 Fleet Walk, Greenfields, Georgia, 1553",
    "about":
        "Consequat veniam consectetur et quis pariatur deserunt minim esse ut mollit ea duis ipsum sunt. Irure deserunt nulla magna culpa irure in fugiat anim sint enim amet excepteur deserunt et. Amet Lorem ipsum occaecat commodo consequat non ut enim qui fugiat ex dolore velit deserunt.\r\n",
    "registered": "2023-08-30T10:28:55 -07:00",
    "latitude": 76.245487,
    "longitude": 167.610383,
    "tags": [
      "laboris",
      "sunt",
      "consectetur",
      "aliquip",
      "officia",
      "laborum",
      "voluptate"
    ],
    "friends": [
      {"id": 0, "name": "Sparks James"},
      {"id": 1, "name": "Holden Ortiz"},
      {"id": 2, "name": "Roseann Preston"}
    ],
    "greeting": "Hello, Elvia Castaneda! You have 4 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f8a520193b70463d177c61",
    "index": 2,
    "guid": "21805443-3199-4183-bd69-0fd6dfc821cf",
    "isActive": true,
    "balance": "\$1,044.08",
    "picture": "http://placehold.it/32x32",
    "age": 28,
    "eyeColor": "green",
    "name": "Jones Larsen",
    "gender": "male",
    "company": "EVIDENDS",
    "email": "joneslarsen@evidends.com",
    "phone": "+1 (970) 494-3865",
    "address": "849 Kingsway Place, Saranap, Texas, 1406",
    "about":
        "Sunt adipisicing tempor incididunt sit in non ipsum id sunt. Quis enim qui labore adipisicing laborum laboris in duis. Nulla ea ex deserunt exercitation aliqua. Lorem labore laboris eu velit ipsum. Dolor nisi in nulla aliquip ad ex aute.\r\n",
    "registered": "2018-10-27T05:11:53 -07:00",
    "latitude": -48.171524,
    "longitude": 28.760313,
    "tags": ["magna", "deserunt", "officia", "minim", "est", "dolore", "ut"],
    "friends": [
      {"id": 0, "name": "Villarreal Buckley"},
      {"id": 1, "name": "Karina Kelly"},
      {"id": 2, "name": "Nixon Garrison"}
    ],
    "greeting": "Hello, Jones Larsen! You have 1 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f8a52039e22be76c1569dd",
    "index": 3,
    "guid": "78c59560-4b59-4466-8171-24d846c71e8f",
    "isActive": false,
    "balance": "\$2,688.46",
    "picture": "http://placehold.it/32x32",
    "age": 40,
    "eyeColor": "blue",
    "name": "Tonia Spence",
    "gender": "female",
    "company": "RAMJOB",
    "email": "toniaspence@ramjob.com",
    "phone": "+1 (864) 494-2962",
    "address": "624 Estate Road, Norvelt, Tennessee, 5427",
    "about":
        "Proident aliqua amet proident sint sit deserunt id anim veniam deserunt cupidatat ad pariatur. Sit nisi veniam velit voluptate deserunt quis laboris exercitation fugiat velit et amet. Ad aute quis do minim sint occaecat.\r\n",
    "registered": "2021-11-22T01:38:13 -07:00",
    "latitude": -66.038507,
    "longitude": 82.457978,
    "tags": ["ea", "fugiat", "magna", "est", "elit", "irure", "laborum"],
    "friends": [
      {"id": 0, "name": "Shields Baker"},
      {"id": 1, "name": "Hale Chavez"},
      {"id": 2, "name": "Gabriela Collins"}
    ],
    "greeting": "Hello, Tonia Spence! You have 3 unread messages.",
    "favoriteFruit": "apple"
  },
  {
    "_id": "66f8a520db35c7e041043704",
    "index": 4,
    "guid": "32e26bab-9f57-46eb-a5b2-8f748b14828f",
    "isActive": true,
    "balance": "\$2,247.09",
    "picture": "http://placehold.it/32x32",
    "age": 39,
    "eyeColor": "blue",
    "name": "Reid Vazquez",
    "gender": "male",
    "company": "MANTRIX",
    "email": "reidvazquez@mantrix.com",
    "phone": "+1 (985) 543-3629",
    "address": "224 Corbin Place, Vincent, New Mexico, 3789",
    "about":
        "Consequat occaecat est deserunt proident ad irure in sunt ullamco aliqua sunt. Do duis consectetur nulla consequat exercitation pariatur Lorem pariatur Lorem et. Labore et mollit mollit qui aute ipsum.\r\n",
    "registered": "2020-11-04T12:12:51 -07:00",
    "latitude": -45.950166,
    "longitude": -39.080431,
    "tags": ["velit", "est", "pariatur", "cillum", "ad", "qui", "adipisicing"],
    "friends": [
      {"id": 0, "name": "Browning Dean"},
      {"id": 1, "name": "Stein Donaldson"},
      {"id": 2, "name": "Lancaster Wilkinson"}
    ],
    "greeting": "Hello, Reid Vazquez! You have 7 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f8a52078f0280f54c1dece",
    "index": 5,
    "guid": "b938fa85-0699-4882-bd10-b4852d0c913b",
    "isActive": false,
    "balance": "\$2,597.63",
    "picture": "http://placehold.it/32x32",
    "age": 31,
    "eyeColor": "green",
    "name": "Shannon Barron",
    "gender": "male",
    "company": "PETIGEMS",
    "email": "shannonbarron@petigems.com",
    "phone": "+1 (948) 400-2523",
    "address": "489 Dorchester Road, Hessville, Virgin Islands, 7130",
    "about":
        "Veniam mollit ullamco aute occaecat in dolore id deserunt occaecat dolore consectetur amet ut anim. Aliqua excepteur Lorem velit nulla laborum occaecat voluptate reprehenderit ullamco. Labore ad sint officia ipsum deserunt incididunt minim mollit dolore. Qui ex laboris ex aute exercitation ullamco incididunt consequat mollit qui ex ipsum anim dolore. Magna adipisicing sint laborum nisi irure consectetur aute quis nostrud et velit enim elit aliqua. Nulla consequat minim nisi excepteur est velit tempor.\r\n",
    "registered": "2016-03-28T01:24:14 -07:00",
    "latitude": 52.712597,
    "longitude": -101.125642,
    "tags": [
      "officia",
      "nulla",
      "sit",
      "voluptate",
      "enim",
      "consequat",
      "eiusmod"
    ],
    "friends": [
      {"id": 0, "name": "Melanie Howard"},
      {"id": 1, "name": "Bean Malone"},
      {"id": 2, "name": "Beasley Duran"}
    ],
    "greeting": "Hello, Shannon Barron! You have 4 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f8a52010b383b31bef5d21",
    "index": 6,
    "guid": "c25bff1b-343f-4725-8a79-4bce2f2e2a3c",
    "isActive": true,
    "balance": "\$3,527.83",
    "picture": "http://placehold.it/32x32",
    "age": 24,
    "eyeColor": "blue",
    "name": "Francesca Cantrell",
    "gender": "female",
    "company": "HONOTRON",
    "email": "francescacantrell@honotron.com",
    "phone": "+1 (924) 580-2933",
    "address": "174 Albemarle Terrace, Laurelton, Minnesota, 5018",
    "about":
        "Consectetur tempor enim reprehenderit irure cupidatat ullamco. Deserunt elit ad velit exercitation eu reprehenderit quis aliqua labore. Minim mollit irure magna velit veniam excepteur laborum nostrud. Ullamco reprehenderit eu amet amet.\r\n",
    "registered": "2018-10-28T06:25:21 -07:00",
    "latitude": 4.844088,
    "longitude": -101.69337,
    "tags": [
      "pariatur",
      "irure",
      "laborum",
      "consequat",
      "proident",
      "irure",
      "fugiat"
    ],
    "friends": [
      {"id": 0, "name": "Alisa Hernandez"},
      {"id": 1, "name": "Bryan Wong"},
      {"id": 2, "name": "Hall Dillard"}
    ],
    "greeting": "Hello, Francesca Cantrell! You have 8 unread messages.",
    "favoriteFruit": "strawberry"
  }
];
