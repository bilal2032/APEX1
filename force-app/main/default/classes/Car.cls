public class Car {
    public string carColor = '';

    private integer maxSpeed = 150;

    public string carName = '';

    public void switchOn(){
        system.debug('start the car');
    }

    public void drive(){
        system.debug('driving ' + carName + 'car color is '+ carColor);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeed + ' mile/Hour';
        system.debug(drivingDescription);

    }
    
}
