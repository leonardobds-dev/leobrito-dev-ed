({
	doInit : function(component, event, helper) {
		var flowComp = component.find('flowData');
		flowComp.startFlow('Lead_Capture_Screen_Flow');
	}
})