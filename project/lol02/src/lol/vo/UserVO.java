package lol.vo;

public class UserVO 
{
	private String uno;    //ȸ����ȣ
	private String uid;    //���̵�
	private String uname;  //�̸�
	private String uadmin; //�������ڵ�
	
	public void setUno(String uno)       { this.uno = uno;       }
	public void setUid(String uid)       { this.uid = uid;       }
	public void setUname(String uname)   { this.uname = uname;   }
	public void setUadmin(String uadmin) { this.uadmin = uadmin; }
	
	public String getUno()    { return uno;    }
	public String getUid()    { return uid;    }
	public String getUname()  { return uname;  }
	public String getUadmin() {	return uadmin; }
	
}
