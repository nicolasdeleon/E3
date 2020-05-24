//
//  main.c
//  Ej 1
//
//  Created by Santiago Bualo on 25/8/18.
//  Copyright © 2018 Santiago Bualo. All rights reserved.
//

#include <stdio.h>
#include <string.h>
#include "functions.h"

int main(int argc, const char * argv[]) {
    int number_of_parameters=argc-1;
    //validating datas
    //check that the ammount of data that receives is the needed
    
    if (number_of_parameters <3){
        printf("Missing parameters\n Abort Mission\n");
    }
    else if (number_of_parameters > 3){
        printf("too many parameters\n I give up\n");
        
    
    }
    else{
    const char* world_1=argv[1];
    const char* world_2=argv[2];
    const char* world_3=argv[3];
    int is_signed=0,parte_entera=0,parte_fraccionaria=0;
    int Error= validate_characters(argc, argv, &is_signed, &parte_entera, &parte_fraccionaria,world_1,world_2,world_3);

    
    //Extracting the int numbers from the string parameters
    //in the while expression checks for valid characters among the data received
    //each for block extracts each word character one by one and builds the decimal number upon them
    //int Error =0;
    //For the is_signed block only sets it on 1 or 0 whereas the number is signated or not signated

    

    if(Error!=0){
        printf("Wrong parameters\n Somebody doesn´t know how to use this program\n");
        }
    else{
        float resolution = 1;               //where the final resolution of the sistem is held
        float extremo_A=0;                  //one extreme of the number interval
        float extremo_B=1;                  //other extreme
        int counter=parte_entera-1;
        //you take -1 of the parte_entera because of the disposition of the bits (b0,b1,b2...)
        
        //if the system is signed the operation is slightly different
        if (is_signed){
            counter--;  //take an extra -1 from the counter because of the last signed bit
            extremo_B= - exp_base_two(parte_entera-1);
            //this extreme is the most negative number
        }
        else
            extremo_B= exp_base_two(- parte_fraccionaria);  //in this case the extreme is the smallest number
        
        for(;counter>=(-parte_fraccionaria);counter--){
            extremo_A=extremo_A+exp_base_two(counter);
        }
        
        while (parte_fraccionaria!= 0){
        resolution= (resolution/2);
            --parte_fraccionaria;
        }
        
        printf("Resolution: %g\n Rango: %g\n",resolution,extremo_A-extremo_B);
    }

    }
    return 0;
}
