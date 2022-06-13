import { LightningElement, track, wire } from 'lwc';
import { registerListener, unregisterAllListerners } from 'c/pubsub';
import { CurrentPageReference } from 'lightning/navigation';

export default class SelectedMeetingRoom extends LightningElement {
    @track selectedMeetingRoom = {};
    @wire(CurrentPageReference) pageRef;

    connectedCallback(){
        registerListener('pubsubtileclick', this.onMeetingRoomSelectHandler, this);
    }

    disconnectedCallback(){
        unregisterAllListerners(this);
    }

    onMeetingRoomSelectHandler(payload){
        this.selectedMeetingRoom = payload;
    }
}