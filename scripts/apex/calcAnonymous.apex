Calculator c1 = new Calculator();
c1.welcomeMessage();

date newDate = date.newInstance(2017, 7,23);
boolean lpCheck = c1.leapYearCheck(newDate);
system.debug(newDate + ' check leap year ' + lpCheck);

integer a = 7;
integer b = 13;
integer c = 2;

integer sum3 = c1.add(a, b, c);
system.debug('The sum of ' + a + ', ' + b + ' and ' + c + ' is ' + sum3);

integer sum1 = c1.add(10, 15);
system.debug(sum1);

string r = c1.printAndReturnMessage('print this ASAP');
system.debug(r);

string message = 'print my message';
c1.printNewMessage(message);
c1.printNewMessage('now my message is dinamic.');

c1.welcomeMessage();
