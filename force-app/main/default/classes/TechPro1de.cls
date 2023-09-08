public class TechPro1de {
    public static void doRun(){
        System.debug('Good Morning');
        list<account> listA = [select id, name from account];
        system.debug(listA);
    }
}