package domain;

public class DaneUsera {
		
		
		private String nazwa;
		private String imie;
		private String nazwisko;
		private String email;
		private String adres;
		private int numer;


		public DaneUsera() {
			super();
		}
		
		public DaneUsera(String nazwa, String imie, String nazwisko, String adres, String email, int numer) {
			super();
			this.nazwa = nazwa;
			this.imie = imie;
			this.nazwisko = nazwisko;
			this.adres = adres;
			this.email = email;
			this.numer = numer;
		}
	
		
		
		public String getNazwa() {
			return nazwa;
		}

		public void setNazwa(String nazwa) {
			this.nazwa = nazwa;
		}
		public String getImie() {
			return imie;
		}

		public void setImie(String imie) {
			this.imie = imie;
		}

		public String getNazwisko() {
			return nazwisko;
		}

		public void setNazwisko(String nazwisko) {
			this.nazwisko = nazwisko;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getAdres() {
			return adres;
		}

		public void setAdres(String adres) {
			this.adres = adres;
		}
		
		public int getNumer() {
			return numer;
		}

		public void setNumer(int numer) {
			this.numer = numer;
		}
}

		

