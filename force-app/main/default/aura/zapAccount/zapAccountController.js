({    
  
    getCepCobranca : function(component, event, helper){
        var cepCobranca = component.get("v.cepCobranca");
        let tipoEndereco = 'cobranca';
        helper.getCallback(component, cepCobranca, tipoEndereco);
    },
    
    getCepEntrega : function(component, event, helper){
        var cep = component.get("v.cep");
        let tipoEndereco = 'entrega';
        helper.getCallback(component, cep, tipoEndereco);
    },
    
    salvarCep : function(component, event, helper){
        
        helper.saveCep(component, component.get("v.cepCobrancaCallback"), component.get("v.cepEntregaCallback"));
	},    
    
    limparCampos : function(component, event, helper){
        component.set("v.cepCobrancaCallback", null);
        component.set("v.cepEntregaCallback", null);
    },
    
    onCheck : function(component, event, helper){
        helper.onCheck(component);
    }
})