package space.mars.marsel.security.jwt;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.List;

@AllArgsConstructor
@Getter
public class AppUser {

    private final Integer id;
    private final String username;
    private final String email;
    private final String password;
    List<AppRole> appRoles;

}
