import { LightningElement } from 'lwc';//It should be modalChild

import EMP_OBJECT from '@salesforce/schema/Employee__c';

export default class ModelChild extends LightningElement {

    objectName = EMP_OBJECT;

    clickHandler() {
    /*Simple Event
    clickHandler () {
        const closeEvent = new CustomEvent ('close');
        this.dispatchEvent(closeEvent);
        */
       /* Event with primitive data
       let message = 'User wants the child to be closed';
       const closeEvent = new CustomEvent('close', {detail: message});
       this.dispatchEvent(closeEvent);
       */
      //Event with non-primitive data
      let message = {
            Id:1,
            Name: 'Tatvam Patel',
            Company: 'Microsoft',
            Position: 'CEO'
      }
        const closeEvent = new CustomEvent('close', {detail: message});
        this.dispatchEvent(closeEvent);
    }
}