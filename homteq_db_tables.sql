CREATE TABLE Product (
    prodId int NOT NULL,
    prodName varchar (200) NOT NULL,
    prodPicNameSmall varchar  (200) NOT NULL,
    prodPicNameLarge varchar  (200) NOT NULL,
    prodDescripShort varchar(1000),
    prodDescripLong varchar(3000),
    prodPrice decimal (8,2) NOT NULL,
    prodQuantity int NOT NULL,
    PRIMARY KEY (prodId)
);

INSERT INTO Product (prodName, prodPicNameSmall,prodPicNameLarge, prodDescripShort,prodDescripLong,prodPrice,prodQuantity)
VALUES (  'TP-Link Tapo P100 Mini Smart Plug Wi-Fi Single Socket',' small plug image.png ','big image plug.png',' Control electronics from anywhere using your tablet or smartphone with the TP-Link Smart Wi-Fi Plug. You can turn devices on/off,  ',' Control electronics from anywhere using your tablet or smartphone with the TP-Link Smart Wi-Fi Plug. You can turn devices on/off, check status, create schedules and set timers using the Tapo app. Gain peace of mind by checking on your devices remotely and always coming home to a well-lit house. Use away-mode to make it look like you are home when you travel and have lights turn on/off at set times to conserve energy and save on your next bill. Add voice control to any electronic device by pairing with Amazon Alexa and Google Home.
Single 1 gang, plug socket.
Suitable for indoor usage.
Light power indicator.
Size H7.25, W5.15, D3.74cm.
EAN: 4897098680452. ', 12.99 , 23 );

INSERT INTO Product (prodName, prodPicNameSmall,prodPicNameLarge, prodDescripShort,prodDescripLong,prodPrice,prodQuantity)
VALUES ( ' Google Nest Learning 3rd Generation Thermostat - Steel ',' small heater image.png ',' big heating image.png ',' Your thermostat controls 60% of your energy bill. So shouldn t it help you save energy?  ',' Your thermostat controls 60% of your energy bill. So shouldn t it help you save energy? The Nest Learning Thermostat does. It gets to know the temperature that you like while youre at home, and turns itself down when youre away. It even learns how your home warms up or how draughty it is, so it only uses the energy that it needs. Now the Nest Thermostat does something new, called Farsight. It will light up to tell you the temperature, weather or time. You can also control your hot water tank with the Nest Thermostat.

Google Nest compared with thermostats running at a constant temperature. Energy savings are not guaranteed and depend on energy usage, weather, and other factors.

The Nest App shows you how much energy you use every day in Energy History, and every month in your Home Report. So you can see when you use more energy, such as at the weekend or Monday nights, and how to use less.

Stainless steel finish.
Wall mounted (optional stand available for purchase).
Size H2.7, W8.4, D3.2cm.
Weight 0.44kg.
Fixings included.
General information:
Manufacturer s 2 year guarantee. ', 219.00 , 34 );

INSERT INTO Product (prodName, prodPicNameSmall,prodPicNameLarge, prodDescripShort,prodDescripLong,prodPrice,prodQuantity)
VALUES ( ' Philips Hue GU10 Colour Smart Bulb With Bluetooth - 2 Pack ','small image light.png',' big image light.png ',' Introducing the Philips Hue Bluetooth range its now easier than ever to get started with smart lighting! ',' Introducing the Philips Hue Bluetooth range it s now easier than ever to get started with smart lighting! Start controlling your lights straight out of the box with the Bluetooth app or your voice!

What s Required? Nothing! This product works out of the box with the free Philips Hue Bluetooth app. Simply screw in your new GU10 perfect fit bulb and connect to the Philips Hue app for in room smart lighting control!

Play with Colour Choose from 16 million colours including warm to cool white light to create an ambiance that suits any mood. Play with colour to create the perfect ambiance for film nights, parties, bedtime stories, or to just sit back and unwind!

Control Lights With Your Voice. Works with all Echo smart speakers/displays and Google Nest devices for hands-free voice control (Philips Hue Bridge (sold separately) is required for Echo 1st Gen and Echo Dot 1st Gen).

Unlock Your Homes Full Potential. Add a Philips Hue Bridge (sold separately, optional) to your cart and unlock full home control, either when you re home or away.
Alexa compatible.
Google assistant compatible.
Siri compatible.
Compatible with iOS and Android operating systems.
App needed for use: Philips Hue Bluetooth.
Operates over mobile internet.
Operates over wi-fi.
Requires wireless router for use.
Controls lighting.
Sets schedules for devices.
Components include 2 x Philips Hue White and Colour GU10 Bulbs.
Suitable for indoor.
Energy efficiency class: G.
Energy Consumption/1000h (kwh): 5.
Size H17.4, W7.2, D7.2cm.
Manufacturers 2 year guarantee. ', 94.99 , 54 );

INSERT INTO Product (prodName, prodPicNameSmall,prodPicNameLarge, prodDescripShort,prodDescripLong,prodPrice,prodQuantity)
VALUES (   'Amazon Echo Pop 2023 Smart Speaker with Alexa',' small smart speakers .png ',' big speaker pictures.png ',' Introducing Echo Pop. This compact Bluetooth smart speaker with Alexa features ',' Introducing Echo Pop. This compact Bluetooth smart speaker with Alexa features a full sound thats great for bedrooms and small spaces. Small enough to blend in and mighty enough to stand out. Control music with your voice. Make any space a smart space.

Ask Alexa to play music, audiobooks, and podcasts from your favourite providers like Amazon Music, Spotify and more. Connect your smartphone via Bluetooth to stream throughout your space.

Use your voice or the Alexa app to easily control your compatible smart home devices like plugs or lights.

Life just got easier. Have Alexa set timers, check the weather, read the news, re-order paper towels, make calls, answer questions, and more.

1 internal speaker.
Compatible with iPod, iPhone and iPad.
Bluetooth compatible.
15 watts.
1amplifier channel.
Alexa compatible.
App needed for use: Alexa.
General information
Model number: B09WX6QD65.
Size H9.1, W9.9, D8.3cm, Speaker diameter 0.99cm.
Mains operated.
Manufacturers 1 year guarantee. ', 44.99 , 347 );

CREATE TABLE Users (
    userId int NOT NULL AUTO_INCREAMENT,
    userType varchar (20) NOT NULL,
    userFName varchar  (100) NOT NULL,
    usersSName varchar  (100) NOT NULL,
    userAddress varchar(200), NOT NULL,
    userPostCode varchar(20), NOT NULL,
    userTelNo varchar (20) NOT NULL,
    userEmail varchar (100) NOT NULL UNIQUE,
    userPassword varchar (100) NOT NULL,
    CONSTRAINT u_uid_pk PRIMARY KEY (userId)
);


INSERT INTO Users ( userType, userFName, usersSName, userAddress, userPostCode, userTelNo, userEmail, userPassword)
VALUES ( 'c','alex', 'boss','wellbury road notthing hill','w11 1nl', '0773473347','alexboss@gmail.com','1234567890');

INSERT INTO Users ( userType, userFName, usersSName, userAddress, userPostCode, userTelNo, userEmail, userPassword)
VALUES ( 'c','ben', 'bruh',' eastbury road','ig11 9sn', '07746791195','benbruh@gmail.com','0987654321');

INSERT INTO Users ( userType, userFName, usersSName, userAddress, userPostCode, userTelNo, userEmail, userPassword)
VALUES ( 'c','carmen', 'love','glengal grove','e14 3ne', '07785473218','carmenlove@gmail.com','1029384756')

