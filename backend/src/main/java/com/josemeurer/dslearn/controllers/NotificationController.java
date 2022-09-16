package com.josemeurer.dslearn.controllers;

import com.josemeurer.dslearn.dto.NotificationDTO;
import com.josemeurer.dslearn.services.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/notifications")
public class NotificationController {

    @Autowired
    private NotificationService notificationService;

    @GetMapping
    public ResponseEntity<Page<NotificationDTO>> notificationForCurrentUser(Pageable pageable) {
        Page<NotificationDTO> page = notificationService.notificationsForCurrentUser(pageable);
        return ResponseEntity.ok().body(page);
    }
}
