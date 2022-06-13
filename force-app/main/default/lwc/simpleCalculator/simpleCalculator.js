import { LightningElement, track } from 'lwc';

export default class SimpleCalculator extends LightningElement {
    @track currentResult;
    @track previousResult = [];
    @track showPreviousResult = false;

    firstNumber;
    secondNumber;

    numberChangeHandler(event){
        const inputBox = event.target,
              inputBoxName = inputBox.name;

        if(inputBoxName === 'firstNumber'){
            this.firstNumber = inputBox.value;
        }
        else if(inputBoxName === 'secondNumber'){
            this.secondNumber = inputBox.value;
        }
    }

    addHandler(){
        const firstNumber = parseInt(this.firstNumber),
            secondNumber = parseInt(this.secondNumber);

        // this.currentResult = 'Result of ' + firstNumber + ' + ' + secondNumber + ' is ' + (firstNumber + secondNumber);
        this.currentResult = `Result of ${firstNumber} + ${secondNumber} is ${(firstNumber + secondNumber)}`;
        this.previousResult.push(this.currentResult);
    }
    
    subHandler(){
        const firstNumber = parseInt(this.firstNumber),
        secondNumber = parseInt(this.secondNumber);
        
        // this.currentResult = 'Result of ' + firstNumber + ' - ' + secondNumber + ' is ' + (firstNumber - secondNumber);
        this.currentResult = `Result of ${firstNumber} - ${secondNumber} is ${(firstNumber - secondNumber)}`;
        this.previousResult.push(this.currentResult);
    }
    
    multiplyHandler(){
        const firstNumber = parseInt(this.firstNumber),
        secondNumber = parseInt(this.secondNumber);
        
        // this.currentResult = 'Result of ' + firstNumber + ' x ' + secondNumber + ' is ' + (firstNumber * secondNumber);
        this.currentResult = `Result of ${firstNumber} x ${secondNumber} is ${(firstNumber * secondNumber)}`;
        this.previousResult.push(this.currentResult);
    }
    
    divisionHandler(){
        const firstNumber = parseInt(this.firstNumber),
        secondNumber = parseInt(this.secondNumber);
        
        // this.currentResult = 'Result of ' + firstNumber + ' / ' + secondNumber + ' is ' + (firstNumber / secondNumber);
        this.currentResult = `Result of ${firstNumber} / ${secondNumber} is ${(firstNumber / secondNumber)}`;
        this.previousResult.push(this.currentResult);
    }

    showPreviousResultToggle(event){
        this.showPreviousResult = event.target.checked;
    }
}