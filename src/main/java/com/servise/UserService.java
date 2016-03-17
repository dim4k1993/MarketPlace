package com.servise;

import com.entity.City;
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

	// створення мапи юзерів
	private int idForUserLogin;
	public Map<String, String> mapUser = new HashMap<String, String>();

	//Метод додавання юзерів
	public void userRegistration(String name, String lastName, String email, String parol,String telephon_namber,String skype ) {
		User user = new User();
		user.setName(name);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setParol(parol);
		user.setTelephon_namber(telephon_namber);
		user.setSkype(skype);
		userRepository.save(user);
	}


	//метод зміни статусу юзера
/*		public void updateUser() {
		User user1;
		user1 = userRepository.findUserByEmailAndPassword("dimaszelenyuk@gmail.com", "11021993");
		user1.setAdminStatus(1);
		userRepository.save(user1);
	}*/


	//бачить юзера по id
	public void comparisonUserVisit(int id) {
		SearchInfoUser(userRepository.findUserById(id).getId());
	}


	//пошук по email юзера
	public int comparisonUser(String parol, String email) {
		try {return SearchInfoUser(userRepository.findUserByEmailAndPassword(email, parol).getId());
		} catch (NullPointerException e) {
		}
		return 9;
	}


	//Метод перевірки на наявність емайла і пароля і заповнення мапи
	public int SearchInfoUser(int idForUserLogin) {
		try {
			if (userRepository.findOne(idForUserLogin).getAdminStatus() == 0) {
				mapUser.put("firstName", userRepository.findOne(idForUserLogin).getName());
				mapUser.put("lastName", userRepository.findOne(idForUserLogin).getLastName());
				mapUser.put("email", userRepository.findOne(idForUserLogin).getEmail());
				try {
					mapUser.put("telephon_namber",(userRepository.findOne(idForUserLogin).getTelephon_namber()));
					mapUser.put("skype",userRepository.findOne(idForUserLogin).getSkype());
					mapUser.put("city", userRepository.findOne(idForUserLogin).getCity().getName());
				} catch (NullPointerException e) {}
				return 0;
			}else if (userRepository.findOne(idForUserLogin).getAdminStatus() == 1) {
				return 1;
			}
		}catch (NullPointerException e){
			return 9;
		}
		return 9;
	}


	// виводить всіх юзерів
		public Iterable<User> getAll(){
		return userRepository.findAll();
	}

	// удаляє вибраного юзера
	public void deleteUser(String id){
		userRepository.delete(Integer.parseInt(id));
	}
}
