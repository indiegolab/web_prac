package jspTest;

public class BMI {
	int weight;
	int height;
	
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	
	public String checkBMI(int weight, int height) {

		double avg_kg = (height - 100)*0.85;
		double BMI = weight/avg_kg*100;
		String rst;
			
		if(BMI <= 90){
			rst = "저체중";
		}else if(BMI > 90 && BMI <= 110){
			rst = "정상";
		}else if(BMI > 110 && BMI <= 120){
			rst = "과체중";
		}else{
			rst = "비만";
		}
		
		return rst;
	}
	
	public String imgBMI(int weight, int height) {

		double avg_kg = (height - 100)*0.85;
		double BMI = weight/avg_kg*100;
		String rst;
			
		if(BMI <= 90){
			rst = "image/img1.jpeg";
		}else if(BMI > 90 && BMI <= 110){
			rst = "image/img2.jpeg";
		}else if(BMI > 110 && BMI <= 120){
			rst = "image/img3.jpeg";
		}else{
			rst = "image/img4.jpeg";
		}
		
		return rst;
	}
}
