 import { LightningElement } from 'lwc';

  export default class Practice3 extends LightningElement {

    message = "Offer Received"; 
    //Property to hold the value attribute
    inputValue = "";
    // HTML-->value={inputValue} when we click on 
    //reset button box should be empty

    /**
     * The method that get called by the result 
     * of the onchange event can have access to 
     * the details of the event using method parameter
     * 
     */
    handleChange(event) {
        console.log(event);
        // console.log('User typed something');
        // event contains all the details about the onchange event
        // including the target element that fired this function to get executed
        // event.target will return the same element that fired the event
        // we can get all it's attribute of the element
        // and the value attribute is the one that store what user typed
        // console.log(event.target.value);
        // access the label attribute of lightning input
        // console.log( event.target.label );
        
        this.message = event.target.value; 
        this.inputValue = event.target.value; 

    }

    //we re-assign the default value, this resetting it
    handleReset(){
        this.message = "Offer Received"; 
        //reset the value attribute to ""
        this.inputValue = ""; 
    }

    // Change string to nothing =====>>> WITH EMPTY STRING
    handleClear(){
        this.message = "";
        this.inputValue = ""; 
    }
 
   }


    // the content of entire event object 
/**
 {
    "isTrusted": false,
    "composed": true,
    "target": {
        "$$ShadowedNodeKey$$": 26,
        "Bu": 1
    },
    "currentTarget": null
}
 */
