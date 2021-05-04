package space.mars.marsel.security.jwt;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "marsel.authentication.jwt")
@Data
class JwtProperties {

    private String secret;
    private long   expiration;
    private long   refreshExpiration;

}
