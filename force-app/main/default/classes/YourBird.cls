public class YourBird extends YourAnimal { //assign as child with "extends" keyword!
    
    
    public override void eat(){ //put "override" to change implementation!
        
    System.debug('Birds eat!..'); //Non-virtual methods cannot be overridden: void YourBird.eat()
    }
    
    public override void drink(){
        system.debug('birds drink..');
    }
    
    public void tweet(){
        System.debug('Birds tweet...');
    }

}