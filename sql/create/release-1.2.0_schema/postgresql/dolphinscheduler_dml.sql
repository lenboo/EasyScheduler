/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
*/

-- Records of t_ds_user,user : admin , password : dolphinscheduler123
BEGIN;
INSERT INTO "t_ds_user" VALUES ('1', 'admin', '7ad2410b2f4c074479a8937a28a22b8f', '0', 'xxx@qq.com', 'xx', '0', '2018-03-27 15:48:50', '2018-10-24 17:40:22');
SELECT setval('"t_ds_user_id_sequence"', (SELECT MAX(id) FROM "t_ds_user")+1)

INSERT INTO "t_ds_alertgroup" VALUES (1, 'dolphinscheduler warning group', '0', 'dolphinscheduler warning group','2018-11-29 10:20:39', '2018-11-29 10:20:39');
SELECT setval('"t_ds_alertgroup_id_sequence"', (SELECT MAX(id) FROM "t_ds_alertgroup")+1)

INSERT INTO "t_ds_relation_user_alertgroup" VALUES ('1', '1', '1', '2018-11-29 10:22:33', '2018-11-29 10:22:33');
SELECT setval('"t_ds_relation_user_alertgroup_id_sequence"', (SELECT MAX(id) FROM "t_ds_relation_user_alertgroup")+1)

-- Records of t_ds_queue,default queue name : default
INSERT INTO "t_ds_queue" VALUES ('1', 'default', 'default');
INSERT INTO "t_ds_version" VALUES ('1', '1.2.0');
COMMIT;
