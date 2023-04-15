import searchContacts from '@salesforce/apex/ContactCtrl.searchContacts';
import { LightningElement } from 'lwc';

const COLUMNS = [
    {label: 'First Name', fieldName: 'FirstName', type: 'text'},
    {label: 'Last Name', fieldName: 'LastName', type: 'text'},
    {label: 'Email', fieldName: 'Email', type: 'email'},
    {label: 'Title', fieldName: 'Title', type: 'text'},
]

export default class SearchContacts extends LightningElement {
    contacts;
    error;
    columns = COLUMNS;

    searchHandler(event) {
        const searchWord = event.target.value;
        searchContacts({searchKey: searchWord})
            .then(result => {
                if(result.length > 0) {
                    this.contacts = result;
                    this.error = undefined;
                } else {
                    this.contacts = undefined;
                    this.error = 'There are no matching contacts for the entered search key. Try using different search!';
                }
            })
            .catch(error => {
                this.error = error.body.message;
                this.contacts = undefined; 
            })
    }
}