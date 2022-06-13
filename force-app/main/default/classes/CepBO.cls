public with sharing class CepBO {
    
	private static final CepBO instance = new CepBO();
    
    private CepBO(){ }
    
    public static CepBO getInstance(){
        return instance;
    }
    
    public void inserirCep(Account conta){
        
        try{
            
            CepDAO.getInstance().inserirCep(conta);
            
        }catch(Exception ex){
            System.debug('>>>> ERRO: ' + ex.getMessage());
        }
        
    }
}