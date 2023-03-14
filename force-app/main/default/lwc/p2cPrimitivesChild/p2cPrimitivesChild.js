import { api, LightningElement } from 'lwc';

export default class P2cPrimitivesChild extends LightningElement {
    @api fullName;
    @api age;
    @api city;
}