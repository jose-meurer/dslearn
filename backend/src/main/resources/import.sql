--Users
INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

--Roles
INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

--User authorizations
INSERT INTO tb_user_role (user_id, role_id) VALUES(1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES(2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES(2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES(3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES(3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES(3, 3);

--Courses
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 'https://www.milcursosgratis.com/wp-content/uploads/2016/03/curso-de-java-desde-cero-300x240.jpg');

--Offers
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:01Z', null, 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:01Z', null, 1);

--Notifications
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

--Resources
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('FORUM', 'Tire suas duvidas do curso', 2, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas da turma', 3, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 0, 1);

--Sections
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo iremos comecar', 1, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Capitulo de introducao', 2, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo iremos codar', 3, 'https://arquivo.devmedia.com.br/cursos/imagem/curso_o-que-e-java_2028.png', 1, 2);

