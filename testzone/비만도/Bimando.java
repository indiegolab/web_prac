package jspTest;

public class Bimando {
	String height;
	String weight;
	public Bimando() {
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	public String fn(String h, String w) {
		double std = Integer.parseInt(h) - 100 * 0.85;
		double bmi = Integer.parseInt(w) / std * 100;
		
		if(bmi<=90)
			return "image/a.jpeg";
		else if(bmi<=110)
			return "image/b.jpeg";
		else if(bmi<=120)
			return "image/c.jpeg";
		else
			return "image/d.jpeg";
	}
	
	public String result(String h, String w) {
		double std = Integer.parseInt(h) - 100 * 0.85;
		double bmi = Integer.parseInt(w) / std * 100;
		
		if(bmi<=90)
			return "저체중";
		else if(bmi<=110)
			return "정상";
		else if(bmi<=120)
			return "과체중";
		else
			return "비만";
	}
}