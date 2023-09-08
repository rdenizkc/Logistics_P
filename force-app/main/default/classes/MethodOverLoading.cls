public class MethodOverLoading {
    
    public integer add(integer a,integer b){
        
        return a-b;
         }
     public integer add(integer a,integer b,integer c){
        
        return a+b+c;
         }
     public Decimal add(Decimal a,integer b){
        
        return a+b;
         }
    public Decimal add(integer b ,Decimal a){
        
        return a+b;
         }
}