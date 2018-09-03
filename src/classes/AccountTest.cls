@isTest
public class AccountTest {
	@testSetup
    public static void setup(){
        Account a1 = new Account(Name='Test Account');
        insert a1;
        Account a2 = new Account(Name='My Account');
        insert a2;
    }
    
    @isTest
    public static void test(){
        Account a1 = [Select Name, Type from Account Where Name='Test Account' limit 1];
        System.assertEquals(a1.Type,'Prospect');
    }
}