public class CepDTO {
	
    @AuraEnabled 
    public String mensagemErro { get; set; }
    
    public CepDTO(String mensagem){
        this.mensagemErro = mensagem;
    }
}