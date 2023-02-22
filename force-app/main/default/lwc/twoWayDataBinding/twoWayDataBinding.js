import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullname = 'Bilal Oztruk';
    title = 'Salesforce Developer';

    changeHandler(event){
        this.title = event.target.value;

    }
}