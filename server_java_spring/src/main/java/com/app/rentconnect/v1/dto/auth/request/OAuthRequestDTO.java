package com.app.rentconnect.v1.dto.auth.request;

import com.fasterxml.jackson.annotation.JsonInclude;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class OAuthRequestDTO {

    @NotBlank(message = "Email must not be empty")
    @Email(message = "Invalid email format")
    String email;

    @NotBlank(message = "Full name cannot be empty")
    String fullName;


}
