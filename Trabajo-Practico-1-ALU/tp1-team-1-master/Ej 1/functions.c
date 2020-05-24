//
//  functions.c
//  Ej 1
//
//  Created by Santiago Bualo on 25/8/18.
//  Copyright © 2018 Santiago Bualo. All rights reserved.
//

#include "functions.h"
float exp_base_two(int n){
    float final_value=1;
    if (n>0){
    while(n!=0){
        final_value=final_value*2;
        n--;
    }
    }
    else{
        while(n!=0){
            final_value=final_value/2;
            n++;
        }
    }
    return final_value;
}


int validate_characters(int argc,const char**argv,int *is_signed,int *parte_entera,int* parte_fraccionaria, const char* world_1, const char* world_2, const char* world_3){
    
    int number_of_parameters=argc-1;
    
    //validating datas
    //check that the ammount of data that receives is the needed
    if (number_of_parameters <3){
        printf("Missing parameters\n Abort Mission\n");
    }
    else if (number_of_parameters > 3){
        printf("too many parameters\n I give up\n");
        
        
    }
   
   // int is_signed=0,parte_entera=0,parte_fraccionaria=0;
    
    //Extracting the int numbers from the string parameters
    //in the while expression checks for valid characters among the data received
    int Error =0;
    
    for(int j=0;j<strlen(world_1);j++){
        if (world_1[j]=='1' ||world_1[j]== '-')
            *is_signed = TRUE;
        else if (world_1[j]== '0' ){
            *is_signed=FALSE;
            break;
        }
        else{
            Error=1;
        }
    }
    for(int j=0;j<strlen(world_2);j++){
        if (world_2[j]<='9' && world_2[j]>= '0')
            *parte_entera = *parte_entera * 10 + ( world_2[j] - '0' );
        else {
            Error=1;
            break;
        }
    }
    for(int j=0;j<strlen(world_3);j++){
        if (world_3[j]<='9' && world_3[j]>= '0')
            *parte_fraccionaria = *parte_fraccionaria * 10 + ( world_3[j] - '0' );
        else {
            Error=1;
            break;
        }
    }
    return Error;
    
}

