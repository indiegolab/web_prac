package jspTest;

public class Biman {
	String height;
	String weight;
	String strResult;
	String strImage;
	
	public String getStrResult() {
		return strResult;
	}
	public String getStrImage() {
		return strImage;
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
	public void calcBiman() {
		double std = (Integer.parseInt(height) - 100) * 0.85;
		double bmi = Integer.parseInt(weight) / std * 100;
		
		if(bmi<=90) {
			strResult="저체중";
			strImage= "image/a.jpeg";
		}
		else if(bmi<=110) {
			strResult="정상";
			strImage= "image/b.jpeg";
		}
		else if(bmi<=120) {
			strResult="과제중";
			strImage= "image/c.jpeg";
		}
		else {
			strResult="비만";
			strImage= "image/d.jpeg";
		}
	}
	
}
