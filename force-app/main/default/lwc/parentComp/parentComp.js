import { LightningElement } from 'lwc';

export default class ParentComp extends LightningElement {
    showHandler1(event) {
        console.log('show event has reached parent component: c-child-comp');
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);
    }

    showHandler2(event) {
        console.log('show event has bubbled up from c-child-comp to div');
        console.log(event.target.nodeName);
        console.log(event.currentTarget.nodeName);        
    }
}