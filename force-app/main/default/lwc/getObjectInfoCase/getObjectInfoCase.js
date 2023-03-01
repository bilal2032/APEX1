import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import CASE_OBJECT from '@salesforce/schema/Case';

export default class GetObjectInfoCase extends LightningElement {

    @wire(getObjectInfo, {objectApiName: CASE_OBJECT})
    objectInfoHandler(result){
        console.log(result);
    }
}