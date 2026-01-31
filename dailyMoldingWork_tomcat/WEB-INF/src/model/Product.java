package model;
import java.io.Serializable;

public class Product implements Serializable{
	private int    id;
	private int    flag; //フラグ
	private int    arrangementnumber; //手配番号
	private String workperformancedate; //作業実績日
	private int    workmannumber; //作業担当者
	private float  workmantime; //作業工数
	private String workinghours; //日勤夜勤区分
	private float  machinetime; //機械時間
	private String machinecode; //機械コード
	private int    numbernodefectiveproducts; //良品数
	private int    totalnumberdefects; //合計不良数
	private String remarks; //備考
	private String defectclassificationcode1; //不良分類コード1
	private int    numberdefects1; //不良数1
	private String defectclassificationcode2; //不良分類コード2
	private int    numberdefects2; //不良数2
	private String defectclassificationcode3; //不良分類コード3
	private int    numberdefects3; //不良数3
	private String defectclassificationcode4; //不良分類コード4
	private String numberdefects4; //不良数4
	private String defectclassificationcode5; //不良分類コード5
	private String numberdefects5; //不良数5
	private String defectclassificationcode6; //不良分類コード6
	private String numberdefects6; //不良数6
	private String defectclassificationcode7; //不良分類コード7
	private String numberdefects7; //不良数7
	private String defectclassificationcode8; //不良分類コード8
	private String numberdefects8; //不良数8
	private String defectclassificationcode9; //不良分類コード9
	private String numberdefects9; //不良数9
	private String sparepartnumber1; //予備品番1
	private String sparepartnumber2; //予備品番2
	private String sparepartnumber3; //予備品番3
	private String sparenumberdefects1; //予備不良数1
	private String sparenumberdefects2; //予備不良数2
	private String sparenumberdefects3; //予備不良数3
	private String partnumber; //品番
	
	private float  workmantime_R; //作業工数_R
	private float  machinetime_R; //機械時間_R
	private int    arrangementnumber_R; //手配番号_R
	private int    numbernodefectiveproducts_R; //良品数_R
	private int    totalnumberdefects_R; //合計不良数_R
	private String defectclassificationcode1_R; //不良分類コード1_R
	private int    numberdefects1_R; //不良数1_R
	private String defectclassificationcode2_R; //不良分類コード2_R
	private int    numberdefects2_R; //不良数2_R
	private String defectclassificationcode3_R; //不良分類コード3_R
	private int    numberdefects3_R; //不良数3_R
	private String defectclassificationcode4_R; //不良分類コード4_R
	private String numberdefects4_R; //不良数4_R
	private String defectclassificationcode5_R; //不良分類コード5_R
	private String numberdefects5_R; //不良数5_R
	private String defectclassificationcode6_R; //不良分類コード6_R
	private String numberdefects6_R; //不良数6_R
	private String defectclassificationcode7_R; //不良分類コード7_R
	private String numberdefects7_R; //不良数7_R
	private String defectclassificationcode8_R; //不良分類コード8_R
	private String numberdefects8_R; //不良数8_R
	private String defectclassificationcode9_R; //不良分類コード9_R
	private String numberdefects9_R; //不良数9_R
	private String sparepartnumber1_R; //予備品番1_R
	private String sparepartnumber2_R; //予備品番2_R
	private String sparepartnumber3_R; //予備品番3_R
	private String sparenumberdefects1_R; //予備不良数1_R
	private String sparenumberdefects2_R; //予備不良数2_R
	private String sparenumberdefects3_R; //予備不良数3_R
	private String partnumber_R; //品番_R
	
