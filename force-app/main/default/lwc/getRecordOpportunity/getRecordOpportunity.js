import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_FIELED from '@salesforce/schema/Opportunity.Account.Name';
import NAME_FIELED from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELED from '@salesforce/schema/Opportunity.Type';
import STAGE_FIELED from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELED from '@salesforce/schema/Opportunity.Amount';
import CLOSEDATE_FIELED from '@salesforce/schema/Opportunity.CloseDate';

const FIELDS = [ACCOUNT_FIELED, NAME_FIELED, TYPE_FIELED, STAGE_FIELED, AMOUNT_FIELED, CLOSEDATE_FIELED];

export default class GetRecordOpportunity extends LightningElement {

    recordId = '006Do000002NXHeIAO';
    accountName;
    oppName;
    type;
    stage;
    amount;
    closeDate;

    @wire(getRecord, {recordId: '$recordId' , fields: FIELDS})
    recordHandler({data, error}) {
        if (data) {
            console.log(data);
            this.accountName = data.fields.Account.displayValue;
            this.oppName = data.fields.Name.value;
            this.type = data.fields.Type.value;
            this.stage = data.fields.StageName.value;
            this.amount = data.fields.Amount.displayValue;
            this.closeDate = data.fields.CloseDate.displayValue;
        }
        if (error) {
            console.error(error);
        }
    }
}