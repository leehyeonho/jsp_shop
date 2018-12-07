package Product.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;

import Board.DTO.BoardDTO;
import DBManager.DBManager;
import Product.DTO.ProductDTO;

public class ProductDAO {

//	public void init(int product_id) throws Exception {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		StringBuffer qry = null;
//		try {
//			// �����ͺ��̽� ����
//			con = DBManager.get_DB_Connection();
//
//			// SQL�� �ۼ�
//			qry = new StringBuffer(1024);
//			qry.append("SELECT * FROM products WHERE product_id = ? ");
//			ps = con.prepareStatement(qry.toString());
//			ps.setInt(1, product_id);
//
//			// SQL�� ����
//			rs = ps.executeQuery();
//
//			// SQL�� �������� Order ��ü�� ����
//			while (rs.next()) {
//				setValues(rs);
//			}
//			rs.close();
//			ps.close();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (ps != null)
//					ps.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (con != null)
//					con.close();
//			} catch (SQLException sqle) {
//			}
//		}
//	}

	/**
	 * �ű� ��ǰ���� �߰�
	 * 
	 * @return �ű��߰����
	 */
//	public void add() throws Exception {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		StringBuffer qry = null;
//		try {
//			// �����ͺ��̽� ����
//			con = DBManager.get_DB_Connection();
//
//			// SQL�� �ۼ�
//			qry = new StringBuffer(1024);
//			qry.append("INSERT INTO products (product_id, product, model, seller, price, unit, delivery_term, ");
//			qry.append("stock, image, status) ");
//			qry.append("VALUES(product_id_seq.nextval , ?,?,?,?,?,?,?,?,?)");
//
//			ps = con.prepareStatement(qry.toString());
//			setPS(ps, "add");
//
//			// SQL�� ����
//			ps.executeUpdate();
//			ps.close();
//
//			// ��ǰ��ȣ�� ������� SQL�� �ۼ�
//			ps = con.prepareStatement("select max(product_id) productId from products ");
//			rs = ps.executeQuery();
//
//			// ��ǰ��ȣ ���
//			while (rs.next()) {
//				productId = rs.getInt("productId");
//			}
//
//			rs.close();
//			ps.close();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (ps != null)
//					ps.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (con != null)
//					con.close();
//			} catch (SQLException sqle) {
//			}
//		}
//	}

	/**
	 * �ش� ��ǰ��ȣ�� ��ǰ���� ����
	 * 
	 * @return �������
	 */
//	public void modify() throws Exception {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		StringBuffer qry = null;
//		try {
//			// �����ͺ��̽� ����
//			con = DBManager.get_DB_Connection();
//
//			// SQL�� �ۼ�
//			qry = new StringBuffer(1024);
//			qry.append("UPDATE products SET product = ?, model = ?, seller = ?, price = ?, unit = ?, ");
//			qry.append("delivery_term = ?, stock = ?, image = ?, status = ? ");
//			qry.append("WHERE product_id = ?");
//
//			ps = con.prepareStatement(qry.toString());
//			setPS(ps, "modify");
//
//			// SQL�� ����
//			ps.executeUpdate();
//			ps.close();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (ps != null)
//					ps.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (con != null)
//					con.close();
//			} catch (SQLException sqle) {
//			}
//		}
//
//	}

	/**
	 * �ش� ��ǰ��ȣ�� ��ǰ���� ����
	 * 
	 * @return �������
	 */
//	public void remove() throws Exception {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		StringBuffer qry = null;
//		try {
//			// �����ͺ��̽� ����
//			con = DBManager.get_DB_Connection();
//
//			// SQL�� �ۼ�
//			qry = new StringBuffer(1024);
//			qry.append("DELETE FROM products WHERE product_id = ?");
//
//			ps = con.prepareStatement(qry.toString());
//			ps.setInt(1, productId);
//
//			// SQL�� ����
//			ps.executeUpdate();
//			ps.close();
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (ps != null)
//					ps.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (con != null)
//					con.close();
//			} catch (SQLException sqle) {
//			}
//		}
//	}

	/**
	 * ��� ��ǰ����Ʈ �˻�
	 * 
	 * @return ProductBean �迭
	 */
	public static ArrayList<ProductDTO> findAll() throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer qry = null;
		ArrayList<ProductDTO> products = null;
		try {
			// �����ͺ��̽� ����
			con = DBManager.get_DB_Connection();

			// SQL�� �ۼ�
			qry = new StringBuffer(1024);
			qry.append("select * from products ");

			ps = con.prepareStatement(qry.toString());

			// SQL�� ����
			rs = ps.executeQuery();

			// SQL�� �������� ProductBean ��ü �迭�� ����
			products = setValuesForFind(rs);

			ps.close();
			rs.close();
		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException sqle) {
			}
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException sqle) {
			}
			try {
				if (con != null)
					con.close();
			} catch (SQLException sqle) {
			}
		}
		return products;
	}

	/**
	 * Ư���ǸŸ� ���� ��ǰ����Ʈ �˻�
	 * 
	 * @return ProductBean �迭
	 */
