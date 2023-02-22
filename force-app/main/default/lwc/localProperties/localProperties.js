import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name;//Undefined
    age = 45;
    fullname = 'Salesforce Developer';
    location = {
        city: 'Dallas',
        country: 'United States',
        postalCode: '76123'
    };
    fruits = ['Orange', 'Banana', 'Apple'];
}