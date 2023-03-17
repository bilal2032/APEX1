import { LightningElement } from 'lwc';

export default class P2cActionAtParent1 extends LightningElement {

    value;
    size;

    changeHandler(event) {
        if(event.target.name === 'value') {
            this.value=event.target.value;
        } else {
            this.size = event.target.value;
        }

    }

    get sizeOptions() {
        return [
            {label: 'Small', value: 'Small'},
            {label: 'Medium', value: 'Medium'},
            {label: 'Large', value: 'Large'}
        ]
    }

}