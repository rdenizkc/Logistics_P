public abstract class Honda {
    
    //4) Abstraction
// iki bolumden olusur

// 1) Abstract Class 2) Interface

//Not: Kodingde bazi classlari object olusturmak icin degil,
// objectleri gruplara ayirmak ve 
// genel ozelliklerini belirlemek icin kullaniriz.

//Body'si kullanilmayan methodlara yani bodysi olmayan methodalara "abstract" denir.

//Abstract methodlarin bodysi olmaz {suslu parantez kismi}.Cunku bir abstract metgod mutlaka child class'lar tarafindan override
//edilecegindenmethod body'sine ihtiyac yoktur.

// Abstract method ile ne yapilmasi gerektigini belirleriz ama nasil yapilacagini child class'da override edecek method'a birakiriz.

//Bodysi olan methodlara non-abstract method veya concrate method denir.
//Abstract methodlar ancak abstract classlar icinde olusturabilir.
//Abstract classlar hem abstract method hem de non-abstract method icerebilir.
//Concrate methodlat child classlar tarafindan istenirse override edilebilir.
    
public  abstract void engine();
    
    public  virtual void music(){
        
        system.debug('Profesyonel');
    }
    
}