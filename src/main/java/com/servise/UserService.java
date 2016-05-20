package com.servise;
import com.entity.User;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.Principal;

public interface UserService {

	  void  saveUser(User user);

	  void  savePhotoAvatarUser(User user, String photo);

	  void updateUser(String email, String parol);

	  Iterable<User> getAll();

	  void deleteUser(String id);

	  int addPhotoAvatar(MultipartFile file, HttpServletRequest request, Principal principal ) throws IOException;
}