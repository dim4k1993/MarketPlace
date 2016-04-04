package com.servise.CustomValidation;


import com.entity.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class ValidationEmailUser implements ConstraintValidator<CustomValidationEmailUser,String> {

    @Autowired
    private UserRepository userRepository;

    @Override
    public void initialize(CustomValidationEmailUser customValidationEmailUser) {

    }
    @Override
    public boolean isValid(String email, ConstraintValidatorContext constraintValidatorContext) {
        return userRepository.findUserByEmail(email) == null;

    }
}