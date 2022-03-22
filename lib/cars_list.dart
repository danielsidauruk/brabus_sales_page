class CarsDetail {
  String name;
  String subName;
  String engine;
  String power;
  String torsi;
  double price;
  String imageAssets;
  List<String> imageExterior;
  List<String> imageInterior;

  CarsDetail({
    required this.name,
    required this.subName,
    required this.engine,
    required this.power,
    required this.torsi,
    required this.price,
    required this.imageAssets,
    required this.imageExterior,
    required this.imageInterior
  });
}

var carDetailList = [
  CarsDetail(
    name: 'BRABUS 800 XLP SUPERBLACK',
    subName: 'Based on the Mercedes-AMG G 63',
    engine: '8-Cylinder',
    power: '588 kW / 800 hp',
    torsi: '1000 Nm | 0-100 km/h 4,8 s | Vmax 210 km/h / 130 mph',
    price: 726259.50,
    imageAssets: 'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB001.jpg',
    imageExterior: [
      'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB001.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB002.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB003.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB004.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Main/BRABUSXLPSB005.jpg'
    ],
    imageInterior: [
      'image/01. BRABUS 800 XLP SUPERBLACK/Interior/_BRA0440-1170x780.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Interior/_BRA0444-1170x780.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Interior/_BRA0500-1170x780.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Interior/_BRA0536-1170x780.jpg',
      'image/01. BRABUS 800 XLP SUPERBLACK/Interior/_BRA0547-1170x780.jpg'
    ]
  ),
  CarsDetail(
    name: 'BRABUS 900',
    subName: 'Based on the Mercedes-AMG E 63 S 4MATIC+',
    engine: '8-Cylinder',
    power: 'Power 662 kW / 900 hp',
    torsi: '1250 Nm | 0-100 km/h 2,8 s | Vmax 330 km/h / 205 mph',
    price: 327873.56,
      imageAssets: 'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E001.jpg',
      imageExterior: [
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E001.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E002.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E003.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E004.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Main/BRABUS900E005.jpg'
      ],
      imageInterior: [
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Interior/_BRA9278-1170x780.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Interior/_BRA9281-1170x780.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Interior/_BRA9288-1170x780.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Interior/_BRA9294-1170x780.jpg',
        'image/02. BRABUS 900 Mercedes-AMG E 63 S/Interior/_DSC3447-1170x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS 550 ADVENTURE',
    subName: 'Based on the Mercedes-Benz G 500 4MATIC',
    engine: '8-Cylinder',
    power: '404 kW / 550 hp',
    torsi: '0-100 km/h 6.7 s | Vmax 210 km/h / 130 mph',
    price: 235858.00,
    imageAssets: 'image/03. BRABUS 550 ADVENTURE/Main/BRABUS5001.jpg',
      imageExterior: [
        'image/03. BRABUS 550 ADVENTURE/Main/BRABUS5001.jpg',
        'image/03. BRABUS 550 ADVENTURE/Main/BRABUS5002.jpg',
        'image/03. BRABUS 550 ADVENTURE/Main/BRABUS5003.jpg',
        'image/03. BRABUS 550 ADVENTURE/Main/BRABUS5004.jpg'
      ],
      imageInterior: [
        'image/03. BRABUS 550 ADVENTURE/Interior/C4S_292 (32)-1169x780.jpg',
        'image/03. BRABUS 550 ADVENTURE/Interior/C4S_292 (34)-1169x780.jpg',
        'image/03. BRABUS 550 ADVENTURE/Interior/C4S_292 (35)-1169x780.jpg',
        'image/03. BRABUS 550 ADVENTURE/Interior/C4S_292 (38)-1169x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'INVICTO MISSION VR6 PLUS ERV',
    subName: 'Based on the Mercedes-Benz G 500',
    engine: '8-Cylinder',
    power: '310 kW / 421 hp',
    torsi: '-',
    price: 665210.00,
      imageAssets: 'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_01.jpg',
      imageExterior: [
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_01.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_02.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_03.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_04.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Main/INVICTO_05.jpg'
      ],
      imageInterior: [
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Interior/INVICTO_mission (18)-1169x780.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Interior/INVICTO_mission (19)-1169x780.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Interior/INVICTO_mission (22)-1169x780.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Interior/INVICTO_mission (30)-1169x780.jpg',
        'image/04. INVICTO MISSION VR6 PLUS ERV FULLY CERTIFIED ARMOURED VEHICLE WITH BLAST PROTECTION/Interior/INVICTO_mission (44)-1169x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS 900 ROCKET EDITION',
    subName: 'Based on the Mercedes-AMG GLE 63 S 4MATIC+ COUPÉ',
    engine: '8-Cylinder',
    power: '662 kW / 900 hp',
    torsi: '0-100 km/h	3,2 s | Vmax	330km/h / 205mph',
    price: 453681.55,
      imageAssets: 'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Main/001-2560x1813.jpg',
      imageExterior: [
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Main/001-2560x1813.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Main/003.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Main/004.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Main/005.jpg',
      ],
      imageInterior: [
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Interior/_BRA0364-1170x780.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Interior/_BRA0393-1170x780.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Interior/_BRA0413-1170x780.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Interior/_BRA0424-1170x780.jpg',
        'image/05. BRABUS 900 ROCKET EDITION GLE 63 S/Interior/_BRA0436-1170x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS 800',
    subName: 'Based on the Mercedes-AMG S 63 COUPÉ',
    engine: '8-Cylinder',
    power: '588 kW / 800 hp',
    torsi: '1000 Nm | 0-100 km/h 3,1 s | Vmax 300 km/h / 186 mph',
    price: 222530.00,
      imageAssets: 'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/coupe001.jpg',
      imageExterior: [
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/coupe001.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/_BRA0774.NEF0,5x.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/_BRA0776.NEF0,5x.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/_BRA0778.NEF0,5x.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Main/_BRA0785.NEF0,5x.jpg'
      ],
      imageInterior: [
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Interior/_BRA0794.NEF0,5x-1170x780.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Interior/_BRA0823.NEF0,5x-1170x780.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Interior/_BRA0824.NEF0,5x-1170x780.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Interior/_BRA0828.NEF0,5x-1170x780.jpg',
        'image/06. BRABUS 800 Coupe S 63 COUPÉ/Interior/_BRA0829.NEF0,5x-1170x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS 800 BLACK & GOLD EDITION',
    subName: 'Based on the Mercedes-AMG G 63',
    engine: '8-Cylinder',
    power: '588 kW / 800 hp',
    torsi: 'Torque 1000 Nm | 0-100 km/h 4,1 s | Vmax 240 km/h / 149 mph',
    price: 453033.00,
      imageAssets: 'image/07. BRABUS 800 BLACK & GOLD EDITION/Main/GOLD001.jpg',
      imageExterior: [
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Main/GOLD001.jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Main/C4S_029 (50).jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Main/C4S_029 (52).jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Main/C4S_029 (54).jpg'
      ],
      imageInterior: [
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Interior/C4S_029 (38)-1169x780.jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Interior/C4S_029 (40)-1169x780.jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Interior/C4S_029 (43)-1168x780.jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Interior/C4S_029 (42)-1169x780.jpg',
        'image/07. BRABUS 800 BLACK & GOLD EDITION/Interior/C4S_029 (45)-1169x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS 800 ADVENTURE XLP',
    subName: 'Based on the Mercedes-AMG G 63',
    engine: '8-Cylinder',
    power: '588 kW / 800 hp',
    torsi: '1000 Nm | 0-100 km/h 4.8 s | Vmax 210 km/h / 130 mph',
    price: 657475.00,
      imageAssets: 'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/xlp001.jpg',
      imageExterior: [
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/xlp001.jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/C4S_347 (27).jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/C4S_347 (43).jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/C4S_347 (41).jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Main/C4S_347 (28).jpg'
      ],
      imageInterior: [
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Interior/C4S_347 (2)-1169x780.jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Interior/C4S_347 (5)-1169x780.jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Interior/C4S_347 (10)-1169x780.jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Interior/C4S_347 (7)-1169x780.jpg',
        'image/08. BRABUS 800 ADVENTURE XLP - MERCEDES-AMG G 63/Interior/C4S_347 (6)-1169x780.jpg'
      ]
  ),
  CarsDetail(
    name: 'BRABUS ELECTRIC',
    subName: 'Based on the Mercedes-Benz EQC 400 4MATIC',
    engine: 'Electric',
    power: '300 kW / 408 hp',
    torsi: '760 Nm | 0-100 km/h 5,1 s | Vmax 180 km/h / 112 mph',
    price: 657475.00,
      imageAssets: 'image/09. BRABUS ELECTRIC/Main/001.jpg',
      imageExterior: [
        'image/09. BRABUS ELECTRIC/Main/001.jpg',
        'image/09. BRABUS ELECTRIC/Main/BRABUSEQC (29).jpg',
        'image/09. BRABUS ELECTRIC/Main/BRABUSEQC (33).jpg',
        'image/09. BRABUS ELECTRIC/Main/BRABUSEQC (35).jpg'
      ],
      imageInterior: [
        'image/09. BRABUS ELECTRIC/Interior/_DSC9759-1169x780.jpg',
        'image/09. BRABUS ELECTRIC/Interior/BRABUSEQC (20)-1169x780.jpg',
        'image/09. BRABUS ELECTRIC/Interior/BRABUSEQC (23)-1169x780.jpg',
        'image/09. BRABUS ELECTRIC/Interior/_DSC9761-1169x780.jpg',
        'image/09. BRABUS ELECTRIC/Interior/BRABUSEQC (26)-1169x780.jpg'
      ]
  ),
];
