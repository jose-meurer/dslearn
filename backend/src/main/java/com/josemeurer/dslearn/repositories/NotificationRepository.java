package com.josemeurer.dslearn.repositories;

import com.josemeurer.dslearn.entities.Notification;
import com.josemeurer.dslearn.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NotificationRepository extends JpaRepository<Notification, Long> {

    Page<Notification> findByUser(User user, Pageable pageable);
}
