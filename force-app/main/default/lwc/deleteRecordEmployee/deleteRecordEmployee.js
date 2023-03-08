import { deleteRecord } from 'lightning/uiRecordApi';
import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class DeleteRecordEmployee extends LightningElement {

    recordId;

    changeHandler(event) {
        this.recordId = event.target.value;
    }


    deleteRec() {
        deleteRecord(this.recordId)
        .then(result => {
            this.prepareToast('Success', 'Employee record hasbeen deleted succesfully.', 'success');
        })
        .catch(error => {
            this.prepareToast('Error', error.body.message, 'error');


        })

    }

    prepareToast(title, message, variant) {
        const toast = new ShowToastEvent({title, message, variant});
        this.dispatchEvent(toast);
    }
}