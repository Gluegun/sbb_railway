package ru.tsystems.school.controller;

import lombok.extern.log4j.Log4j;
import org.dom4j.rule.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import ru.tsystems.school.exceptions.CantBuyTicketException;
import ru.tsystems.school.exceptions.CantDeleteException;
import ru.tsystems.school.exceptions.NoSuchEntityException;
import ru.tsystems.school.exceptions.NotUniqueNameException;

@Controller
@ControllerAdvice
@Log4j
public class ErrorController {

    @ExceptionHandler(CantDeleteException.class)
    public String cantDelete(CantDeleteException exception) {
        log.error("Exception", exception);
        return "errors/cant_delete";
    }

    @ExceptionHandler(CantBuyTicketException.class)
    public ModelAndView cantBuyTicket(CantBuyTicketException exception) {
        log.error("Exception", exception);
        ModelAndView modelAndView = new ModelAndView("errors/cant_buy_ticket");
        String message = exception.getMessage();
        modelAndView.addObject("message", message);
        return modelAndView;
    }

    @ExceptionHandler(NotUniqueNameException.class)
    public String sameName(NotUniqueNameException exception) {
        log.error("exception", exception);
        return "errors/same_name";
    }

    @ExceptionHandler(NoSuchEntityException.class)
    public String notFound(NoSuchEntityException exception) {
        log.error("Exception", exception);
        return "errors/404_error";

    }
}