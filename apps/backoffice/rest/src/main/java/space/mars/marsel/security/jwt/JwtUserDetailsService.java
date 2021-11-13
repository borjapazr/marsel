package space.mars.marsel.security.jwt;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JwtUserDetailsService implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {

        //TODO Retrieve user from database and check if exists

        final AppUser appUser = new AppUser(1, "user", "user@marsmachine.space",
                                            "$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6",
                                            List.of(AppRole.ROLE_ADMIN));

        if (appUser == null) {
            throw new UsernameNotFoundException("User '" + username + "' not found");
        }

        return User.withUsername(appUser.getUsername())
                   .password(appUser.getPassword())
                   .authorities(appUser.getAppRoles())
                   .accountExpired(false)
                   .accountLocked(false)
                   .credentialsExpired(false)
                   .disabled(false)
                   .build();
    }

}