//	public ProductBean[] findForSpecial() throws Exception {
//		Connection con = null;
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		StringBuffer qry = null;
//		ProductBean[] products = null;
//		LinkedList lkl = null;
//		ProductBean product = null;
//		try {
//			// �����ͺ��̽� ����
//			con = DBManager.get_DB_Connection();
//
//			// SQL�� �ۼ�
//			qry = new StringBuffer(1024);
//			qry.append("select p.product_id as productId, max(p.product), count(i.qty) as total_qty ");
//			qry.append("from orders o, items i, products p ");
//			qry.append("where o.order_id = i.order_id AND p.product_id = i.product_id  ");
//			qry.append("group by p.product_id order by total_qty desc ");
//
//			ps = con.prepareStatement(qry.toString());
//
//			// SQL�� ����
//			rs = ps.executeQuery();
//
//			// SQL�� ���� �� ����� LinkedList�� ����
//			lkl = new LinkedList();
//			for (; rs.next(); lkl.add(product)) {
//				product = new ProductBean();
//				product.setProductId(rs.getInt("productId"));
//			}
//			products = new ProductBean[lkl.size()];
//			products = (ProductBean[]) lkl.toArray(products);
//
//			ps.close();
//			rs.close();
//
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			try {
//				if (rs != null)
//					rs.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (ps != null)
//					ps.close();
//			} catch (SQLException sqle) {
//			}
//			try {
//				if (con != null)
//					con.close();
//			} catch (SQLException sqle) {
//			}
//		}
//		return products;
//	}

	/**
	 * ��ǰ�� ��ǰ����Ʈ �˻�
	 * 
	 * @param ��ǰ��
	 *            String
	 * @return ProductBean �迭
	 */
	public static ArrayList<ProductDTO> findByProductName(String product_name) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer qry = null;
		ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();
		try {
			// �����ͺ��̽� ����
			con = DBManager.get_DB_Connection();

			// SQL�� �ۼ�
			qry = new StringBuffer(1024);
			qry.append("select * from products where product like ? ");

			ps = con.prepareStatement(qry.toString());
			ps.setString(1, product_name.trim());

			// SQL�� ����
			rs = ps.executeQuery();

			// SQL�� �������� ProductBean ��ü �迭�� ����
			products = setValuesForFind(rs);

			ps.close();
			rs.close();

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException sqle) {
			}
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException sqle) {
			}
			try {
				if (con != null)
					con.close();
			} catch (SQLException sqle) {
			}
		}
		return products;
	}
	
	
	public static ArrayList<ProductDTO> findByCategory(String category) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer qry = null;
		ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();
		try {
			// �����ͺ��̽� ����
			con = DBManager.get_DB_Connection();

			// SQL�� �ۼ�
			qry = new StringBuffer(1024);
			qry.append("select * from products where category like ? ");

			ps = con.prepareStatement(qry.toString());
			ps.setString(1, category.trim());

			// SQL�� ����
			rs = ps.executeQuery();

			// SQL�� �������� ProductBean ��ü �迭�� ����
			products = setValuesForFind(rs);

			ps.close();
			rs.close();

		} catch (Exception e) {
			throw e;
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (SQLException sqle) {
			}
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException sqle) {
			}
			try {
				if (con != null)
					con.close();
			} catch (SQLException sqle) {
			}
		}
		return products;
	}

	/**
	 * ResultSet ���� ProductBean �迭�� ����
	 * 
	 * @param ResultSet
	 * @return ProductBean �迭
	 */
	private static ArrayList<ProductDTO> setValuesForFind(ResultSet rs) throws Exception {
		ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();
		ProductDTO product = null;
		LinkedList lkl = null;

		// ResultSet ���� LinkedList�� ����
		lkl = new LinkedList();
		for (; rs.next(); products.add(product)) {
			product = new ProductDTO();
			product.setProductId(rs.getInt("product_id"));
			product.setProduct(rs.getString("product"));
			product.setPrice(rs.getDouble("price"));
			product.setStock(rs.getInt("stock"));
			product.setImage(rs.getString("image"));
			product.setStatus(rs.getInt("status"));
		}
		// LinkedList�� ProductBean �迭�� ��ȯ
		return products;
	}

	/**
	 * ResultSet ��ü�� ���� ��������� ����
	 * 
	 * @param ResultSet
	 */

	/**
	 * ������� ���� PreparedStatement ��ü�� ����
	 * 
	 * @param PreparedStatement
	 * @param Ÿ��(insert/modify)
	 */
//	private void setPS(PreparedStatement ps, String type) throws Exception {
//		ps.clearParameters();
//		ps.setString(1, product);
//		ps.setString(2, model);
//		ps.setString(3, seller);
//		ps.setDouble(4, price);
//		ps.setString(5, unit);
//		ps.setInt(6, deliveryTerm);
//		ps.setInt(7, stock);
//		ps.setString(8, image);
//		ps.setInt(9, status);
//		if (type.equals("modify")) {
//			ps.setInt(10, productId);
//		}
//	}
	
}
