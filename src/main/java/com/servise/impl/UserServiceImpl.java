package com.servise.impl;

import com.controller.CityController;
import com.controller.UserSettingsController;
import com.entity.Role;
import com.entity.User;
import com.repository.CityRepository;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements com.servise.UserService{

	@Autowired
	private UserRepository userRepository;

	@Autowired
	CityController cityController;

	@Autowired
	CityRepository cityRepository;

	@Autowired
	ProductRepository productRepository;


	@Autowired
	UserSettingsController userSettingsController;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;


	//	//Метод додавання юзерів
	public  void  saveUser(User user){
		user.setRole(Role.ROLE_USER);
		user.setParol(bCryptPasswordEncoder.encode(user.getParol()));
		user.setCity(cityController.cityId);
		user.setFoto("/resources/fileForMySyte/default/defaultFoto.png");
		if (user.getCity() == null){
			System.out.println("error");
		}
		userRepository.save(user);
	}

	public  void  savePhotoAvatarUser(User user, String photo){
		user.setFoto(photo);
		userRepository.save(user);

	}

	//метод зміни статусу юзера
	public void updateUser(String email, String parol){
		User user1 ;
		user1 = userRepository.findUserByEmailAndPassword("dimaszelenyuk@gmail.com", "11021993");
		user1.setRole(Role.ROLE_ADMIN);
		userRepository.save(user1);
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