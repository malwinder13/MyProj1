public class AccountHandler {
   
    public String createEmail(String name) {
        String random = String.valueOf(Integer.valueOf(System.today().day()));
        return 'name'+random+'@yopmail.com';
    }
    
    public String setType(String name) {
        String acctype;
        if(name.containsIgnoreCase('test')){
            acctype = 'Prospect';
        }
        else{
            acctype = 'Customer - Direct';
        }
        return acctype;
    }
}