package br.com.fabrica.loteria;

import java.util.Random;

public class LotericaAposta {

    public static void main(String[] args) {

        Random keygen = new Random();
        int premio=5000000;
        int i;
        int rodadas;
        int loteria [] = new int [3];
        int aposta[]=new int[3];
        
for (rodadas =0; rodadas<100;rodadas++){
    
      for (i = 0; i <loteria.length ; i++) 
    {
      System.out.println(loteria[i] = keygen.nextInt(9999));
        }
        System.out.println("rodada n°"+rodadas);
        if (rodadas > 49 ){
        
            System.out.println("O VAlOR DO PREIO ACUMULOU");
            System.out.println(((premio/100)*5)+ premio);
        }
          

        }

        /*
        for(i=0;i<3;i++){
        
            System.out.print(loteria[i]);
        
        }
*/
        System.out.println();
        System.out.println(loteria[0]);
}
}
