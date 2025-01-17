package pm.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;

import pm.dao.UserDao;
import pm.dto.MyUser;
import pm.helper.AES;

@Component
public class UserService {
	@Autowired
	UserDao dao;
	
	public String register(MyUser user, ModelMap map) {
		if (user.getPassword().equals(user.getCpassword())) {
			if (dao.checkUsername(user.getUsername())) {
				map.put("message", "Username already Exists");
				return "register.jsp";
			} else {
				user.setPassword(AES.encrypt(user.getPassword()));
				dao.save(user);
				map.put("message", "Account Created Success");
				return "Login.jsp";
			}
		} else {
			map.put("message", "Password and Confirm Password not Matching");
			return "register.jsp";
		}
	}

	public String login(String username, String password, ModelMap map,HttpSession session) {
		MyUser user = dao.findUser(username);
		if (user == null) {
			map.put("message", "Invalid Username");
			return "Login.jsp";
		} else {
			if (AES.decrypt(user.getPassword()).equals(password)) {
				session.setAttribute("username", username);
				map.put("message", "Login Success");
				return "home.jsp";
			} else {
				map.put("message", "Invalid Password");
				return "Login.jsp";
			}
		}
	}

	public String loadHome(HttpSession session, ModelMap map) {
		if (session.getAttribute("username") == null) {
			map.put("message", "Invalid Session, First Login");
			return "Login.jsp";
		} else
			return "home.jsp";
	}

	public String logout(HttpSession session, ModelMap map) {
		session.removeAttribute("username");
		map.put("message", "Logout Success");
		return "Login.jsp";
	}


}
