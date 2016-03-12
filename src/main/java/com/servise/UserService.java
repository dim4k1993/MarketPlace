package com.servise;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.repository.UserRepository;

import java.util.HashMap;
import java.util.Map;


@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	/*private int idForUserLogin;
	public Map<String, String> mapUser = new HashMap<String, String>();*/

	// додає юзера
	public void userRegistration(String name,String lastName,String email,String parol,String telephon_namber){
		User user = new User();
		user.setName(name);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setParol(parol);
		user.setTelephon_namber(telephon_namber);
		userRepository.save(user);
	}

	/*public void updateUser(String Email, String password){
		User user1 ;
		user1 = userRepository.findUserByEmailAndPassword(Email, password);
		userRepository.save(user1);
	}


	//Метод перевірки на наявність емайла і пароля і заповнення мапи
	public int comparisonUser(String password, String Email) {
		try {
			idForUserLogin = userRepository.findUserByEmailAndPassword(Email, password).getId();
			if (userRepository.findOne(idForUserLogin).getAdminStatus() == 0) {
				mapUser.put("name", userRepository.findOne(idForUserLogin).getName());
				mapUser.put("lastName", userRepository.findOne(idForUserLogin).getLastName());
				try {
					mapUser.put("telephonNamber", Integer.toString(Integer.parseInt(userRepository.findOne(idForUserLogin).getTelephon_namber())));
					mapUser.put("skype", Integer.toString(Integer.parseInt(userRepository.findOne(idForUserLogin).getSkype())));
				} catch (NullPointerException e) {}
				return 0;
			}else {
				return 1;
			}
		}catch (NullPointerException e){
			return 9;}
	}*/

	// виводить всіх юзерів
		public Iterable<User> getAll(){
		return userRepository.findAll();
	}

	// удаляє вибраного юзера
	public void daleteUser(String id){
		userRepository.delete(Integer.parseInt(id));
	}
}
