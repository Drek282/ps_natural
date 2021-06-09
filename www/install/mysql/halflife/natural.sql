CREATE TABLE `ps_map_data_halflife_natural` (
  `dataid` int unsigned NOT NULL default '0',
  `alienkills` smallint unsigned NOT NULL default '0',
  `marinekills` smallint unsigned NOT NULL default '0',
  `joinedalien` smallint unsigned NOT NULL default '0',
  `joinedmarine` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `alienwon` smallint unsigned NOT NULL default '0',
  `marinewon` smallint unsigned NOT NULL default '0',
  `alienlost` smallint unsigned NOT NULL default '0',
  `marinelost` smallint unsigned NOT NULL default '0',
  `structuresbuilt` smallint unsigned NOT NULL default '0',
  `structuresdestroyed` smallint unsigned NOT NULL default '0',
  `structuresrecycled` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_data_halflife_natural` (
  `dataid` int unsigned NOT NULL default '0',
  `alienkills` smallint unsigned NOT NULL default '0',
  `marinekills` smallint unsigned NOT NULL default '0',
  `aliendeaths` smallint unsigned NOT NULL default '0',
  `marinedeaths` smallint unsigned NOT NULL default '0',
  `joinedalien` smallint unsigned NOT NULL default '0',
  `joinedmarine` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `alienwon` smallint unsigned NOT NULL default '0',
  `marinewon` smallint unsigned NOT NULL default '0',
  `alienlost` smallint unsigned NOT NULL default '0',
  `marinelost` smallint unsigned NOT NULL default '0',
  `votedown` smallint unsigned NOT NULL default '0',
  `commander` smallint unsigned NOT NULL,
  `commanderwon` smallint unsigned NOT NULL default '0',
  `structuresbuilt` smallint unsigned NOT NULL default '0',
  `structuresdestroyed` smallint unsigned NOT NULL default '0',
  `structuresrecycled` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_maps_halflife_natural` (
  `dataid` int unsigned NOT NULL default '0',
  `alienkills` smallint unsigned NOT NULL default '0',
  `marinekills` smallint unsigned NOT NULL default '0',
  `aliendeaths` smallint unsigned NOT NULL default '0',
  `marinedeaths` smallint unsigned NOT NULL default '0',
  `joinedalien` smallint unsigned NOT NULL default '0',
  `joinedmarine` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `alienwon` smallint unsigned NOT NULL default '0',
  `marinewon` smallint unsigned NOT NULL default '0',
  `alienlost` smallint unsigned NOT NULL default '0',
  `marinelost` smallint unsigned NOT NULL default '0',
  `votedown` smallint unsigned NOT NULL default '0',
  `commander` smallint unsigned NOT NULL,
  `commanderwon` smallint unsigned NOT NULL default '0',
  `structuresbuilt` smallint unsigned NOT NULL default '0',
  `structuresdestroyed` smallint unsigned NOT NULL default '0',
  `structuresrecycled` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

-- Moved from defaults.sql.
INSERT INTO `ps_config_events` (`id`, `gametype`, `modtype`, `eventname`, `alias`, `regex`, `idx`, `ignore`, `codefile`) 
    VALUES 
        (1,'halflife','','kill','','/^\"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',10,0,''),
        (2,'halflife','','attacked','','/^\"(.+(?:<[^>]*>))\" attacked \"(.+(?:<[^>]*>))\" with \"([^\"]+)\"(.*)/',20,1,''),
        (4,'halflife','','round','','/^World triggered \"([^\"]+)\"(.*)/',40,0,''),
        (5,'halflife','','entered_game','','/^\"(.+(?:<[^>]*>))\" entered the game(.*)/',50,0,''),
        (6,'halflife','','joined_team','','/^\"(.+(?:<[^>]*>))\" joined team \"([^\"]+)\"/',60,0,''),
        (7,'halflife','','suicide','','/^\"(.+(?:<[^>]*>))\" committed suicide with \"([^\"]+)\"(.*)/',70,0,''),
        (8,'halflife','','changed_name','','/^\"(.+(?:<[^>]*>))\" changed name to \"([^\"]+)\"/',80,0,''),
        (9,'halflife','','connected','','/^\"(.+(?:<[^>]*>))\" connected, address \"([^\"]+)\"/',90,0,''),
        (10,'halflife','','connected_steamid','','/^\"(.+(?:<[^>]*>))\" (?:STEAM|VALVE) USERID (.+)/',100,0,''),
        (11,'halflife','','disconnected','','/^\"(.+(?:<[^>]*>))\" disconnected/',110,0,''),
        (12,'halflife','','chat','','/^\"(.+(?:<[^>]*>))\" say(_team)* \"(.*)\"?(.*)/',120,0,''),
        (13,'halflife','','rcon','','/^(Bad )?Rcon: \"rcon (-*\\d+) \"?(.*?)\"? (.+?)(?:\" from \"([^\"]+)\")?/',130,1,''),
        (14,'halflife','','cheated','','/^Secure: \"(.+(?:<[^>]*>))\" was detected cheating/',140,0,''),
        (15,'halflife','','ban','','/^(Addip|Ban(?:id)?): \"([^\"]+)\" was (?:kicked and )?(?:banned)(?: by IP)? \"([^\"]+)\" by \"([^\"]+)\"(.*)/',150,1,''),
        (16,'halflife','','unban','','/^Remove(id|ip): \"([^\"]+)\" was unbanned by \"(.+(?:<[^>]*>))\"(.*)/',160,1,''),
        (17,'halflife','','kick','','/^Kick: \"(.+(?:<[^>]*>))\" was kicked by \"(.+(?:<[^>]*>)?)\"(.*)/',170,0,''),
        (18,'halflife','','pingkick','','/^\"(.+(?:<[^>]*>))\" kicked due to high ping(.*)/',180,0,''),
        (19,'halflife','','ffkick','','/^\"(.+(?:<[^>]*>))\" has been auto kicked from the game for TKing/',190,0,''),
        (20,'halflife','','startedmap','','/^(Started|Loading) map \"([^\"]+)\"(.*)/',200,0,''),
        (21,'halflife','','logstartend','','/^Log file (started|closed)(.*)/',210,0,''),
        (22,'halflife','','ignored1','','/^[Ss]erver (?:cvars?|say|shutdown)/',220,1,''),
        (23,'halflife','','ignored2','','/^(?:\\]TSC\\[|Succeeded|FATAL|-|Loaded)/',230,1,''),
        (24,'halflife','','ignored3','','/^(?:Config|Swear|server_)/',240,1,''),
        (25,'halflife','','ignored4','','/^\"[^\"]+\" = \"/',250,1,''),
        (33,'halflife','','changed_role','','/^\"(.+(?:<[^>]*>))\" changed role to \"([^\"]+)\"/',330,0,''),
        (39,'halflife','natural','plrtrigger','','/^\"(.+(?:<[^>]*>))\" triggered \"([^\"]+)\"(?: against \"(.+(?:<[^>]*>))\")?(.*)/',390,0,''),
        (40,'halflife','natural','ns_mapinfo','','/^\\(map_name \"([^\"]+)\"\\)(.*)/',400,0,''),
        (41,'halflife','natural','ns_teamlost','','/^Team \\d+ has lost/',410,1,''),
        (42,'halflife','natural','ns_ignore1','','/^(?:Map validity|Game reset|AvHGamerules|Contact|BUG:|AvHVisibleBlipList)/',420,1,''),
        (43,'halflife','natural','ns_ignore2','','/^Team \"\\d+\" scored/',430,1,''),
        (44,'halflife','natural','ns_eject_fix','','/^Eject commander: \\d+ of \\d+ votes needed\\.(.*)/',440,0,''),
        (45,'halflife','','rcon2','','/^rcon from/',130,1,''),
        (48,'halflife','','spatial','','/^\\[KTRAJ\\] \"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',480,0,''),
        (49,'halflife','','plugin','','/^\\[[^\\]]+\\]/',490,1,''),
        (50,'halflife','','console','','/^(CONSOLE|PLAYER FILTER) :/',500,1,''),
        (100,'halflife','','ignored5','','/^Server name is \"([^"]+)\"/',1000,1,''),
        (101,'halflife','','ignored6','','/^Connection to Steam servers successful./',1010,1,''),
        (102,'halflife','','ignored7','','/^VAC secure mode is activated./',1020,1,''),
        (103,'halflife','','ignored8','','/^Assigned anonymous gameserver Steam ID \[(.:\\d:\\d+:\\d+)\]./',1030,1,''),
        (104,'halflife','','ignored9','','/^Public IP is ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\\d{1,3}\.){3}\\d{1,3}./',1040,1,'');

INSERT INTO `ps_config_plrbonuses` (`id`, `eventname`, `enactor`, `enactor_team`, `victim`, `victim_team`, `description`, `gametype`, `modtype`) 
    VALUES 
        (21,'votedown',0,0,0,0,'A player voted for the current commander (victim) to step down.','halflife','natural'),
        (23,'structure_destroyed',1,0,0,0,'A player destroyed a structure','halflife','natural'),
        (27,'round_win',0,50,0,-50,'TEAM event that fires when a round ends and a team won','halflife','natural'),
        (34,'ffkill',-10,0,0,0,'when a player kills a team mate','',''),
        (35,'commander_win',0,0,0,0,'When the marines win, the commander can be given some bonus points.','halflife','natural');

INSERT INTO `ps_config_awards` (`id`, `enabled`, `idx`, `type`, `negative`, `class`, `name`, `groupname`, `phrase`, `expr`, `order`, `where`, `limit`, `format`, `gametype`, `modtype`, `rankedonly`, `description`) 
    VALUES 
        (4,1,10,'player',0,'','Highest Skill','','{$player.link} has the highest skill with {$award.value}','{$skill}','desc','',0,'%.02f',NULL,NULL,1,'Player with the highest skill'),
        (6,1,20,'player',0,'','Most Kills','','{$player.link} has killed the most players ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Player with the most kills (any team)'),
        (8,1,70,'player',0,'','Most Time Online','','{$player.link} has been online the longest ({$award.value})','{$onlinetime}','desc','',25,'compacttime',NULL,NULL,1,'Player with the most online time'),
        (9,1,190,'weaponclass',0,'','Most Kills with {$weapon.class} weapons','','{$player.link} has the most {$weapon.class} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with {$weapon.class} type weapons (including: {$weapon.list}).'),
        (10,1,180,'weapon',0,'','Most Kills with {$weapon.name}','','{$player.link} has the most {$weapon.link} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with a {$weapon.name}'),
        (13,1,30,'player',0,'','Most Bonus Points','','{$player.link} achieved the most bonus points ({$award.value})','{$totalbonus}','desc','',25,'commify',NULL,NULL,1,'Player that has achieved the most bonus points.'),
        (23,1,50,'player',1,'','Worst Teammate','','{$player.link} has killed the most teammates ({$award.value})','{$ffkills}','desc','',0,'commify',NULL,NULL,1,'Player with the most friendly fire kills (ie: Worst Teammate)'),
        (25,1,60,'player',1,'','Worst Team Kill Percentage','','{$player.link} has the highest team kill percentage ({$award.value})','{$ffkills} / {$kills} * 100','desc','',0,'%0.02f%%',NULL,NULL,1,'Player with the highest team kill percentage.'),
        (40,1,400,'player',0,'','Homewrecker','','{$player.link} destroyed the most structures ({$award.value})','{$structuresdestroyed}','desc','',10,'commify','halflife','natural',1,'Player that enjoys kicking over sand castles.');

INSERT INTO `ps_config_overlays` (`id`, `gametype`, `modtype`, `map`, `minx`, `miny`, `maxx`, `maxy`, `width`, `height`, `flipv`, `fliph`, `rotate`) 
    VALUES 
        (100, 'halflife', 'natural', 'co_angst', -705, -1785, 1385, 2535, 295, 600, 1, 0, 0),
        (101, 'halflife', 'natural', 'co_blackmesa_r5a', -1930, -1710, 3330, 930, 600, 299, 1, 0, 0),
        (102, 'halflife', 'natural', 'co_core', -1958, -1191, 1251, 633, 600, 343, 1, 0, 0),
        (103, 'halflife', 'natural', 'co_daimos', -1950, -718, 1634, 2558, 600, 553, 1, 0, 0),
        (104, 'halflife', 'natural', 'co_faceoff', -884, -1627, 973, 1929, 317, 600, 1, 0, 0),
        (105, 'halflife', 'natural', 'co_freefall_b2b', -2280, -1235, 740, 1640, 600, 579, 1, 0, 0),
        (106, 'halflife', 'natural', 'co_kestrel', -2215, -416, 1204, 3782, 488, 600, 1, 0, 0),
        (107, 'halflife', 'natural', 'co_niveus', -2805, -213, 151, 2641, 600, 578, 1, 0, 0),
        (108, 'halflife', 'natural', 'co_plague_mvm', -1201, -628, 753, 3288, 302, 600, 1, 0, 0),
        (109, 'halflife', 'natural', 'co_pulse', -1204, -1934, 1263, 1394, 448, 600, 1, 0, 0),
        (110, 'halflife', 'natural', 'co_s_marioland_mvm2', -2073, -1596, 2074, 1592, 600, 480, 1, 0, 0),
        (111, 'halflife', 'natural', 'co_sava', -2888, -1814, 615, 3766, 376, 600, 1, 0, 0),
        (112, 'halflife', 'natural', 'co_spacefall_b12', -2595, -1650, 125, 510, 600, 482, 1, 0, 0),
        (113, 'halflife', 'natural', 'co_ulysses', -1456, -1841, 1169, 1430, 484, 600, 1, 0, 0),
        (114, 'halflife', 'natural', 'co_umbra', 418, -3193, 3110, 1602, 338, 600, 1, 0, 0),
        (115, 'halflife', 'natural', 'co_volcanodrop', 0, -1610, 1475, 2435, 219, 600, 1, 0, 0),
        (116, 'halflife', 'natural', 'ns_abyss_b1', -2275, -2799, 1787, 1527, 565, 600, 1, 0, 0),
        (117, 'halflife', 'natural', 'ns_altair', -3625, -3269, 2721, 3261, 585, 600, 1, 0, 0),
        (118, 'halflife', 'natural', 'ns_ayumi', -2267, -3818, 2776, 2716, 461, 600, 1, 0, 0),
        (119, 'halflife', 'natural', 'ns_bast', -3290, -3426, 3256, 2692, 600, 562, 1, 0, 0),
        (120, 'halflife', 'natural', 'ns_caged', -3484, -2996, 2957, 3262, 600, 586, 1, 0, 0),
        (121, 'halflife', 'natural', 'ns_eclipse', -3842, -3394, 3502, 2423, 600, 476, 1, 0, 0),
        (122, 'halflife', 'natural', 'ns_eon', -3360, -3829, 2572, 3998, 455, 600, 1, 0, 0),
        (123, 'halflife', 'natural', 'ns_hera', -3868, -4032, 3148, 3185, 582, 600, 1, 0, 0),
        (124, 'halflife', 'natural', 'ns_lost', -2297, -2878, 2339, 2758, 494, 600, 1, 0, 0),
        (125, 'halflife', 'natural', 'ns_lucid', -2753, -3199, 2839, 2304, 600, 594, 1, 0, 0),
        (126, 'halflife', 'natural', 'ns_machina', -3789, -2604, 3909, 3155, 600, 447, 1, 0, 0),
        (127, 'halflife', 'natural', 'ns_metal', -2728, -2962, 3638, 3720, 570, 600, 1, 0, 0),
        (128, 'halflife', 'natural', 'ns_nancy', -3145, -3025, 3472, 3662, 592, 600, 1, 0, 0),
        (129, 'halflife', 'natural', 'ns_nothing', -3755, -3222, 3837, 2839, 600, 477, 1, 0, 0),
        (130, 'halflife', 'natural', 'ns_origin', -3749, -3198, 3825, 2819, 600, 477, 1, 0, 0),
        (131, 'halflife', 'natural', 'ns_shiva', -3047, -2862, 3928, 3219, 600, 524, 1, 0, 0),
        (132, 'halflife', 'natural', 'ns_siege005returns', -2559, -3345, 3398, 2692, 593, 600, 1, 0, 0),
        (133, 'halflife', 'natural', 'ns_tanith', -3301, -2791, 3388, 2964, 600, 520, 1, 0, 0),
        (134, 'halflife', 'natural', 'ns_veil', -3246, -3211, 3569, 2967, 600, 543, 1, 0, 0);

-- QoL.
INSERT INTO `ps_weapon` (`weaponid`, `uniqueid`, `name`, `skillweight`, `class`) 
    VALUES 
        (1, 'machinegun', 'Light Machine Gun', 1.00, 'Submachine Gun'),
        (2, 'pistol', 'Pistol', 1.50, 'Hand Gun'),
        (3, 'turret', 'Turret', 0.40, 'Structure'),
        (4, 'bitegun', 'Skulk Bite', 1.00, 'Alien Melee'),
        (5, 'item_mine', 'Mine', 0.20, 'Mine'),
        (6, 'swipe', 'Fade Swipe', 1.00, 'Alien Melee'),
        (7, 'shotgun', 'Shot Gun', 0.80, 'Shot Gun'),
        (8, 'team_turretfactory', 'Electrified Turret Factory', 0.40, 'Structure'),
        (9, 'heavymachinegun', 'Heavy Machine Gun', 0.60, 'Machine Gun'),
        (10, 'resourcetower', 'Electrified Resource Tower', 0.40, 'Structure'),
        (11, 'grenade', 'Grenade Launcher', 1.00, 'Grenade Launcher'),
        (12, 'team_advturretfactory', 'Electrified Advanced Turret Factory', 0.20, 'Structure'),
        (13, 'handgrenade', 'Grenade', 2.00, 'Grenade'),
        (14, 'parasite', 'Parasite', 10.00, 'Intel'),
        (15, 'knife', 'Knife', 2.00, 'Marine Melee'),
        (16, 'welder', 'Welder', 10.00, 'Utility'),
        (17, 'bite2gun', 'Lerk Bite', 1.00, 'Alien Melee'),
        (18, 'spitgunspit', 'Gorge Spit', 2.00, 'Alien Ranged'),
        (19, 'claws', 'Onos Gore', 0.80, 'Alien Melee'),
        (20, 'devour', 'Onos Devour', 0.60, 'Alien Melee'),
        (21, 'offensechamber', 'Offence Chamber', 0.60, 'Structure'),
        (22, 'leap', 'Skulk Leap', 1.50, 'Alien Melee'),
        (23, 'sporegunprojectile', 'Spore Gun', 1.50, 'Alien Ranged')
        (24, 'divinewind', 'Xenocide', 4.00, 'Sacrifice');

INSERT INTO `ps_role` (`roleid`, `uniqueid`, `name`, `team`) 
    VALUES 
        (1, 'soldier', 'Soldier', NULL),
        (2, 'skulk', 'Skulk', NULL),
        (3, 'gestate', 'Gestate', NULL),
        (4, 'commander', 'Commander', NULL),
        (5, 'gorge', 'Gorge', NULL),
        (6, 'fade', 'Fade', NULL),
        (7, 'lerk', 'Lerk', NULL),
        (8, 'onos', 'Onos', NULL);
