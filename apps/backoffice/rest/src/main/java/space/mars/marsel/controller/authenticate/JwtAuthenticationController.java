package space.mars.marsel.controller.authenticate;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import space.mars.marsel.security.jwt.JwtRequest;
import space.mars.marsel.security.jwt.JwtTokenProvider;

import java.util.HashMap;
import java.util.Map;

import static org.springframework.http.ResponseEntity.ok;

@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
public class JwtAuthenticationController {

    private final AuthenticationManager authenticationManager;

    private final JwtTokenProvider jwtTokenProvider;

    @PostMapping("/authenticate")
    public ResponseEntity signin(@RequestBody final JwtRequest data) {

        try {
            final String username = data.getUsername();
            final var authentication = this.authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, data.getPassword()));
            final String              token = this.jwtTokenProvider.createToken(authentication);
            final Map<Object, Object> model = new HashMap<>();
            model.put("username", username);
            model.put("token", token);
            return ok(model);
        } catch (final AuthenticationException e) {
            throw new BadCredentialsException("Invalid username/password supplied");
        }
    }

}
