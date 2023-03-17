import { LightningElement } from 'lwc';

export default class ChildComp extends LightningElement {
    
    clickHandler() {
        console.log('User has clicked the button, about to creat an event');
        const showEvent = new CustomEvent('show', {bubbles: true, composed: true});
        this.dispatchEvent(showEvent);
        console.log('show event has been dispatched from the child component');
    }
}