-- PRAGMA foreign_keys=OFF;
-- CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
-- INSERT INTO "schema_migrations" VALUES('20180519180855');
-- INSERT INTO "schema_migrations" VALUES('20180521221533');
-- INSERT INTO "schema_migrations" VALUES('20180521221720');
-- INSERT INTO "schema_migrations" VALUES('20180522002441');
-- INSERT INTO "schema_migrations" VALUES('20180523002232');
-- INSERT INTO "schema_migrations" VALUES('20180523002303');
-- INSERT INTO "schema_migrations" VALUES('20180523041357');
-- INSERT INTO "schema_migrations" VALUES('20180523182438');
-- INSERT INTO "schema_migrations" VALUES('20180523234036');
-- INSERT INTO "schema_migrations" VALUES('20180524042654');
-- INSERT INTO "schema_migrations" VALUES('20180524055058');
-- INSERT INTO "schema_migrations" VALUES('20180524055329');
-- CREATE TABLE "roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "resource_id" integer, "resource_type" varchar(255), "created_at" datetime, "updated_at" datetime);
-- CREATE TABLE "users_roles" ("user_id" integer, "role_id" integer);
-- CREATE TABLE "departamentos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nombre" varchar(255), "user_id" integer, "created_at" datetime, "updated_at" datetime);
INSERT INTO "departamentos" VALUES(1,'Ventas',NULL,'2018-05-23 18:39:33.385294','2018-05-23 18:39:33.385294');
INSERT INTO "departamentos" VALUES(2,'Compras',NULL,'2018-05-23 18:58:25.287297','2018-05-23 18:58:25.287297');
INSERT INTO "departamentos" VALUES(3,'Bodega',NULL,'2018-05-23 18:58:59.086477','2018-05-23 18:58:59.086477');
-- CREATE TABLE "incidencias" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "tipo_error" varchar(255), "fecha_error" datetime, "descripcion_solucion" text, "codigo_error" varchar(255), "descripcion" text, "fuente_error" varchar(255), "fecha_escalamiento" datetime, "user_id" integer, "departamento_id" integer, "estado" varchar(255), "descripcion_estado" text, "created_at" datetime, "updated_at" datetime, "responsable_cierre_id" integer);
INSERT INTO "incidencias" VALUES(1,'FALLA DE SISTEMA','2018-05-23 18:20:00.000000','','ERR-2086','AL PROCESAR LOS INVENTARIOS SALE UN ERROR DE BASE DE DATOS','BASE DE DATOS','2018-05-23 00:59:00.000000',NULL,1,'REGISTRADO','','2018-05-23 01:00:38.051899','2018-05-24 19:11:09.431981',NULL);
INSERT INTO "incidencias" VALUES(2,'FALLA DE SISTEMA','2018-05-23 18:20:00.000000','','ERR-2086','AL PROCESAR LOS INVENTARIOS SALE UN ERROR DE BASE DE DATOS','BASE DE DATOS','2018-05-23 00:59:00.000000',NULL,NULL,'','','2018-05-23 01:01:52.698304','2018-05-23 01:01:52.698304',NULL);
INSERT INTO "incidencias" VALUES(3,'HARDWARE','2018-05-23 19:20:00.000000','','ERR-1010','No imprime la impresora a color de RRHH','RRHH','2018-05-23 19:20:00.000000',NULL,NULL,'','','2018-05-23 19:21:51.304110','2018-05-23 19:21:51.304110',NULL);
INSERT INTO "incidencias" VALUES(4,'HARDWARE','2018-05-23 15:00:00.000000','','ERR-1012','Problemas con el monitor de marketing','MARKETING','2018-05-23 19:22:00.000000',NULL,NULL,'','','2018-05-23 19:23:10.198978','2018-05-23 19:23:10.198978',NULL);
INSERT INTO "incidencias" VALUES(5,'SOFTWARE','2018-05-23 19:23:00.000000','','ERR-1013','No imprime visualmente el reporte de CXP en pagaduria ','ERP modulo financiero','2018-05-23 19:23:00.000000',NULL,NULL,'','','2018-05-23 19:25:08.971767','2018-05-23 19:25:08.971767',NULL);
INSERT INTO "incidencias" VALUES(6,'Falla en la central telefónica','2018-05-24 01:29:00.000000','','ERR-2040','No ingresan llamadas, solo  funcionan lineas internas','CNT','2018-05-24 01:29:00.000000',NULL,NULL,'','','2018-05-24 01:55:59.614065','2018-05-24 01:55:59.614065',NULL);
INSERT INTO "incidencias" VALUES(7,'FALLA NVR','2018-05-24 01:57:00.000000','','ERR-2041','3 Cámaras de exteriores no graban','Disco lleno','2018-05-24 01:57:00.000000',NULL,NULL,'','','2018-05-24 01:59:23.047486','2018-05-24 01:59:23.047486',NULL);
INSERT INTO "incidencias" VALUES(8,'FALLA DE IMPRESORA XEROX 7220','2018-05-24 01:59:00.000000','','ERR-2043','Impresora no se encuentra en red','Tarjeta de Red quemada','2018-05-24 01:59:00.000000',NULL,NULL,'','','2018-05-24 02:00:41.529315','2018-05-24 02:02:53.318841',NULL);
INSERT INTO "incidencias" VALUES(9,'FALLA EN S.O','2018-05-24 02:01:00.000000','','ERR-2045','Daño en sistema operativo','Daño en sectores de disco duro','2018-05-24 02:01:00.000000',NULL,NULL,'','','2018-05-24 02:02:07.952077','2018-05-24 02:02:07.952077',NULL);
INSERT INTO "incidencias" VALUES(10,'FALLA EN PANTALLAS GIGANTES','2018-05-24 02:03:00.000000','','ERR-2047','Servidor de video no genera contenido para pantallas','software no arranca para el paso de contenido','2018-05-24 02:03:00.000000',NULL,NULL,'','','2018-05-24 02:04:06.922518','2018-05-24 02:04:06.922518',NULL);
INSERT INTO "incidencias" VALUES(11,'FALLA DISEÑO DE TRAJETA MAGNÉTICA','2018-05-24 02:04:00.000000','','ERR-2050','se desconfigura tarjeta','desconfiguracion','2018-05-24 02:04:00.000000',NULL,NULL,'','','2018-05-24 02:05:36.315590','2018-05-24 02:05:36.315590',NULL);
INSERT INTO "incidencias" VALUES(12,'PERDIDA DE CONEXIÓN','2018-05-24 02:05:00.000000','','ERR-2052','switch defectuoso','cambio de equipo','2018-05-24 02:05:00.000000',NULL,NULL,'','','2018-05-24 02:06:56.475743','2018-05-24 02:06:56.475743',NULL);
-- CREATE TABLE "user_mesas" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "departamento_id" integer, "created_at" datetime, "updated_at" datetime);
-- CREATE TABLE "comentarios" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "incidencia_id" integer, "comentario" text, "created_at" datetime, "updated_at" datetime);
-- CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "avatar" varchar(255), "nombre" varchar(255), "apellido" varchar(255));
INSERT INTO "users" VALUES(1,'dario.chuquilla@gmail.com','$2a$11$4tWHL7lj5tvdrZUd8cYcN.Z3m1bmyB7gjKkVzsr70h9RYWzuhiHh6',NULL,NULL,'2018-05-24 05:30:50.394741',13,'2018-05-24 14:38:09.612814','2018-05-24 05:30:50.456485','186.4.186.51','186.46.202.157','2018-05-22 00:41:05.197208','2018-05-24 14:38:09.614904',NULL,'Dario','Chuquilla');
INSERT INTO "users" VALUES(2,'fabianb1978@gmail.com','$2a$11$lf9oJCqrzamPywA7Y4SyveX/cZC0BXxIy/6GTTfbDdfAo6.nYhIw2',NULL,NULL,NULL,2,'2018-05-23 19:20:23.356767','2018-05-22 23:39:32.954997','200.7.249.186','190.152.206.147','2018-05-22 23:39:31.742312','2018-05-23 19:20:23.357899',NULL,NULL,NULL);
INSERT INTO "users" VALUES(3,'katestefy.oro96@gmail.com','$2a$11$2ffl.BylMsjmNYg7KGY5fOJ.FBBcIJtkcaD4FN5F8/EB5/Vsf6yNW',NULL,NULL,NULL,3,'2018-05-24 01:26:13.571796','2018-05-23 22:11:43.172731','179.49.27.5','200.25.206.254','2018-05-23 16:03:38.753767','2018-05-24 01:26:13.573966',NULL,NULL,NULL);
-- DELETE FROM sqlite_sequence;
-- INSERT INTO "sqlite_sequence" VALUES('incidencias',12);
-- INSERT INTO "sqlite_sequence" VALUES('departamentos',3);
-- INSERT INTO "sqlite_sequence" VALUES('users',3);
-- CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
-- CREATE INDEX "index_roles_on_name" ON "roles" ("name");
-- CREATE INDEX "index_roles_on_name_and_resource_type_and_resource_id" ON "roles" ("name", "resource_type", "resource_id");
-- CREATE INDEX "index_users_roles_on_user_id_and_role_id" ON "users_roles" ("user_id", "role_id");
-- CREATE INDEX "index_departamentos_on_user_id" ON "departamentos" ("user_id");
-- CREATE INDEX "index_user_mesas_on_user_id" ON "user_mesas" ("user_id");
-- CREATE INDEX "index_user_mesas_on_departamento_id" ON "user_mesas" ("departamento_id");
-- CREATE INDEX "index_comentarios_on_user_id" ON "comentarios" ("user_id");
-- CREATE INDEX "index_comentarios_on_incidencia_id" ON "comentarios" ("incidencia_id");
-- CREATE INDEX "index_incidencias_on_departamento_id" ON "incidencias" ("departamento_id");
-- CREATE INDEX "index_incidencias_on_user_id" ON "incidencias" ("user_id");
-- CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
-- CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
-- BEGIN TRANSACTION;
-- COMMIT;
