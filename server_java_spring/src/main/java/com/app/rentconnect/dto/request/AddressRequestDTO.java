package com.app.rentconnect.dto.request;

import com.app.rentconnect.Constants;
import com.app.rentconnect.entity.User;
import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.*;
import lombok.experimental.FieldDefaults;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AddressRequestDTO {
    Long addressId;
    UserRequestDTO user;
    Constants.AddressType addressType;
    String addressLine;
    String province;
    String district;
    String ward;
    String specificAddress;
    String addressLabel;
    Boolean isDefault = false;
    LocalDateTime createdAt = LocalDateTime.now();
    LocalDateTime deletedAt;
}
