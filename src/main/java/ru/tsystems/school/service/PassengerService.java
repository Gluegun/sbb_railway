package ru.tsystems.school.service;

import ru.tsystems.school.dto.PassengerDto;

public interface PassengerService {

    PassengerDto findById(int id);

    PassengerDto findByUserName(String userName);

    PassengerDto getAuthorizedPassenger();

}
