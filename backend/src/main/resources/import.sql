--User
INSERT INTO tb_user(name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user(name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user(name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

--Role
INSERT INTO tb_role(authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role(authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role(authority) VALUES ('ROLE_ADMIN');

--user and role
INSERT INTO tb_user_role(user_id, role_id) VALUES(1, 1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(2, 1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(2, 2);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3, 1);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3, 2);
INSERT INTO tb_user_role(user_id, role_id) VALUES(3, 3);

--Courses
INSERT INTO tb_course(name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 'https://www.milcursosgratis.com/wp-content/uploads/2016/03/curso-de-java-desde-cero-300x240.jpg');

