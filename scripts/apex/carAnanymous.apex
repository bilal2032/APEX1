car lambo = new car();
lambo.carColor = 'Orange';
lambo.carName = 'lambo sports';
lambo.switchOn();
lambo.drive();
lambo.driveAtMaxSpeed();
system.debug('lambo ---> ' + lambo);

system.debug('............');

Car bmw = new car();
bmw.carColor = 'Black';
bmw.carName = 'X5';
bmw.switchOn();
bmw.drive();
// bmw.maxSpeed = 200; Since maxSpeed is private variable, it does not work
//system.debug('bmw.maxspeed---> ' + maxSpeed); Since maxSpeed is private variable, it does not work
system.debug('bmw --->' + bmw);