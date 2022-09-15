package com.josemeurer.dslearn.services.exceptions;

import com.josemeurer.dslearn.entities.User;
import com.josemeurer.dslearn.repositories.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserService implements UserDetailsService {

    private UserRepository userRepository;







    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = new User();
        user = userRepository.findByEmail(username);
        if (user == null) {
            throw new UsernameNotFoundException("Email not found");
        }

        return user;
    }
}
