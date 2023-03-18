import { LightningElement, wire } from 'lwc';
import MY_CHANNEL from '@salesforce/messageChannel/MyChannel__c';
import { MessageContext, publish } from 'lightning/messageService';

export default class LmsPublisherComp extends LightningElement {

    messageValue;

    @wire(MessageContext)
    context;

    changeHandler(event) {
        this.messageValue = event.target.value;
    }

    publishMessage() {
        const message = {
            lmsData: this.messageValue
        }
        console.log(JSON.stringify(message));
        console.log('I am about to publish the message');
        publish(this.context, MY_CHANNEL, message);
        console.log('The message has been published.');

    }
}