package jspTest;

public class StudentModel {
	String name;
	int age;
	String birth;
	
	public StudentModel(String name, int age, String birth) {
		super();
		this.name = name;
		this.age = age;
		this.birth = birth;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
}

