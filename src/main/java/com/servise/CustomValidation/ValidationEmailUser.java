package com.servise.CustomValidation;

import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import static com.sun.org.apache.xerces.internal.util.PropertyState.is;

public class ValidationEmailUser implements ConstraintValidator<CustomValidationEmailUser,String> {


    @Autowired
    private UserRepository userRepository;


    public void initialize(CustomValidationEmailUser customValidationEmailUser) {
    }

    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        if(userRepository == null) {
            return true;
        }
        return userRepository.findUserByEmail(s) == null;

    }
}