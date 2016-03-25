package com.servise;

import com.controller.CityController;
import com.entity.City;
import com.entity.Role;
import com.repository.CityRepository;
import org.omg.PortableInterceptor.Interceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.entity.User;
import com.repository.UserRepository;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;


@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	CityController cityController;

	@Autowired
	CityRepository cityRepository;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	// створення мапи юзерів
	private int idForUserLogin;
	public Map<String, String> mapUser = new HashMap<String, String>();

	//Метод додавання юзерів
	public void userRegistration(String name, String lastName, String email, String parol,String telephon_namber ) {
		User user = new User();
		user.setName(name);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setParol(bCryptPasswordEncoder.encode(parol));
		user.setRole(Role.ROLE_USER);
		user.setTelephon_namber(telephon_namber);
		user.setCity(cityController.cityId);
		userRepository.save(user);
	}


	//метод зміни статусу юзера
	public void updateUser(String email, String parol){
		User user1 ;
		user1 = userRepository.findUserByEmailAndPassword("dimaszelenyuk@gmail.com", "11021993");
		user1.setRole(Role.ROLE_ADMIN);
		userRepository.save(user1);
	}

	//бачить юзера по id
	public void comparisonUserVisit(int id) {
		if(userRepository.findOne(id) != null) {
			SearchInfoUser(userRepository.findUserById(id).getId());
		}
	}


	//Метод перевірки на наявність емайла і пароля і заповнення мапи
	public void SearchInfoUser(int idForUserLogin) {

				mapUser.put("firstName", userRepository.findOne(idForUserLogin).getName());
				mapUser.put("lastName", userRepository.findOne(idForUserLogin).getLastName());

					mapUser.put("email", userRepository.findOne(idForUserLogin).getEmail());
					mapUser.put("telephon_namber",(userRepository.findOne(idForUserLogin).getTelephon_namber()));
					mapUser.put("skype",userRepository.findOne(idForUserLogin).getSkype());
					mapUser.put("city", userRepository.findOne(idForUserLogin).getCity().getName());

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
