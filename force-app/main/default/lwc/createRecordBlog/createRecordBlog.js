import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent'

import BLOG_OBJECT from '@salesforce/schema/Blog__c'
import { createRecord } from 'lightning/uiRecordApi';

export default class CreateRecordBlog extends LightningElement {

    formData = {};

    changeHandler(event){
        const {name, value} = event.target;
        this.formData[name] = value;
    }

    @wire(getObjectInfo, {objectApiName: BLOG_OBJECT})
    blogInfo;

    saveBlog() {
        //prepare recordInput
        const recordInput = {
            apiName: BLOG_OBJECT.objectApiName,
            fields: this.formData
        }

        //call createRecord
        createRecord(recordInput)
            .then(result => {
                //show success toast
                const successToast = new ShowToastEvent({
                    title: 'Success',
                    message: 'New Blog record has been created successfully',
                    variant: 'success'
                });
                this.dispatchEvent(successToast);
            })
            .catch(error => {
                //show error toast
                console.error(error);
            })       
    }

    cancelBlog() {
        this.template.querySelector('form.blogform').reset();
        this.formData = {};
    }
}