import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import EMP_OBJECT from '@salesforce/schema/Employee__c';
import EMPLOYEE_NAME__FIELD from '@salesforce/schema/Employee__c.Employee_Name__c';
import DESIGNATION__FIELD from '@salesforce/schema/Employee__c.Designation__c';
import EMPLOYEE_EMAIL__FIELD from '@salesforce/schema/Employee__c.Email__c';
import USER_NAME__FIELD from '@salesforce/schema/Employee__c.User_Name__c';
import PHONE_NUMBER__FIELD from '@salesforce/schema/Employee__c.Phone_Number__c';
import GENDER__FIELD from '@salesforce/schema/Employee__c.Gender__c';


export default class LightningRecordEditFormEmp extends LightningElement {
    objectName = EMP_OBJECT;
    fields = {
        employeeName: EMPLOYEE_NAME__FIELD,
        designation: DESIGNATION__FIELD,
        email:EMPLOYEE_EMAIL__FIELD,
        username:USER_NAME__FIELD,
        phone: PHONE_NUMBER__FIELD,
        gender: GENDER__FIELD
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: 'Success',
            message: 'Employee information has saved succesfully!',
            variant: 'success'
        });
        this.dispatchEvent(successToast);
    }
}