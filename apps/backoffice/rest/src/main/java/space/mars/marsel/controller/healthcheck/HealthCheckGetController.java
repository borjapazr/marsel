package space.mars.marsel.controller.healthcheck;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HealthCheckGetController {

    @Value("${marsel.app.name}")
    private String applicationName;

    @Value("${marsel.app.slug}")
    private String applicationSlug;

    @GetMapping("/health-check")
    public Map<String, String> get() {
        final Map<String, String> status = new HashMap<>();
        status.put("applicationName", this.applicationName);
        status.put("applicationSlug", this.applicationSlug);
        status.put("status", "ok");

        return status;
    }

}
