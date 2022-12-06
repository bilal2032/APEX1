public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer countCandidates = 0;

    public void printCandidates(){
        system.debug('name of the candidate is ' + name + ', gander is ' + gender);
        system.debug('company name is ' + companyName);
    }
    public static void printCandidateInfo(){
        system.debug('company name in static method is ' + companyName);

        // system.debug('name is ' + name); ***does not work because name is non static
    }


}
