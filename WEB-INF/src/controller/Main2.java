package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.BacklogDAO;
import dao.ProductDAO;
import model.Product;
import model.User;

@WebServlet("/main2")
public class Main2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductDAO dao=new ProductDAO();
		String action=request.getParameter("action");
		if(action != null && action.equals("update")){
			Product product=dao.findOne(Integer.parseInt(request.getParameter("id")));
			request.setAttribute("product", product);
			request.setAttribute("msg", "項目を編集してください。");
		}
		List<Product> list=dao.findAll();
		request.setAttribute("list", list);

	    // セッションスコープからユーザー情報を取得
	    HttpSession session = request.getSession();
	    User loginUser = (User) session.getAttribute("loginUser");

	    // フォワード
	    RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/view/main2.jsp");
	    rd.forward(request, response);
	    	
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    BacklogDAO dao2 = new BacklogDAO(); // ✅ `BacklogDAO` を使用

	    request.setCharacterEncoding("UTF-8");
	    response.setContentType("application/json;charset=UTF-8");

		String arrangementnumber = request.getParameter("arrangementnumber");
		String partnumber = request.getParameter("partnumber");
		
	    System.out.println("Received arrangementnumber via POST: " + arrangementnumber);
	    
	    if (arrangementnumber != null && !arrangementnumber.isEmpty() && partnumber == null) {
	        try {
	            // データベースから品番を取得
	            List<Product> partnumberList = dao2.selectPartnumber(arrangementnumber);

	            // レスポンスのコンテンツタイプを設定
	            response.setContentType("application/json;charset=UTF-8");

	            try (PrintWriter out = response.getWriter()) {
	                if (partnumberList == null || partnumberList.isEmpty()) {
	                    response.setStatus(HttpServletResponse.SC_NOT_FOUND); // 404エラー
	                    out.write("{\"error\":\"品番リストが見つかりませんでした。\"}");
	                    
	                } else {
	                    String json = new Gson().toJson(partnumberList);
	                    System.out.println("取得したデータ (JSON変換後): " + json); // ログで確認
	                    out.write(json);
	                }
	                out.flush();
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	            response.setContentType("application/json;charset=UTF-8");

	            try (PrintWriter out = response.getWriter()) {
	                out.write("{\"error\":\"サーバーでエラーが発生しました。詳細: " + e.getMessage() + "\"}");
	                out.flush();
	            }
	        }
	    }
	    
		String arrangementnumber_R = request.getParameter("arrangementnumber_R");
		String partnumber_R = request.getParameter("partnumber_R");
		
	    System.out.println("Received arrangementnumber_R via POST: " + arrangementnumber_R);
	    
	    if (arrangementnumber_R != null && !arrangementnumber_R.isEmpty() && partnumber_R == null) {
	        try {
	            // データベースから予備品番を取得
	            List<Product> partnumber_RList = dao2.selectPartnumber_R(arrangementnumber_R);

	            // レスポンスのコンテンツタイプを設定
	            response.setContentType("application/json;charset=UTF-8");

	            try (PrintWriter out = response.getWriter()) {
	                if (partnumber_RList == null || partnumber_RList.isEmpty()) {
	                    response.setStatus(HttpServletResponse.SC_NOT_FOUND); // 404エラー
	                    out.write("{\"error\":\"品番が見つかりませんでした。\"}");
	                } else {
	                    String json = new Gson().toJson(partnumber_RList);
	                    System.out.println("取得したデータ (JSON変換後): " + json); // ログで確認
	                    out.write(json);
	                }
	                out.flush();
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	            response.setContentType("application/json;charset=UTF-8");

	            try (PrintWriter out = response.getWriter()) {
	                out.write("{\"error\":\"サーバーでエラーが発生しました。詳細: " + e.getMessage() + "\"}");
	                out.flush();
	            }
	        }
	    }

	    
		String flag=request.getParameter("flag");
		String workperformancedate=request.getParameter("workperformancedate");
		String workmannumber=request.getParameter("workmannumber");
		String workmantime=request.getParameter("workmantime");
		String workinghours=request.getParameter("workinghours");
		String machinetime=request.getParameter("machinetime");
		String machinecode=request.getParameter("machinecode");
		String numbernodefectiveproducts=request.getParameter("numbernodefectiveproducts");
		String totalnumberdefects=request.getParameter("totalnumberdefects");
		String remarks=request.getParameter("remarks");
		String defectclassificationcode1=request.getParameter("defectclassificationcode1");
		String numberdefects1=request.getParameter("numberdefects1");
		String defectclassificationcode2=request.getParameter("defectclassificationcode2");
		String numberdefects2=request.getParameter("numberdefects2");
		String defectclassificationcode3=request.getParameter("defectclassificationcode3");
		String numberdefects3=request.getParameter("numberdefects3");
		String defectclassificationcode4=request.getParameter("defectclassificationcode4");
		String numberdefects4=request.getParameter("numberdefects4");
		String defectclassificationcode5=request.getParameter("defectclassificationcode5");
		String numberdefects5=request.getParameter("numberdefects5");
		String defectclassificationcode6=request.getParameter("defectclassificationcode6");
		String numberdefects6=request.getParameter("numberdefects6");
		String defectclassificationcode7=request.getParameter("defectclassificationcode7");
		String numberdefects7=request.getParameter("numberdefects7");
		String defectclassificationcode8=request.getParameter("defectclassificationcode8");
		String numberdefects8=request.getParameter("numberdefects8");
		String defectclassificationcode9=request.getParameter("defectclassificationcode9");
		String numberdefects9=request.getParameter("numberdefects9");
		String sparepartnumber1=request.getParameter("sparepartnumber1");
		String sparepartnumber2=request.getParameter("sparepartnumber2");
		String sparepartnumber3=request.getParameter("sparepartnumber3");
		String sparenumberdefects1=request.getParameter("sparenumberdefects1");
		String sparenumberdefects2=request.getParameter("sparenumberdefects2");
		String sparenumberdefects3=request.getParameter("sparenumberdefects3");
		
		String workmantime_R=request.getParameter("workmantime_R"); //作業工数_R
		String machinetime_R=request.getParameter("machinetime_R"); //機械時間_R
		String numbernodefectiveproducts_R=request.getParameter("numbernodefectiveproducts_R"); //良品数_R
		String totalnumberdefects_R=request.getParameter("totalnumberdefects_R"); //合計不良数_R
		String defectclassificationcode1_R=request.getParameter("defectclassificationcode1_R"); //不良分類コード1_R
		String numberdefects1_R=request.getParameter("numberdefects1_R"); //不良数1_R
		String defectclassificationcode2_R=request.getParameter("defectclassificationcode2_R"); //不良分類コード2_R
		String numberdefects2_R=request.getParameter("numberdefects2_R"); //不良数2_R
		String defectclassificationcode3_R=request.getParameter("defectclassificationcode3_R"); //不良分類コード3_R
		String numberdefects3_R=request.getParameter("numberdefects3_R"); //不良数3_R
		String defectclassificationcode4_R=request.getParameter("defectclassificationcode4_R"); //不良分類コード4_R
		String numberdefects4_R=request.getParameter("numberdefects4_R"); //不良数4_R
		String defectclassificationcode5_R=request.getParameter("defectclassificationcode5_R"); //不良分類コード5_R
		String numberdefects5_R=request.getParameter("numberdefects5_R"); //不良数5_R
		String defectclassificationcode6_R=request.getParameter("defectclassificationcode6_R"); //不良分類コード6_R
		String numberdefects6_R=request.getParameter("numberdefects6_R"); //不良数6_R
		String defectclassificationcode7_R=request.getParameter("defectclassificationcode7_R"); //不良分類コード7_R
		String numberdefects7_R=request.getParameter("numberdefects7_R"); //不良数7_R
		String defectclassificationcode8_R=request.getParameter("defectclassificationcode8_R"); //不良分類コード8_R
		String numberdefects8_R=request.getParameter("numberdefects8_R"); //不良数8_R
		String defectclassificationcode9_R=request.getParameter("defectclassificationcode9_R"); //不良分類コード9_R
		String numberdefects9_R=request.getParameter("numberdefects9_R"); //不良数9_R
		String sparepartnumber1_R=request.getParameter("sparepartnumber1_R"); //予備品番1_R
		String sparepartnumber2_R=request.getParameter("sparepartnumber2_R"); //予備品番2_R
		String sparepartnumber3_R=request.getParameter("sparepartnumber3_R"); //予備品番3_R
		String sparenumberdefects1_R=request.getParameter("sparenumberdefects1_R"); //予備不良数1_R
		String sparenumberdefects2_R=request.getParameter("sparenumberdefects2_R"); //予備不良数2_R
		String sparenumberdefects3_R=request.getParameter("sparenumberdefects3_R"); //予備不良数3_R
		
		ProductDAO dao=new ProductDAO();
		if(arrangementnumber.isEmpty() || workperformancedate.isEmpty()){
			request.setAttribute("err","未記入の項目があります！");
		}else{
			String id=request.getParameter("id");
			if(id != null){
				dao.updateOne(new Product(Integer.parseInt(id),Integer.parseInt(flag),Integer.parseInt(arrangementnumber),
						workperformancedate,Integer.parseInt(workmannumber),Float.parseFloat(workmantime),workinghours,
						Float.parseFloat(machinetime),machinecode,Integer.parseInt(numbernodefectiveproducts),Integer.parseInt(totalnumberdefects),remarks,
						defectclassificationcode1,Integer.parseInt(numberdefects1),defectclassificationcode2,Integer.parseInt(numberdefects2),
						defectclassificationcode3,Integer.parseInt(numberdefects3),defectclassificationcode4,numberdefects4,
						defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,
						defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,
						defectclassificationcode9,numberdefects9,
						sparepartnumber1,sparepartnumber2,sparepartnumber3,
						sparenumberdefects1,sparenumberdefects2,sparenumberdefects3,partnumber,
						Float.parseFloat(workmantime_R),Float.parseFloat(machinetime_R),Integer.parseInt(arrangementnumber_R),
						Integer.parseInt(numbernodefectiveproducts_R),Integer.parseInt(totalnumberdefects_R),
						defectclassificationcode1_R,Integer.parseInt(numberdefects1_R),defectclassificationcode2_R,Integer.parseInt(numberdefects2_R),
						defectclassificationcode3_R,Integer.parseInt(numberdefects3_R),defectclassificationcode4_R,numberdefects4_R,
						defectclassificationcode5_R,numberdefects5_R,defectclassificationcode6_R,numberdefects6_R,
						defectclassificationcode7_R,numberdefects7_R,defectclassificationcode8_R,numberdefects8_R,
						defectclassificationcode9_R,numberdefects9_R,
						sparepartnumber1_R,sparepartnumber2_R,sparepartnumber3_R,
						sparenumberdefects1_R,sparenumberdefects2_R,sparenumberdefects3_R,partnumber_R));
				request.setAttribute("msg","1件更新しました。");
			}else{
				dao.insertOne(new Product(Integer.parseInt(flag),Integer.parseInt(arrangementnumber),
						workperformancedate,Integer.parseInt(workmannumber),Float.parseFloat(workmantime),workinghours,
						Float.parseFloat(machinetime),machinecode,Integer.parseInt(numbernodefectiveproducts),Integer.parseInt(totalnumberdefects),remarks,
						defectclassificationcode1,Integer.parseInt(numberdefects1),defectclassificationcode2,Integer.parseInt(numberdefects2),
						defectclassificationcode3,Integer.parseInt(numberdefects3),defectclassificationcode4,numberdefects4,
						defectclassificationcode5,numberdefects5,defectclassificationcode6,numberdefects6,
						defectclassificationcode7,numberdefects7,defectclassificationcode8,numberdefects8,
						defectclassificationcode9,numberdefects9,
						sparepartnumber1,sparepartnumber2,sparepartnumber3,
						sparenumberdefects1,sparenumberdefects2,sparenumberdefects3,partnumber,
						Float.parseFloat(workmantime_R),Float.parseFloat(machinetime_R),Integer.parseInt(arrangementnumber_R),
						Integer.parseInt(numbernodefectiveproducts_R),Integer.parseInt(totalnumberdefects_R),
						defectclassificationcode1_R,Integer.parseInt(numberdefects1_R),defectclassificationcode2_R,Integer.parseInt(numberdefects2_R),
						defectclassificationcode3_R,Integer.parseInt(numberdefects3_R),defectclassificationcode4_R,numberdefects4_R,
						defectclassificationcode5_R,numberdefects5_R,defectclassificationcode6_R,numberdefects6_R,
						defectclassificationcode7_R,numberdefects7_R,defectclassificationcode8_R,numberdefects8_R,
						defectclassificationcode9_R,numberdefects9_R,
						sparepartnumber1_R,sparepartnumber2_R,sparepartnumber3_R,
						sparenumberdefects1_R,sparenumberdefects2_R,sparenumberdefects3_R,partnumber_R));
				request.setAttribute("msg","1件登録しました。");
			}
		}
		doGet(request,response);
	}
}