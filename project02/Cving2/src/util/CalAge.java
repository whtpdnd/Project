package util;
import java.time.LocalDate;
public class CalAge 
{
	
	public String DoCal(String value)
	{
		value = value.substring(0,4);
		int new_age = Integer.parseInt(value);
		LocalDate now = LocalDate.now();
		String year = (String) now.toString().subSequence(0,4);
		int new_year = Integer.parseInt(year);
		//System.out.println(age);
		//System.out.println(year);
		int age_cut = new_year - new_age;
		if(age_cut >= 10 || age_cut < 20)
		{
			value = "10";
		}else if(age_cut >= 20 || age_cut <= 29)
		{
			value = "20";
		}else if(age_cut >= 30 || age_cut <= 39)
		{
			value = "30";
		}else if(age_cut >= 40 || age_cut <= 49)
		{
			value = "40";
		}else
		{
			value = "50";
		}
		return value;
		
	}
	
	public static void main(String[] args) 
	{
		String age = "19970517";
		age = age.substring(0,4);
		int new_age = Integer.parseInt(age);
		LocalDate now = LocalDate.now();
		String year = (String) now.toString().subSequence(0,4);
		int new_year = Integer.parseInt(year);
		//System.out.println(age);
		//System.out.println(year);
		int age_cut = new_year - new_age;
		System.out.println(age_cut);
	}

}
