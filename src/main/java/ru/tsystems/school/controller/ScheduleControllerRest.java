package ru.tsystems.school.controller;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.tsystems.school.dto.ScheduleDto;
import ru.tsystems.school.service.ScheduleService;

import java.util.List;

@RestController
@RequestMapping("/rest/schedule/")
@AllArgsConstructor
public class ScheduleControllerRest {

    private final ScheduleService scheduleService;

    @GetMapping("/{id}")
    public List<ScheduleDto> getSchedules(@PathVariable("id") int stationId) {
        return scheduleService.findScheduleByStationId(stationId);
    }

}
