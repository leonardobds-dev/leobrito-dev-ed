public with sharing class CepDAO {
    
	private static final CepDAO instance = new CepDAO();
    
    private CepDAO(){}
    
    public static CepDAO getInstance(){
        return instance;
    }
    
    public void inserirCep(Account conta){
		insert conta;        
    }  
}