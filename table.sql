CREATE TABLE `wxcouple` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `fromuserid` int unsigned NOT NULL,
  `touserid` int unsigned NOT NULL,
  `status` smallint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `wxpicture` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `coupleid` int unsigned NOT NULL,
  `userid` int unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wxevent` (
     `id` int unsigned NOT NULL AUTO_INCREMENT,
     `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
     `created_at` timestamp NULL DEFAULT NULL,
     `updated_at` timestamp NULL DEFAULT NULL,
     `deleted_at` timestamp NULL DEFAULT NULL,
     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wxeventflow` (
     `id` int unsigned NOT NULL AUTO_INCREMENT,
     `coupleid` int unsigned NOT NULL,
     `userid` int unsigned NOT NULL,
     `eventid` int unsigned NOT NULL,
     `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
     `created_at` timestamp NULL DEFAULT NULL,
     `updated_at` timestamp NULL DEFAULT NULL,
     `deleted_at` timestamp NULL DEFAULT NULL,
     PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wxmiss` (
       `id` int unsigned NOT NULL AUTO_INCREMENT,
       `coupleid` int unsigned NOT NULL,
       `userid` int unsigned NOT NULL,
       `created_at` timestamp NULL DEFAULT NULL,
       `updated_at` timestamp NULL DEFAULT NULL,
       `deleted_at` timestamp NULL DEFAULT NULL,
       PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `wxcity` (
      `id` int unsigned NOT NULL AUTO_INCREMENT,
      `coupleid` int unsigned NOT NULL,
      `userid` int unsigned NOT NULL,
      `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
      `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
      `longtitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
      `created_at` timestamp NULL DEFAULT NULL,
      `updated_at` timestamp NULL DEFAULT NULL,
      `deleted_at` timestamp NULL DEFAULT NULL,
      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;