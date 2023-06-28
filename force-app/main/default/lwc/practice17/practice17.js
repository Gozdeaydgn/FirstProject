import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";

export default class Practice17 extends LightningElement {

    accounts; 
    error;


    /**
    @wire decorator is used to get SF data, also called wire adapter
    below line will call Apex method getAccountWithAnnualRevenue
    get the result -> turn it to JSON with curtain structure
    and assign it to the property(or function) right under ->
    in this case the function
    it will have this structure 
    {
        data : [the data queried] , 
        error : undefined
    }
     */

    @wire(getAccountWithAnnualRevenue)
    getDataFromApex( { data,error} ){    //destructing the result we got from apex into data and error variable using destructing syntax   

        if(data){
            this.accounts = data;
            this.error = undefined;
        }else if(error){
            this.error = error;
            this.data = undefined;
        }

    }

    // @wire(getAccountWithAnnualRevenue)
    // getDataFromApex( result ){

    //     if(result.data){
    //         this.accounts = result.data;
    //         this.error = undefined;
    //     }else if(result.error){
    //         this.error = result.error;
    //         this.data = undefined;
    //     }

    // }


}

/**
let result= {
    data  = "some data goes here",
    error = "some error goes here",
}

//use destructing to save data and error values into 2 variable
let {data , error} = result ;


 */