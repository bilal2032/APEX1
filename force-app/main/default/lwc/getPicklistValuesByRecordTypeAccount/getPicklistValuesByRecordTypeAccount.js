import { getObjectInfo, getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';

export default class GetPicklistValuesByRecordTypeAccount extends LightningElement {

    defaultRtId;
    industryOptions = [];
    typeOptions = [];
    selectedType;
    selectedIndustry;

    @wire(getObjectInfo, {objectApiName: ACCOUNT_OBJECT})
    objectInfoHandler({data, error}) {
        if (data) {
            this.defaultRtId = data.defaultRecordTypeId;            
        }
        if (error) {
            console.log(error);            
        }
    }

    @wire(getPicklistValuesByRecordType, {objectApiName: ACCOUNT_OBJECT, recordTypeId: '$defaultRtId'})
    picklistHandler({data, error}) {
        if (data) {
            console.log(data);
            this.industryOptions = data.picklistFieldValues.Industry.values;
            this.typeOptions = data.picklistFieldValues.Type.values;

        }
        if (error) {
            console.error(error);
        }
    }

    changeHandler(event) {
        if (event.target.name === 'Type') {
            this.selectedType = event.target.value;            
        }else{
            this.selectedIndustry = event.target.value;
        }
    } 

}