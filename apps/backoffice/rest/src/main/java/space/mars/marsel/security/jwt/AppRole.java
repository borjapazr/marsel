package space.mars.marsel.security.jwt;

import org.springframework.security.core.GrantedAuthority;

public enum AppRole implements GrantedAuthority {
    ROLE_ADMIN, ROLE_CLIENT;

    @Override
    public String getAuthority() {
        return this.name();
    }

}
