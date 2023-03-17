import { LightningElement } from 'lwc';

export default class SliderComponent extends LightningElement {
    volume = 1;

    changeHandler(event) {
        this.volume = event.target.value;
    }

    handleReset() {
        this.template.querySelector('c-slider').resetHandler();
    }
}