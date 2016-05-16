package com.servise;
import com.entity.User;

public interface UserService {

	  void  saveUser(User user);

	  void  savePhotoAvatarUser(User user, String photo);

	  void updateUser(String email, String parol);

	  Iterable<User> getAll();

	  void deleteUser(String id);

}