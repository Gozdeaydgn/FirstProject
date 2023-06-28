import { LightningElement , wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";


export default class Practice16 extends LightningElement {
/**
    //@wire decorator is used to get SF data, also called wire adapter
    //below line will call Apex method getAccountWithAnnualRevenue
    //get the result -> turn it to JSON with curtain structure
    //and assign it to the property(or function) right under ->
    //it will have this structure 
    {
        data : [the data queried] , 
        error : undefined
    }
     */
    @wire(getAccountWithAnnualRevenue)
    wiredAccounts; 


    // handleClick(){
    //     console.log(this.wiredAccounts);
    // }

}

/**
This is how wired data coming from Apex look like
{
    "data": [
        {
            "Id": "001Dm0000042hhTIAQ",
            "Name": "Account_Inserted_Updated_Deleted_Undeleted-1",
            "AnnualRevenue": 1000000
        },
        {
            "Id": "001Dm00000BNUqeIAH",
            "Name": "GenePoint",
            "AnnualRevenue": 30000000
        }
        .....
    ] ,
    error : undefined
 }
 
 */