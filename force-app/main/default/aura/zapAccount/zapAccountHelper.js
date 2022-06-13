({
    getCallback : function(component, cep, tipoEndereco){
        
        var action = component.get('c.getCepWS');
        
        action.setParams({
            CEP : cep
        });
        
        action.setCallback(this, function(response){
            if(response.getState() === 'SUCCESS'){
                
                var result = JSON.parse(response.getReturnValue());
                
                if(tipoEndereco == 'cobranca'){
                    component.set('v.cepCobrancaCallback', result);
                }else{
                    component.set('v.cepEntregaCallback', result);
                }
            }
        });
        
        $A.enqueueAction(action);
    },
    
    saveCep : function(component, cepCobrancaCallback, cepEntregaCallback){

        let cobranca = cepCobrancaCallback;
        let entrega = cepEntregaCallback;
        
        var action = component.get('c.salvar');
        
        console.log('>>>> Cobrança: ' + JSON.stringify(cobranca));
        console.log('>>>> Entrega: ' + JSON.stringify(entrega));
        
        
        action.setParams({ "cepCobranca" : cobranca, "cepEntrega" : entrega });
        
        console.log(action);
        
        
        action.setCallback(this, function(response){
            
            console.log('ENTROU NO CALLBACK');
            
            let retorno = JSON.parse(response.getReturnValue());
            
            if(action.getState() === 'SUCCESS' && reponse.isSuccess){
                
               component.set('v.mensagemErro', retorno);
                
            }else if(action.getState() === 'ERROR' || !reponse.isSuccess){
                
                console.log('deu erro nessa merda');
                
                let errors = response.getError();
                
                if (errors[0] && errors[0].message) {
                    console.log("Error message: " + errors[0].message);
                    component.set('v.mensagemErro', errors[0].message);
                }
                
            }else{
                
                console.log('ERROR DESCONHECIDO');
            } 
        });
        
        $A.enqueueAction(action);
        
    },
    
    onCheck : function(component){
        let cmpCheckBox = component.find('check');
        
        if(cmpCheckBox){
            console.log('>>>> sim');
        }else{
            console.log('>>>> não');
        }
    }
})