import searchStudentsByPostalCode from '@salesforce/apex/StudentController.searchStudentsByPostalCode';
import { LightningElement } from 'lwc';

const COLUMNS = [
    {label: 'Student Name', fieldName: 'Student_Name__c', type: 'text'},
    {label: 'Class', fieldName: 'Class__c', type: 'number'},
    {label: 'Email', fieldName: 'Email__c', type: 'email'},
    {label: 'Phone', fieldName: 'Phone__c', type: 'tel'},
    {label: 'Postal Code', fieldName: 'Postal_Code__c', type: 'text'}
];

export default class StudentParentComp extends LightningElement {

    studentInfo;
    error;
    columns = COLUMNS;

    searchHandler(event) {
        const searchWord = event.target.value;        
        searchStudentsByPostalCode({searchKey: searchWord})
            .then(result => {
                if(result.length > 0) {
                    this.studentInfo = result;
                    this.error = undefined;
                } else {
                    this.studentInfo = undefined;
                    this.error = 'There are no matching students for the entered postal code. Try using different search!';
                }
            })
            .catch(error => {
                this.error = error.body.message;
                this.studentInfo = undefined; 
            });

    }
}