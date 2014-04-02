package services;

import java.util.ArrayList;
import java.util.List;

import domain.Registred;


public class UserRegistred {

	
	private static List<Registred> reg = new ArrayList<Registred>();
	
	
	public void add(Registred registred){
		Registred newRegist = new Registred(registred.getLogin(), registred.getPass(), registred.getFirstname(),registred.getEmail() );
		reg.add(newRegist);
	}
	
	public static List<Registred> getAllRegistredUsers (){
	
	return reg;
	}



	
	public boolean check(Registred registred){
		for (int i=0; i< reg.size();i++){
			if(reg.get(i).getLogin().equals(registred.getLogin()) && registred.getLogin()!=null)
				{
				return true;
				}
		}
		return false;

}
	public boolean checkPass(Registred regipass){
		for (int i=0; i< reg.size();i++){
			if(reg.get(i).getPass().equals(regipass.getPass()) && regipass.getPass()!=null)
				{
				return true;
				}
		}
		return false;

}
	
}
