package jspTest;

public class Biman {

	String height;
	String weight;
	String strResult;

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
	public String getStrResult() {
		return strResult;
	}
	public void setStrResult(String strResult) {
		this.strResult = strResult;
	}

	public void calcBiman() {
		
		double std = (Integer.parseInt(height) - 100) * 0.85;
		double bmi = Integer.parseInt(weight) / std * 100;
		
		if(bmi<=90) strResult="저체중";
		else if(bmi<=110) strResult="정상";
		else if(bmi<=120) strResult="과체중";
		else strResult="비만";
	}
}



