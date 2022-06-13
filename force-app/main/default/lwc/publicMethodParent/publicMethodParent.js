import { LightningElement, track } from 'lwc';

export default class PublicMethodParent extends LightningElement {
    @track value;

    checkboxSelectHandler(){
        const childComponent = this.template.querySelector('c-public-method-child');
        const returnMessage = childComponent.selectCheckBox(this.value);
        console.log('Return Message: ', returnMessage);
    }

    onInputChangeHandler(event){
        this.value = event.target.value;
    }
}