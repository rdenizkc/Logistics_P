public class A4 implements Motor,Klima,Fren {

        public void turbo(){
            System.debug('A4 turbo motor kullanir');
        }
         
        public void automatic(){
             System.debug('A4 automatic klima kullanir');
        }
    
        public void abs(){
             System.debug('A4 abs fren kullanir');
        }
    }