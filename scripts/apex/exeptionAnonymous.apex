try{

account a = new account();
insert a;
}catch(Dmlexception dex){
system.debug('DML went wrong buddy.');

} catch(exception ex){
system.debug('Something went wrong buddy.');
}
system.debug('Apex is SIMPLE');

