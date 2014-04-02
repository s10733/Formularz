package services;

import java.util.ArrayList;
import java.util.List;

import domain.DaneUsera;
import domain.Registred;



public class DodanieDanych {

	
	private static List<DaneUsera> dane = new ArrayList<DaneUsera>();

	
	public void add(DaneUsera daneUsera){
		DaneUsera newAdd = new DaneUsera(daneUsera.getNazwa(),daneUsera.getImie(),daneUsera.getNazwisko(), daneUsera.getAdres(), daneUsera.getEmail(), daneUsera.getNumer());
		dane.add(newAdd);
	}
	
	public static List<DaneUsera> getAllData (){
	
	return dane;
	}
	
	
	public boolean usun(DaneUsera daneUsera){
		for (int i=0; i< dane.size();i++){
			if(dane.get(i).getNazwa().equals(daneUsera.getNazwa()) && daneUsera.getNazwa()!=null)
				{
				 dane.remove(i);
				 return true;
				}
		}
		return false;

}

}