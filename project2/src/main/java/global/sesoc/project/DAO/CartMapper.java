package global.sesoc.project.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import global.sesoc.project.VO.Cart;

public interface CartMapper {

	public int insertCart(HashMap<String, Object> map);

	public int cartCount(HashMap<String, Object> map);

	public ArrayList<Cart> cartList(String pserson_id);

	public int removeCart(HashMap<String, Object> map);

	public int removeCart2(HashMap<String, Object> map);

	public int removeAll(String person_id);
}
