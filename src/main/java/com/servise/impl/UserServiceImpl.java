package com.servise.impl;

import com.controller.CityController;
import com.controller.UserSettingsController;
import com.entity.Role;
import com.entity.User;
import com.repository.CityRepository;
import com.repository.ProductRepository;
import com.repository.UserRepository;
import com.servise.FileDeleteService;
import com.servise.FileSaveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

import static java.lang.Integer.parseInt;


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

	@Autowired
	FileSaveService fileSaveService;

	@Autowired
	FileDeleteService fileDeleteService;



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



	//додає аватарку юзеру або замінює
	public int addPhotoAvatar(MultipartFile file, HttpServletRequest request, Principal principal ) throws IOException {
		if( file.getBytes().length >= 52428800){
			return 1;
		}else {
			String uploadRootPath  = request.getServletContext().getRealPath("resources");
			String absolutePath = "C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources";
			String fotoPath = fileSaveService.saveFile("avatarUser",principal.getName(), file, absolutePath,"avatarUser");
			String fotoPath1 = fileSaveService.saveFile("avatarUser",principal.getName(), file, uploadRootPath,"avatarUser" );
			savePhotoAvatarUser(userRepository.findOne(parseInt(principal.getName())), fotoPath.substring(56));
			System.out.println(fotoPath);
			System.out.println(fotoPath1);

		}
		return 0;
	}




	// виводить всіх юзерів
		public Iterable<User> getAll(){
		return userRepository.findAll();
	}

	// удаляє вибраного юзера
	public void deleteUser(int id)throws IOException{
		fileDeleteService.deleteFile("C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\src\\main\\webapp\\resources\\uplodateFile\\" + id);
		fileDeleteService.deleteFile("C:\\Program Files\\apache-tomcat-8.0.33\\webapps\\ROOT\\resources\\uplodateFile\\" + id);
		fileDeleteService.deleteFile("  C:\\Users\\Dimas\\Desktop\\logos\\MarketPlace\\target\\projektMVC-0.0.1-SNAPSHOT\\resources\\uplodateFile\\" + id);
		userRepository.delete(id);
	}




}