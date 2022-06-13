public class CepTO {
    
    public String cep { get; set; }
    public String logradouro { get; set; }
    public String complemento { get; set; }
    public String bairro { get; set; }
    public String localidade { get; set; }
    public String uf { get; set; }
    public String unidade { get; set; }
    public String ibge { get; set; }
    public String gia { get; set; }
    public Boolean isOK { get; set; }
    
    public static CepTO parse(String json){
		  return (CepTO) System.JSON.deserialize(json, CepTO.class);        
    }
}