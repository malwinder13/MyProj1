trigger AccountTrigger on Account (before insert) {
	AccountHandler h = new AccountHandler();
    for(Account a: trigger.new){
        if(String.isBlank(a.Type)){
            a.Type = h.setType(a.Name);
        }
    }
}