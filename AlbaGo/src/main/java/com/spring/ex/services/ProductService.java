package com.spring.ex.services;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ex.dao.ProductDAO;
import com.spring.ex.dto.Payment;
import com.spring.ex.dto.Product;

@Service
public class ProductService {

	@Autowired
	ProductDAO productDAO;

	// 관리자
	public ArrayList<Product> selectList() {
		return productDAO.selectList();
	}

	public int insertProduct(Product product) {
		return productDAO.insertProduct(product);
	}

//	public int insertProduct_no_term(Product product) {
//		return productDAO.insertProduct_no_term(product);
//	}

	public Product product_account(int product_id) {
		return productDAO.product_account(product_id); // 수정상세
	}

	public int update_product(Product product) { // 수정
		return productDAO.update_product(product);
	}

	public int delete_product(Product product) {// 삭제
		return productDAO.delete_product(product);
	}

	// 기업
	public ArrayList<Product> enterprise_selectList() {
		return productDAO.enterprise_selectList();
	}

	public Product enterprise_selectWrite(int product_id) {
		return productDAO.enterprise_selectWrite(product_id);
	}

	public int insertProduct_payment(Payment payment) {
		return productDAO.insertProduct_payment(payment);
	}

	public ArrayList<Payment> selectPayments() {
		return productDAO.selectPayments();
	}

	public int updatePaymentsResult(HashMap<String, Object> map) {
		String result = map.get("result").toString();

		int res = -1;

		ArrayList<String> ids = (ArrayList<String>) map.get("payment_ids");

		for (int i = 0; i < ids.size(); i++) {

			if (result.equals("승인")) {

				String enterprise_id = productDAO.selectEnterprise_id(Integer.parseInt(ids.get(i)));
				int product_count = productDAO.selectProductCount(Integer.parseInt(ids.get(i)));

				HashMap<String, Object> insertMap = new HashMap<String, Object>();
				insertMap.put("enterprise_id", enterprise_id);
				insertMap.put("product_count", product_count);

				// 기업의 아이디를 알아야함

				String type = productDAO.selectProductType(Integer.parseInt(ids.get(i)));// 상품의 타입 가져오기
				System.out.println("type"+type);
				if (type.equals("up")) {// up버튼
						System.out.println("insertMap"+insertMap);
					res = productDAO.updateEnterpriseUpCount(insertMap);// up버튼 갯수 올려주기
				} else if (type.equals("resume")) {// 이력서 보기 횟ㅅ
					res = productDAO.updateEnterpriseResumeCount(insertMap);// resume갯수 올려주기
				} else if (type.equals("board")) {// 게시글 제한 횟수
					res = productDAO.updateEnterpriseBoardCount(insertMap);// board 갯수 올려주기
				}

			}
			// 결과가 거부든 승인이든 결과 넣는것
			HashMap<String, Object> insertMap = new HashMap<String, Object>();
			insertMap.put("result", result);
			insertMap.put("payment_id", Integer.parseInt(ids.get(i)));
			res = productDAO.updatePaymentResult(insertMap);// payment에서 결과 바꾸기
		}

		return res;
	}

	public int updatePaymentResult(HashMap<String, Object> map) {
		String result = map.get("result").toString();
		int payment_id = (int) map.get("payment_id");
		int res = -1;
		System.out.println("result 2"+result);

		if (result.equals("승인")) {
			System.out.println("result 1"+result);
			
			String enterprise_id = productDAO.selectEnterprise_id(payment_id);
			int product_count = productDAO.selectProductCount(payment_id);

			HashMap<String, Object> insertMap = new HashMap<String, Object>();
			insertMap.put("enterprise_id", enterprise_id);
			insertMap.put("product_count", product_count);

			System.out.println("insertMap 1"+insertMap);
			// 기업의 아이디를 알아야함

			String type = productDAO.selectProductType(payment_id);// 상품의 타입 가져오기
			System.out.println("type"+type);
			if (type.equals("up")) {// up버튼
				System.out.println("insertMap 2"+insertMap);
				res = productDAO.updateEnterpriseUpCount(insertMap);// up버튼 갯수 올려주기
			} else if (type.equals("resume")) {// 이력서 보기 횟ㅅ
				System.out.println("insertMap 2"+insertMap);
				res = productDAO.updateEnterpriseResumeCount(insertMap);// resume갯수 올려주기
			} else if (type.equals("board")) {// 게시글 제한 횟수
				System.out.println("insertMap 2"+insertMap);
				res = productDAO.updateEnterpriseBoardCount(insertMap);// board 갯수 올려주기
			}

		}
		// 결과가 거부든 승인이든 결과 넣는것
		HashMap<String, Object> insertMap = new HashMap<String, Object>();
		insertMap.put("result", result);
		insertMap.put("payment_id", payment_id);
		res = productDAO.updatePaymentResult(insertMap);// payment에서 결과 바꾸기

		return res;
	}

}