	public Product(){}
	public Product(int flag,int arrangementnumber,String workperformancedate,int workmannumber,float workmantime,
			String workinghours,float machinetime,String machinecode,int numbernodefectiveproducts,int totalnumberdefects,String remarks,
			String defectclassificationcode1,int numberdefects1,String defectclassificationcode2,int numberdefects2,
			String defectclassificationcode3,int numberdefects3,String defectclassificationcode4,String numberdefects4,
			String defectclassificationcode5,String numberdefects5,String defectclassificationcode6,String numberdefects6,
			String defectclassificationcode7,String numberdefects7,String defectclassificationcode8,String numberdefects8,
			String defectclassificationcode9,String numberdefects9,
			String sparepartnumber1,String sparepartnumber2,String sparepartnumber3,
			String sparenumberdefects1,String sparenumberdefects2,String sparenumberdefects3,String partnumber,
			
			float workmantime_R,float machinetime_R,int arrangementnumber_R,int numbernodefectiveproducts_R,int totalnumberdefects_R,
			String defectclassificationcode1_R,int numberdefects1_R,String defectclassificationcode2_R,int numberdefects2_R,
			String defectclassificationcode3_R,int numberdefects3_R,String defectclassificationcode4_R,String numberdefects4_R,
			String defectclassificationcode5_R,String numberdefects5_R,String defectclassificationcode6_R,String numberdefects6_R,
			String defectclassificationcode7_R,String numberdefects7_R,String defectclassificationcode8_R,String numberdefects8_R,
			String defectclassificationcode9_R,String numberdefects9_R,
			String sparepartnumber1_R,String sparepartnumber2_R,String sparepartnumber3_R,
			String sparenumberdefects1_R,String sparenumberdefects2_R,String sparenumberdefects3_R,String partnumber_R){
		
		this.flag=flag;
		this.arrangementnumber=arrangementnumber;
		this.workperformancedate=workperformancedate;
		this.workmannumber=workmannumber;
		this.workmantime=workmantime;
		this.workinghours=workinghours;
		this.machinetime=machinetime;
		this.machinecode=machinecode;
		this.numbernodefectiveproducts=numbernodefectiveproducts;
		this.totalnumberdefects=totalnumberdefects;
		this.remarks=remarks;
		this.defectclassificationcode1=defectclassificationcode1;
		this.numberdefects1=numberdefects1;
		this.defectclassificationcode2=defectclassificationcode2;
		this.numberdefects2=numberdefects2;
		this.defectclassificationcode3=defectclassificationcode3;
		this.numberdefects3=numberdefects3;
		this.defectclassificationcode4=defectclassificationcode4;
		this.numberdefects4=numberdefects4;
		this.defectclassificationcode5=defectclassificationcode5;
		this.numberdefects5=numberdefects5;
		this.defectclassificationcode6=defectclassificationcode6;
		this.numberdefects6=numberdefects6;
		this.defectclassificationcode7=defectclassificationcode7;
		this.numberdefects7=numberdefects7;
		this.defectclassificationcode8=defectclassificationcode8;
		this.numberdefects8=numberdefects8;
		this.defectclassificationcode9=defectclassificationcode9;
		this.numberdefects9=numberdefects9;
		this.sparepartnumber1=sparepartnumber1;
		this.sparepartnumber2=sparepartnumber2;
		this.sparepartnumber3=sparepartnumber3;
		this.sparenumberdefects1=sparenumberdefects1;
		this.sparenumberdefects2=sparenumberdefects2;
		this.sparenumberdefects3=sparenumberdefects3;
		this.partnumber=partnumber;
		
		this.workmantime_R=workmantime_R;
		this.machinetime_R=machinetime_R;
		this.arrangementnumber_R=arrangementnumber_R;
		this.numbernodefectiveproducts_R=numbernodefectiveproducts_R;
		this.totalnumberdefects_R=totalnumberdefects_R;
		this.defectclassificationcode1_R=defectclassificationcode1_R;
		this.numberdefects1_R=numberdefects1_R;
		this.defectclassificationcode2_R=defectclassificationcode2_R;
		this.numberdefects2_R=numberdefects2_R;
		this.defectclassificationcode3_R=defectclassificationcode3_R;
		this.numberdefects3_R=numberdefects3_R;
		this.defectclassificationcode4_R=defectclassificationcode4_R;
		this.numberdefects4_R=numberdefects4_R;
		this.defectclassificationcode5_R=defectclassificationcode5_R;
		this.numberdefects5_R=numberdefects5_R;
		this.defectclassificationcode6_R=defectclassificationcode6_R;
		this.numberdefects6_R=numberdefects6_R;
		this.defectclassificationcode7_R=defectclassificationcode7_R;
		this.numberdefects7_R=numberdefects7_R;
		this.defectclassificationcode8_R=defectclassificationcode8_R;
		this.numberdefects8_R=numberdefects8_R;
		this.defectclassificationcode9_R=defectclassificationcode9_R;
		this.numberdefects9_R=numberdefects9_R;
		this.sparepartnumber1_R=sparepartnumber1_R;
		this.sparepartnumber2_R=sparepartnumber2_R;
		this.sparepartnumber3_R=sparepartnumber3_R;
		this.sparenumberdefects1_R=sparenumberdefects1_R;
		this.sparenumberdefects2_R=sparenumberdefects2_R;
		this.sparenumberdefects3_R=sparenumberdefects3_R;
		this.partnumber_R=partnumber_R;
	}
	public Product(int id,int flag,int arrangementnumber,String workperformancedate,int workmannumber,float workmantime,
			String workinghours,float machinetime,String machinecode,int numbernodefectiveproducts,int totalnumberdefects,String remarks,
			String defectclassificationcode1,int numberdefects1,String defectclassificationcode2,int numberdefects2,
			String defectclassificationcode3,int numberdefects3,String defectclassificationcode4,String numberdefects4,
			String defectclassificationcode5,String numberdefects5,String defectclassificationcode6,String numberdefects6,
			String defectclassificationcode7,String numberdefects7,String defectclassificationcode8,String numberdefects8,
			String defectclassificationcode9,String numberdefects9,String sparepartnumber1,String sparepartnumber2,String sparepartnumber3,
			String sparenumberdefects1,String sparenumberdefects2,String sparenumberdefects3,String partnumber,
			
			float workmantime_R,float machinetime_R,int arrangementnumber_R,int numbernodefectiveproducts_R,int totalnumberdefects_R,
			String defectclassificationcode1_R,int numberdefects1_R,String defectclassificationcode2_R,int numberdefects2_R,
			String defectclassificationcode3_R,int numberdefects3_R,String defectclassificationcode4_R,String numberdefects4_R,
			String defectclassificationcode5_R,String numberdefects5_R,String defectclassificationcode6_R,String numberdefects6_R,
			String defectclassificationcode7_R,String numberdefects7_R,String defectclassificationcode8_R,String numberdefects8_R,
			String defectclassificationcode9_R,String numberdefects9_R,
			String sparepartnumber1_R,String sparepartnumber2_R,String sparepartnumber3_R,
			String sparenumberdefects1_R,String sparenumberdefects2_R,String sparenumberdefects3_R,String partnumber_R){
		
		this(flag,arrangementnumber,workperformancedate,workmannumber,workmantime,workinghours,machinetime,machinecode,
				numbernodefectiveproducts,totalnumberdefects,remarks,
				defectclassificationcode1,numberdefects1,defectclassificationcode2,numberdefects2,
				defectclassificationcode3,numberdefects3,defectclassificationcode4,numberdefects4,
				defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,
				defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,
				defectclassificationcode9,numberdefects9,sparepartnumber1,sparepartnumber2,sparepartnumber3,
				sparenumberdefects1,sparenumberdefects2,sparenumberdefects3,partnumber,
				
				workmantime_R,machinetime_R,arrangementnumber_R,numbernodefectiveproducts_R,totalnumberdefects_R,
				defectclassificationcode1_R,numberdefects1_R,defectclassificationcode2_R,numberdefects2_R,
				defectclassificationcode3_R,numberdefects3_R,defectclassificationcode4_R,numberdefects4_R,
				defectclassificationcode5_R,numberdefects5_R,defectclassificationcode6_R,numberdefects6_R,
				defectclassificationcode7_R,numberdefects7_R,defectclassificationcode8_R,numberdefects8_R,
				defectclassificationcode9_R,numberdefects9_R,sparepartnumber1_R,sparepartnumber2_R,sparepartnumber3_R,
				sparenumberdefects1_R,sparenumberdefects2_R,sparenumberdefects3_R,partnumber_R);
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public int getArrangementnumber() {
		return arrangementnumber;
	}
	public void setArrangementnumber(int arrangementnumber) {
		this.arrangementnumber = arrangementnumber;
	}
	public String getWorkperformancedate() {
		return workperformancedate;
	}
	public void setWorkperformancedate(String workperformancedate) {
		this.workperformancedate = workperformancedate;
	}
	public int getWorkmannumber() {
		return workmannumber;
	}
	public void setWorkmannumber(int workmannumber) {
		this.workmannumber = workmannumber;
	}
	public float getWorkmantime() {
		return workmantime;
	}
	public void setWorkmantime(float workmantime) {
		this.workmantime = workmantime;
	}
	public String getWorkinghours() {
		return workinghours;
	}
	public void setWorkinghours(String workinghours) {
		this.workinghours = workinghours;
	}
	public float getMachinetime() {
		return machinetime;
	}
	public void setMachinetime(float machinetime) {
		this.machinetime = machinetime;
	}
	public String getMachinecode() {
		return machinecode;
	}
	public void setMachinecode(String machinecode) {
		this.machinecode = machinecode;
	}
	public int getNumbernodefectiveproducts() {
		return numbernodefectiveproducts;
	}
	public void setNumbernodefectiveproducts(int numbernodefectiveproducts) {
		this.numbernodefectiveproducts = numbernodefectiveproducts;
	}
	public int getTotalnumberdefects() {
		return totalnumberdefects;
	}
	public void setTotalnumberdefects(int totalnumberdefects) {
		this.totalnumberdefects = totalnumberdefects;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getDefectclassificationcode1() {
		return defectclassificationcode1;
	}
	public void setDefectclassificationcode1(String defectclassificationcode1) {
		this.defectclassificationcode1 = defectclassificationcode1;
	}
	public int getNumberdefects1() {
		return numberdefects1;
	}
	public void setNumberdefects1(int numberdefects1) {
		this.numberdefects1 = numberdefects1;
	}
	public String getDefectclassificationcode2() {
		return defectclassificationcode2;
	}
	public void setDefectclassificationcode2(String defectclassificationcode2) {
		this.defectclassificationcode2 = defectclassificationcode2;
	}
	public int getNumberdefects2() {
		return numberdefects2;
	}
	public void setNumberdefects2(int numberdefects2) {
		this.numberdefects2 = numberdefects2;
	}
	public String getDefectclassificationcode3() {
		return defectclassificationcode3;
	}
	public void setDefectclassificationcode3(String defectclassificationcode3) {
		this.defectclassificationcode3 = defectclassificationcode3;
	}
	public int getNumberdefects3() {
		return numberdefects3;
	}
	public void setNumberdefects3(int numberdefects3) {
		this.numberdefects3 = numberdefects3;
	}
	public String getDefectclassificationcode4() {
		return defectclassificationcode4;
	}
	public void setDefectclassificationcode4(String defectclassificationcode4) {
		this.defectclassificationcode4 = defectclassificationcode4;
	}
	public String getNumberdefects4() {
		return numberdefects4;
	}
	public void setNumberdefects4(String numberdefects4) {
		this.numberdefects4 = numberdefects4;
	}
	public String getDefectclassificationcode5() {
		return defectclassificationcode5;
	}
	public void setDefectclassificationcode5(String defectclassificationcode5) {
		this.defectclassificationcode5 = defectclassificationcode5;
	}
	public String getNumberdefects5() {
		return numberdefects5;
	}
	public void setNumberdefects5(String numberdefects5) {
		this.numberdefects5 = numberdefects5;
	}
	public String getDefectclassificationcode6() {
		return defectclassificationcode6;
	}
	public void setDefectclassificationcode6(String defectclassificationcode6) {
		this.defectclassificationcode6 = defectclassificationcode6;
	}
	public String getNumberdefects6() {
		return numberdefects6;
	}
	public void setNumberdefects6(String numberdefects6) {
		this.numberdefects6 = numberdefects6;
	}
	public String getDefectclassificationcode7() {
		return defectclassificationcode7;
	}
	public void setDefectclassificationcode7(String defectclassificationcode7) {
		this.defectclassificationcode7 = defectclassificationcode7;
	}
	public String getNumberdefects7() {
		return numberdefects7;
	}
	public void setNumberdefects7(String numberdefects7) {
		this.numberdefects7 = numberdefects7;
	}
	public String getDefectclassificationcode8() {
		return defectclassificationcode8;
	}
	public void setDefectclassificationcode8(String defectclassificationcode8) {
		this.defectclassificationcode8 = defectclassificationcode8;
	}
	public String getNumberdefects8() {
		return numberdefects8;
	}
	public void setNumberdefects8(String numberdefects8) {
		this.numberdefects8 = numberdefects8;
	}
	public String getDefectclassificationcode9() {
		return defectclassificationcode9;
	}
	public void setDefectclassificationcode9(String defectclassificationcode9) {
		this.defectclassificationcode9 = defectclassificationcode9;
	}
	public String getNumberdefects9() {
		return numberdefects9;
	}
	public void setNumberdefects9(String numberdefects9) {
		this.numberdefects9 = numberdefects9;
	}
	public String getSparepartnumber1() {
		return sparepartnumber1;
	}
	public void setSparepartnumber1(String sparepartnumber1) {
		this.sparepartnumber1 = sparepartnumber1;
	}
	public String getSparepartnumber2() {
		return sparepartnumber2;
	}
	public void setSparepartnumber2(String sparepartnumber2) {
		this.sparepartnumber2 = sparepartnumber2;
	}
	public String getSparepartnumber3() {
		return sparepartnumber3;
	}
	public void setSparepartnumber3(String sparepartnumber3) {
		this.sparepartnumber3 = sparepartnumber3;
	}
	public String getSparenumberdefects1() {
		return sparenumberdefects1;
	}
	public void setSparenumberdefects1(String sparenumberdefects1) {
		this.sparenumberdefects1 = sparenumberdefects1;
	}
	public String getSparenumberdefects2() {
		return sparenumberdefects2;
	}
	public void setSparenumberdefects2(String sparenumberdefects2) {
		this.sparenumberdefects2 = sparenumberdefects2;
	}
	public String getSparenumberdefects3() {
		return sparenumberdefects3;
	}
	public void setSparenumberdefects3(String sparenumberdefects3) {
		this.sparenumberdefects3 = sparenumberdefects3;
	}
	public String getPartnumber() {
		return partnumber;
	}
	public void setPartnumber(String partnumber) {
		this.partnumber = partnumber;
	}
	public float getWorkmantime_R() {
		return workmantime_R;
	}
	public void setWorkmantime_R(float workmantime_R) {
		this.workmantime_R = workmantime_R;
	}
	public float getMachinetime_R() {
		return machinetime_R;
	}
	public void setMachinetime_R(float machinetime_R) {
		this.machinetime_R = machinetime_R;
	}
	public int getArrangementnumber_R() {
		return arrangementnumber_R;
	}
	public void setArrangementnumber_R(int arrangementnumber_R) {
		this.arrangementnumber_R = arrangementnumber_R;
	}
	public int getNumbernodefectiveproducts_R() {
		return numbernodefectiveproducts_R;
	}
	public void setNumbernodefectiveproducts_R(int numbernodefectiveproducts_R) {
		this.numbernodefectiveproducts_R = numbernodefectiveproducts_R;
	}
	public int getTotalnumberdefects_R() {
		return totalnumberdefects_R;
	}
	public void setTotalnumberdefects_R(int totalnumberdefects_R) {
		this.totalnumberdefects_R = totalnumberdefects_R;
	}
	public String getDefectclassificationcode1_R() {
		return defectclassificationcode1_R;
	}
	public void setDefectclassificationcode1_R(String defectclassificationcode1_R) {
		this.defectclassificationcode1_R = defectclassificationcode1_R;
	}
	public int getNumberdefects1_R() {
		return numberdefects1_R;
	}
	public void setNumberdefects1_R(int numberdefects1_R) {
		this.numberdefects1_R = numberdefects1_R;
	}
	public String getDefectclassificationcode2_R() {
		return defectclassificationcode2_R;
	}
	public void setDefectclassificationcode2_R(String defectclassificationcode2_R) {
		this.defectclassificationcode2_R = defectclassificationcode2_R;
	}
	public int getNumberdefects2_R() {
		return numberdefects2_R;
	}
	public void setNumberdefects2_R(int numberdefects2_R) {
		this.numberdefects2_R = numberdefects2_R;
	}
	public String getDefectclassificationcode3_R() {
		return defectclassificationcode3_R;
	}
	public void setDefectclassificationcode3_R(String defectclassificationcode3_R) {
		this.defectclassificationcode3_R = defectclassificationcode3_R;
	}
	public int getNumberdefects3_R() {
		return numberdefects3_R;
	}
	public void setNumberdefects3_R(int numberdefects3_R) {
		this.numberdefects3_R = numberdefects3_R;
	}
	public String getDefectclassificationcode4_R() {
		return defectclassificationcode4_R;
	}
	public void setDefectclassificationcode4_R(String defectclassificationcode4_R) {
		this.defectclassificationcode4_R = defectclassificationcode4_R;
	}
	public String getNumberdefects4_R() {
		return numberdefects4_R;
	}
	public void setNumberdefects4_R(String numberdefects4_R) {
		this.numberdefects4_R = numberdefects4_R;
	}
	public String getDefectclassificationcode5_R() {
		return defectclassificationcode5_R;
	}
	public void setDefectclassificationcode5_R(String defectclassificationcode5_R) {
		this.defectclassificationcode5_R = defectclassificationcode5_R;
	}
	public String getNumberdefects5_R() {
		return numberdefects5_R;
	}
	public void setNumberdefects5_R(String numberdefects5_R) {
		this.numberdefects5_R = numberdefects5_R;
	}
	public String getDefectclassificationcode6_R() {
		return defectclassificationcode6_R;
	}
	public void setDefectclassificationcode6_R(String defectclassificationcode6_R) {
		this.defectclassificationcode6_R = defectclassificationcode6_R;
	}
	public String getNumberdefects6_R() {
		return numberdefects6_R;
	}
	public void setNumberdefects6_R(String numberdefects6_R) {
		this.numberdefects6_R = numberdefects6_R;
	}
	public String getDefectclassificationcode7_R() {
		return defectclassificationcode7_R;
	}
	public void setDefectclassificationcode7_R(String defectclassificationcode7_R) {
		this.defectclassificationcode7_R = defectclassificationcode7_R;
	}
	public String getNumberdefects7_R() {
		return numberdefects7_R;
	}
	public void setNumberdefects7_R(String numberdefects7_R) {
		this.numberdefects7_R = numberdefects7_R;
	}
	public String getDefectclassificationcode8_R() {
		return defectclassificationcode8_R;
	}
	public void setDefectclassificationcode8_R(String defectclassificationcode8_R) {
		this.defectclassificationcode8_R = defectclassificationcode8_R;
	}
	public String getNumberdefects8_R() {
		return numberdefects8_R;
	}
	public void setNumberdefects8_R(String numberdefects8_R) {
		this.numberdefects8_R = numberdefects8_R;
	}
	public String getDefectclassificationcode9_R() {
		return defectclassificationcode9_R;
	}
	public void setDefectclassificationcode9_R(String defectclassificationcode9_R) {
		this.defectclassificationcode9_R = defectclassificationcode9_R;
	}
	public String getNumberdefects9_R() {
		return numberdefects9_R;
	}
	public void setNumberdefects9_R(String numberdefects9_R) {
		this.numberdefects9_R = numberdefects9_R;
	}
	public String getSparepartnumber1_R() {
		return sparepartnumber1_R;
	}
	public void setSparepartnumber1_R(String sparepartnumber1_R) {
		this.sparepartnumber1_R = sparepartnumber1_R;
	}
	public String getSparepartnumber2_R() {
		return sparepartnumber2_R;
	}
	public void setSparepartnumber2_R(String sparepartnumber2_R) {
		this.sparepartnumber2_R = sparepartnumber2_R;
	}
	public String getSparepartnumber3_R() {
		return sparepartnumber3_R;
	}
	public void setSparepartnumber3_R(String sparepartnumber3_R) {
		this.sparepartnumber3_R = sparepartnumber3_R;
	}
	public String getSparenumberdefects1_R() {
		return sparenumberdefects1_R;
	}
	public void setSparenumberdefects1_R(String sparenumberdefects1_R) {
		this.sparenumberdefects1_R = sparenumberdefects1_R;
	}
	public String getSparenumberdefects2_R() {
		return sparenumberdefects2_R;
	}
	public void setSparenumberdefects2_R(String sparenumberdefects2_R) {
		this.sparenumberdefects2_R = sparenumberdefects2_R;
	}
	public String getSparenumberdefects3_R() {
		return sparenumberdefects3_R;
	}
	public void setSparenumberdefects3_R(String sparenumberdefects3_R) {
		this.sparenumberdefects3_R = sparenumberdefects3_R;
	}
	public String getPartnumber_R() {
		return partnumber_R;
	}
	public void setPartnumber_R(String partnumber_R) {
		this.partnumber_R = partnumber_R;
	}
}