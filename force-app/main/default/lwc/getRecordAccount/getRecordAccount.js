import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENEU_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';

const FIELDS = [NAME_FIELD, REVENEU_FIELD, INDUSTRY_FIELD];


export default class GetRecordAccount extends LightningElement {

    recordId = '001Do000003DzTLIA0';
    accountName;
    annualRevenue;
    industry;

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    recordHandler({data, error}) {
        if (data) {
            this.accountName = getFieldValue(data, NAME_FIELD);
            this.annualRevenue = getFieldDisplayValue(data, REVENEU_FIELD);
            this.industry = getFieldValue(data, INDUSTRY_FIELD);            
        }
        if (error) {
            console.error(error);
        }
    }
}