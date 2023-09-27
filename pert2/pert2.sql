CREATE TABLE `jasa`  (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `jeniskapal`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `kapal`  (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `asal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_layanan` varchar(255) NULL,
  `tarif` varchar(255) NULL,
  `satuan` varchar(255) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `layanan`  (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tarif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `matauang`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `pelayanan`  (
  `id` int NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `satuan`  (
  `id` int NOT NULL,
  `nama` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `tarif_dollar`  (
  `id` int NOT NULL,
  `tarif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

CREATE TABLE `tarif_rupiah`  (
  `id` int NOT NULL,
  `tarif` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

ALTER TABLE `jeniskapal` ADD CONSTRAINT `fk_jeniskapal_kapal_1` FOREIGN KEY (`id`) REFERENCES `kapal` (`id`);
ALTER TABLE `kapal` ADD CONSTRAINT `fk_kapal_satuan_1` FOREIGN KEY (`id`) REFERENCES `satuan` (`id`);
ALTER TABLE `layanan` ADD CONSTRAINT `fk_layanan_tarif_rupiah_1` FOREIGN KEY (`id`) REFERENCES `tarif_rupiah` (`id`);
ALTER TABLE `tarif_dollar` ADD CONSTRAINT `fk_tarif_dollar_layanan_1` FOREIGN KEY (`id`) REFERENCES `layanan` (`id`);

