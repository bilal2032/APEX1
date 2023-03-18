import { LightningElement, wire } from 'lwc';
import MY_CHANNEL from '@salesforce/messageChannel/MyChannel__c';
import { APPLICATION_SCOPE, MessageContext, subscribe } from 'lightning/messageService';

export default class LmsSubscriberComp extends LightningElement {

    message;

    @wire(MessageContext)
    context;

    connectedCallback() {
        this.subscriberHandler();
    }

    subscriberHandler() {
        subscribe(
            this.context,
            MY_CHANNEL,
            (message) => {this.handleMessage(message)},
            {scope: APPLICATION_SCOPE}
        );
    }
    handleMessage(message) {
        console.log('message reached subscriber comp');
        console.log(JSON.stringify(message));
        this.message = message.lmsData;
    }
}