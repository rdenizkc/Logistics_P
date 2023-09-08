public class students {
    
   private string name = 'Tom Hanks';
    private integer age= 25;
    private boolean succesful=true;
    
    public string getName(){
        
        return this.name;
    } 
    
    public integer getAge(){
        return this.age;
        
    }
    
    public Boolean isSuccesful(){
        return this.succesful;
    }
    
    public void setName(string Name){
        this.name=name;
        
    }
    public void setAge(Integer age){
        this.age=age;
        
    }
    public void setSuccesful(Boolean succesful){
        this.succesful=succesful;
        
    }
}