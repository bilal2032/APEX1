import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent2 extends LightningElement {
    contacts = [
        {
            Id: 1,
            Name: "Emrah",
            City: "Houston"
        },
        {
            Id: 2,
            Name: "Enes",
            City: "Miami"
        },
        {
            Id: 3,
            Name: "Taha",
            City: "Turkiye"
        }
    ];
}