public virtual class Animal {
    public String type ='Mammal or Not';
    public Decimal weight=1.33;
    public void eat(){
        System.debug('Animals eat...!');
    }
    public void drink(){
        System.debug('Animals drink..!');
    }
}
// by using "virtual" keyword:  we told Apex this the parent!
// // void there ll be no returning data type ,like passive,no data type
// parent class or super class