package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.Product;

public class ProductDAO {
	private Connection db;
	private PreparedStatement ps;
	private ResultSet rs;

private void getConnection() throws NamingException, SQLException{
			Context context=new InitialContext();
			DataSource ds = (DataSource) context.lookup("java:comp/env/jdbc/jsp");
			this.db=ds.getConnection();
	}
	private void disconnect(){
		try{
			if(rs != null){rs.close();}
			if(ps != null){ps.close();}
			if(db != null){db.close();}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public List<Product> findAll(){

		List<Product> productList=new ArrayList<>();
		try {
			this.getConnection();
			ps=db.prepareStatement("SELECT * FROM products ORDER BY id DESC");
			rs=ps.executeQuery();
			while(rs.next()){
				int id=rs.getInt("id");
				int flag=rs.getInt("flag");
				int arrangementnumber=rs.getInt("arrangementnumber");
				String workperformancedate=rs.getString("workperformancedate");
				int workmannumber=rs.getInt("workmannumber");
				float workmantime=rs.getFloat("workmantime");
				String workinghours=rs.getString("workinghours");
				float machinetime=rs.getFloat("machinetime");
				String machinecode=rs.getString("machinecode");
				int numbernodefectiveproducts=rs.getInt("numbernodefectiveproducts");
				int totalnumberdefects=rs.getInt("totalnumberdefects");
				String remarks=rs.getString("remarks");
				String defectclassificationcode1=rs.getString("defectclassificationcode1");
				int numberdefects1=rs.getInt("numberdefects1");
				String defectclassificationcode2=rs.getString("defectclassificationcode2");
				int numberdefects2=rs.getInt("numberdefects2");
				String defectclassificationcode3=rs.getString("defectclassificationcode3");
				int numberdefects3=rs.getInt("numberdefects3");
				String defectclassificationcode4=rs.getString("defectclassificationcode4");
				String numberdefects4=rs.getString("numberdefects4");
				String defectclassificationcode5=rs.getString("defectclassificationcode5");
				String numberdefects5=rs.getString("numberdefects5");
				String defectclassificationcode6=rs.getString("defectclassificationcode6");
				String numberdefects6=rs.getString("numberdefects6");
				String defectclassificationcode7=rs.getString("defectclassificationcode7");
				String numberdefects7=rs.getString("numberdefects7");
				String defectclassificationcode8=rs.getString("defectclassificationcode8");
				String numberdefects8=rs.getString("numberdefects8");
				String defectclassificationcode9=rs.getString("defectclassificationcode9");
				String numberdefects9=rs.getString("numberdefects9");
				String sparepartnumber1=rs.getString("sparepartnumber1");
				String sparepartnumber2=rs.getString("sparepartnumber2");
				String sparepartnumber3=rs.getString("sparepartnumber3");
				String sparenumberdefects1=rs.getString("sparenumberdefects1");
				String sparenumberdefects2=rs.getString("sparenumberdefects2");
				String sparenumberdefects3=rs.getString("sparenumberdefects3");

				Product product=new Product(id,flag,arrangementnumber,workperformancedate,workmannumber,workmantime,
						workinghours,machinetime,machinecode,numbernodefectiveproducts,totalnumberdefects,remarks,
						defectclassificationcode1,numberdefects1,defectclassificationcode2,numberdefects2,
						defectclassificationcode3,numberdefects3,defectclassificationcode4,numberdefects4,
						defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,
						defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,
						defectclassificationcode9,numberdefects9,
						sparepartnumber1,sparepartnumber2,sparepartnumber3,
						sparenumberdefects1,sparenumberdefects2,sparenumberdefects3);
				
				productList.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return productList;
	}
	public boolean insertOne(Product product){
		try {
			this.getConnection();
			ps=db.prepareStatement("INSERT INTO products(flag,arrangementnumber,workperformancedate,workmannumber,"
					+ "workmantime,workinghours,machinetime,machinecode,numbernodefectiveproducts,totalnumberdefects,remarks,"
					+ "defectclassificationcode1,numberdefects1,defectclassificationcode2,numberdefects2,defectclassificationcode3,numberdefects3,"
					+ "defectclassificationcode4,numberdefects4,defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,"
					+ "defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,defectclassificationcode9,numberdefects9,"
					+ "sparepartnumber1,sparepartnumber2,sparepartnumber3,"
					+ "sparenumberdefects1,sparenumberdefects2,sparenumberdefects3) "
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,product.getFlag());
			ps.setInt(2,product.getArrangementnumber());
			ps.setString(3, product.getWorkperformancedate());
			ps.setInt(4,product.getWorkmannumber());
			ps.setFloat(5, product.getWorkmantime());
			ps.setString(6, product.getWorkinghours());
			ps.setFloat(7, product.getMachinetime());
			ps.setString(8, product.getMachinecode());
			ps.setInt(9, product.getNumbernodefectiveproducts());
			ps.setInt(10, product.getTotalnumberdefects());
			ps.setString(11, product.getRemarks());
			ps.setString(12, product.getDefectclassificationcode1());
			ps.setInt(13, product.getNumberdefects1());
			ps.setString(14, product.getDefectclassificationcode2());
			ps.setInt(15, product.getNumberdefects2());
			ps.setString(16, product.getDefectclassificationcode3());
			ps.setInt(17, product.getNumberdefects3());
			ps.setString(18, product.getDefectclassificationcode4());
			ps.setString(19, product.getNumberdefects4());
			ps.setString(20, product.getDefectclassificationcode5());
			ps.setString(21, product.getNumberdefects5());
			ps.setString(22, product.getDefectclassificationcode6());
			ps.setString(23, product.getNumberdefects6());
			ps.setString(24, product.getDefectclassificationcode7());
			ps.setString(25, product.getNumberdefects7());
			ps.setString(26, product.getDefectclassificationcode8());
			ps.setString(27, product.getNumberdefects8());
			ps.setString(28, product.getDefectclassificationcode9());
			ps.setString(29, product.getNumberdefects9());
			ps.setString(30, product.getSparepartnumber1());
			ps.setString(31, product.getSparepartnumber2());
			ps.setString(32, product.getSparepartnumber3());
			ps.setString(33, product.getSparenumberdefects1());
			ps.setString(34, product.getSparenumberdefects2());
			ps.setString(35, product.getSparenumberdefects3());
			
			int result=ps.executeUpdate();
			if(result != 1){
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return true;
	}
	public Product findOne(int id){
		Product product=null;
		try{
			this.getConnection();
			ps=db.prepareStatement("SELECT * FROM products WHERE id=?");
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if(rs.next()){
				int flag=rs.getInt("flag");
				int arrangementnumber=rs.getInt("arrangementnumber");
				String workperformancedate=rs.getString("workperformancedate");
				int workmannumber=rs.getInt("workmannumber");
				float workmantime=rs.getFloat("workmantime");
				String workinghours=rs.getString("workinghours");
				float machinetime=rs.getFloat("machinetime");
				String machinecode=rs.getString("machinecode");
				int numbernodefectiveproducts=rs.getInt("numbernodefectiveproducts");
				int totalnumberdefects=rs.getInt("totalnumberdefects");
				String remarks=rs.getString("remarks");
				String defectclassificationcode1=rs.getString("defectclassificationcode1");
				int numberdefects1=rs.getInt("numberdefects1");
				String defectclassificationcode2=rs.getString("defectclassificationcode2");
				int numberdefects2=rs.getInt("numberdefects2");
				String defectclassificationcode3=rs.getString("defectclassificationcode3");
				int numberdefects3=rs.getInt("numberdefects3");
				String defectclassificationcode4=rs.getString("defectclassificationcode4");
				String numberdefects4=rs.getString("numberdefects4");
				String defectclassificationcode5=rs.getString("defectclassificationcode5");
				String numberdefects5=rs.getString("numberdefects5");
				String defectclassificationcode6=rs.getString("defectclassificationcode6");
				String numberdefects6=rs.getString("numberdefects6");
				String defectclassificationcode7=rs.getString("defectclassificationcode7");
				String numberdefects7=rs.getString("numberdefects7");
				String defectclassificationcode8=rs.getString("defectclassificationcode8");
				String numberdefects8=rs.getString("numberdefects8");
				String defectclassificationcode9=rs.getString("defectclassificationcode9");
				String numberdefects9=rs.getString("numberdefects9");
				String sparepartnumber1=rs.getString("sparepartnumber1");
				String sparepartnumber2=rs.getString("sparepartnumber2");
				String sparepartnumber3=rs.getString("sparepartnumber3");
				String sparenumberdefects1=rs.getString("sparenumberdefects1");
				String sparenumberdefects2=rs.getString("sparenumberdefects2");
				String sparenumberdefects3=rs.getString("sparenumberdefects3");

				
				product=new Product(id,flag,arrangementnumber,workperformancedate,workmannumber,workmantime,
						workinghours,machinetime,machinecode,numbernodefectiveproducts,totalnumberdefects,remarks,
						defectclassificationcode1,numberdefects1,defectclassificationcode2,numberdefects2,
						defectclassificationcode3,numberdefects3,defectclassificationcode4,numberdefects4,
						defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,
						defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,
						defectclassificationcode9,numberdefects9,
						sparepartnumber1,sparepartnumber2,sparepartnumber3,
						sparenumberdefects1,sparenumberdefects2,sparenumberdefects3);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return product;
	}
	public boolean updateOne(Product product){
		try{
			this.getConnection();
			ps=db.prepareStatement("UPDATE products SET flag=?,arrangementnumber=?,workperformancedate=?,workmannumber=?,"
					+ "workmantime=?,workinghours=?,machinetime=?,machinecode=?,numbernodefectiveproducts=?,totalnumberdefects=?,remarks=?,"
					+ "defectclassificationcode1=?,numberdefects1=?,defectclassificationcode2=?,numberdefects2=?,"
					+ "defectclassificationcode3=?,numberdefects3=?,defectclassificationcode4=?,numberdefects4=?,"
					+ "defectclassificationcode5=?,numberdefects5=?,defectclassificationcode6=?,numberdefects6=?,"
					+ "defectclassificationcode7=?,numberdefects7=?,defectclassificationcode8=?,numberdefects8=?,"
					+ "defectclassificationcode9=?,numberdefects9=?,"
					+ "sparepartnumber1=?,sparepartnumber2=?,sparepartnumber3=?,"
					+ "sparenumberdefects1=?,sparenumberdefects2=?,sparenumberdefects3=?"
					+ "WHERE id=?");
			
			ps.setInt(1, product.getFlag());
			ps.setInt(2, product.getArrangementnumber());
			ps.setString(3, product.getWorkperformancedate());
			ps.setInt(4, product.getWorkmannumber());
			ps.setFloat(5, product.getWorkmantime());
			ps.setString(6, product.getWorkinghours());
			ps.setFloat(7, product.getMachinetime());
			ps.setString(8, product.getMachinecode());
			ps.setInt(9, product.getNumbernodefectiveproducts());
			ps.setInt(10, product.getTotalnumberdefects());
			ps.setString(11, product.getRemarks());
			ps.setString(12, product.getDefectclassificationcode1());
			ps.setInt(13, product.getNumberdefects1());
			ps.setString(14, product.getDefectclassificationcode2());
			ps.setInt(15, product.getNumberdefects2());
			ps.setString(16, product.getDefectclassificationcode3());
			ps.setInt(17, product.getNumberdefects3());
			ps.setString(18, product.getDefectclassificationcode4());
			ps.setString(19, product.getNumberdefects4());
			ps.setString(20, product.getDefectclassificationcode5());
			ps.setString(21, product.getNumberdefects5());
			ps.setString(22, product.getDefectclassificationcode6());
			ps.setString(23, product.getNumberdefects6());
			ps.setString(24, product.getDefectclassificationcode7());
			ps.setString(25, product.getNumberdefects7());
			ps.setString(26, product.getDefectclassificationcode8());
			ps.setString(27, product.getNumberdefects8());
			ps.setString(28, product.getDefectclassificationcode9());
			ps.setString(29, product.getNumberdefects9());
			ps.setString(30, product.getSparepartnumber1());
			ps.setString(31, product.getSparepartnumber2());
			ps.setString(32, product.getSparepartnumber3());
			ps.setString(33, product.getSparenumberdefects1());
			ps.setString(34, product.getSparenumberdefects2());
			ps.setString(35, product.getSparenumberdefects3());

			ps.setInt(36, product.getId());
			int result=ps.executeUpdate();
			if(result != 1){
				return false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return true;
	}
	public boolean deleteOne(int id){

		try{
			this.getConnection();
			ps=db.prepareStatement("DELETE FROM products WHERE id=?");
			ps.setInt(1, id);
			int result=ps.executeUpdate();
			if(result != 1){
				return false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return true;
	}
	public Product downloadOne(int id){
		Product product=null;
		
		try{
			this.getConnection();
			ps=db.prepareStatement("SELECT * FROM products WHERE id=?");
			ps.setInt(1, id);
			rs=ps.executeQuery();
			
			if(rs.next()){
				
				//csvのファイル名
				String fileName = generateFileName(rs.getString("workperformancedate"),rs.getInt("arrangementnumber"),rs.getString("machinecode"),rs.getString("workinghours"));
				PrintWriter csvWriter = new PrintWriter("E:\\Program Files/"+ fileName, "Shift-JIS");
				
				// ヘッダー行
				csvWriter.append("フラグ,手配番号,作業実績日,作業担当者,日勤夜勤区分,良品数,合計不良数,作業工数,機械時間,機械コード,備考,"
						+ "不良分類コード1,不良数1,不良分類コード2,不良数2,不良分類コード3,不良数3,"
						+ "不良分類コード4,不良数4,不良分類コード5,不良数5,不良分類コード6,不良数6,"
						+ "不良分類コード7,不良数7,不良分類コード8,不良数8,不良分類コード9,不良数9,"
						+ "予備品番1,予備品番2,予備品番3,予備不良数1,予備不良数2,予備不良数3");
                csvWriter.append("\n");

                // データ行
                csvWriter.append(rs.getInt("flag") + ",");
                csvWriter.append(rs.getInt("arrangementnumber") + ",");
                csvWriter.append(rs.getString("workperformancedate") + ",");
                csvWriter.append(rs.getInt("workmannumber") + ",");
                csvWriter.append(rs.getString("workinghours") + ",");
                csvWriter.append(rs.getInt("numbernodefectiveproducts") + ",");
                csvWriter.append(rs.getInt("totalnumberdefects") + ",");
                csvWriter.append(rs.getFloat("workmantime") + ",");
                csvWriter.append(rs.getFloat("machinetime") + ",");
                csvWriter.append(rs.getString("machinecode") + ",");
                csvWriter.append(rs.getString("remarks") + ",");
                csvWriter.append(rs.getString("defectclassificationcode1") + ",");
                csvWriter.append(rs.getInt("numberdefects1") + ",");
                csvWriter.append(rs.getString("defectclassificationcode2") + ",");
                csvWriter.append(rs.getInt("numberdefects2") + ",");
                csvWriter.append(rs.getString("defectclassificationcode3") + ",");
                csvWriter.append(rs.getInt("numberdefects3") + ",");
                csvWriter.append(rs.getString("defectclassificationcode4") + ",");
                csvWriter.append(rs.getString("numberdefects4") + ",");
                csvWriter.append(rs.getString("defectclassificationcode5") + ",");
                csvWriter.append(rs.getString("numberdefects5") + ",");
                csvWriter.append(rs.getString("defectclassificationcode6") + ",");
                csvWriter.append(rs.getString("numberdefects6") + ",");
                csvWriter.append(rs.getString("defectclassificationcode7") + ",");
                csvWriter.append(rs.getString("numberdefects7") + ",");
                csvWriter.append(rs.getString("defectclassificationcode8") + ",");
                csvWriter.append(rs.getString("numberdefects8") + ",");
                csvWriter.append(rs.getString("defectclassificationcode9") + ",");
                csvWriter.append(rs.getString("numberdefects9") + ",");
                csvWriter.append(rs.getString("sparepartnumber1") + ",");
                csvWriter.append(rs.getString("sparepartnumber2") + ",");
                csvWriter.append(rs.getString("sparepartnumber3") + ",");
                csvWriter.append(rs.getString("sparenumberdefects1") + ",");
                csvWriter.append(rs.getString("sparenumberdefects2") + ",");
                csvWriter.append(rs.getString("sparenumberdefects3") + ",");
                
                // 他のカラムに対する処理も同様に行う
                csvWriter.append("\n");
                //ファイルへの書き込み
                csvWriter.flush();
                //ストリームを閉じる
                csvWriter.close();
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			this.disconnect();
		}
		return product;
	}
	private String generateFileName(String  workperformancedate,int  arrangementnumber,String  machinecode,String  workinghours) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyMMdd");
        String formattedDate = dateFormat.format(Date.valueOf(workperformancedate));
        
        return "SG_" + formattedDate + "_" + arrangementnumber + "_" + machinecode + "_" +  workinghours + ".csv";
    }
}