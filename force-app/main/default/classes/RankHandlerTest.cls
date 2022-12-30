@isTest
public class RankHandlerTest {
    @isTest
    private static void rankHabdlerTestMethod() {
        RankHandler rnk = new RankHandler();
        string gold = rnk.rankPrize(1);
        system.assertEquals('Gold', gold);
        string silver = rnk.rankPrize(2);
        system.assertEquals('Silver', silver);
        string bronze = rnk.rankPrize(3);
        system.assertEquals('Bronze', bronze);
        string top10 = rnk.rankPrize(7);
        system.assertEquals('Top 10 certification', top10);
        string participation = rnk.rankPrize(12);
        system.assertEquals('Participation certification. Enjoy', participation);             
    }
    @isTest
    private static void rankPrizeSwitchTest() {
        RankHandler s = new RankHandler(); 
        string prizeGold = s.rankPrizeSwitch(1);
        system.assertEquals('Gold', prizeGold);
        string prizeSilver = s.rankPrizeSwitch(2);
        system.assertEquals('Silver', prizeSilver);
        string prizeBronze = s.rankPrizeSwitch(3);
        system.assertEquals('Bronze', prizeGold);
        string prizetop10 = s.rankPrizeSwitch(7);
        system.assertEquals('Welcome to top 10', prizetop10);
        string participation = s.rankPrizeSwitch(12);
        system.assertEquals('Thank you for the participation. Keep it up', participation);
    }
}