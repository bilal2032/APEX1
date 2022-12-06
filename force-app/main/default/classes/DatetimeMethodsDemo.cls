public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthdate = date.newInstance(1977, 8, 30);
        date todaydate = date.today();

        integer ageInMonths = birthdate.monthsbetween(todaydate);
        system.debug(' My age in months is ' + ageInMonths);

    }
    public void calculateAgeInDays(){
        date birthdate = date.newInstance(1977, 8, 30);
        date todaydate = date.today();

        integer ageInDays = birthdate.daysbetween(todaydate);
        system.debug(' My age in days is ' + ageInDays);
    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('Subscription ends on ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('End date year is ' + endDateYear);

        integer endDateMonth = subscriptionEndDate.month();
        system.debug('End date month is ' + endDateMonth);

        date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
        system.debug('The subscribtion is started on ' + pastSubscriptionDate);
    }
    public void printOfferEndDateTime(){
              
        datetime dtNow = datetime.now();
        datetime dtEndDateTime = dtNow.addHours(51);
        system.debug('The offer ends at ' + dtEndDateTime);

        date offerEndDate = dtEndDateTime.date();
        system.debug('The offer end date is ' + offerEndDate);
    }
    public void birthdateInMilliSeconds(){

        datetime birthdate = datetime.newInstance(1977, 8, 30, 1, 34, 5);
        long longBirthDate = birthdate.getTime();
        system.debug('My long birth date is' + longBirthDate);
    }

}
