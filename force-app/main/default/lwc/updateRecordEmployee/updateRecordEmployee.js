import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import EMP_NAME_FIELD from '@salesforce/schema/Employee__c.Employee_Name__c';
import EMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import DESIGN_FIELD from '@salesforce/schema/Employee__c.Designation__c';

const FIELDS = [EMP_NAME_FIELD, EMAIL_FIELD, DESIGN_FIELD];

export default class UpdateRecordEmployee extends LightningElement {

    recordId = 'a09Do000000hYpkIAE';
    formData = {};

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    employee;

    changeHandler(event) {
        const {name, value} = event.target;
        this.formData[name] = value;
    }

    updateEmployee() {
        this.formData['Id'] = this.recordId;
        const recordInput = {
            fields: this.formData
        };
        updateRecord(recordInput)
        .then(result => {
            const successToast = new ShowToastEvent({
                title:'Success',
                message: 'Employee record has been updated successfully!',
                variant: 'success'
            });
            this.dispatchEvent(successToast);
        })
        .catch(error => {
            console.error(error);                
        })
    }
}