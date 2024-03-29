import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { createRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateRecordAccount extends LightningElement {

    industryOptions = [];
    formdata = {};

    changeHandler(event){
        // const name = event.target.name;
        // const value = event.target.value;
        const {name, value} = event.target;
        this.formdata[name] = value; //formdata = {Nmae: 'My Account, Industry: 'Biotech', AnnualRevenue: 1000000.00}
        console.log(JSON.stringify(this.formdata));
        
    }


    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    accountInfo; 

    @wire(getPicklistValues, {fieldApiName: INDUSTRY_FIELD, recordTypeId: '$accountInfo.data.defaultRecordTypeId'})
    picklistHandler({data, error}) {
        if (data) {
            this.industryOptions = data.values;
        }
        if (error) {
            console.error(error);
        }

    }

    saveAccount() {
        //prepare recordInput
        const recordInput = {
            apiName:ACCOUNT_OBJECT.objectApiName,
            fields: this.formdata
        }
        //call createRecord
        createRecord(recordInput)
            .then(resut => {
                //show success toast
                const successToast = new ShowToastEvent({
                    title: 'Success',
                    message: 'Account record has been created successfully',
                    variant: 'success'
                });
                this.dispatchEvent(successToast);
            })
            .catch(error => {
                //show error toast
                console.error(error);
            })
    }

    cancelAccount() {
        this.template.querySelector('form.accountform').reset();
        this.template.querySelector('lightning-combobox').value = undefined;
        this.formdata = {};
    }
}