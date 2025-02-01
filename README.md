# DriftV Remastered

Welcome to **DriftV Remastered**, a high-performance drifting gamemode for FiveM, designed to deliver an immersive and thrilling drifting experience. This gamemode is optimized for **OneSync Infinity** but can also run without it, though performance may vary. Below, you'll find detailed instructions on how to set up and configure DriftV Remastered for your FiveM server.

---

## 📋 Requirements

Before setting up DriftV Remastered, ensure you have the following resources and dependencies installed on your FiveM server:

### **Mandatory Resources**
Ensure these resources are loaded in your `server.cfg` file:
```plaintext
ensure mapmanager
ensure chat
ensure DriftV-Theme
ensure spawnmanager
ensure sessionmanager

ensure oxmysql
ensure animation
ensure drift-assets
ensure drift-extra-assets
ensure drift-ui
ensure DriftV
ensure drift-vehicles
ensure DriftV-Loading
ensure DriftV-Map
ensure driftV-sounds
ensure FeedM
ensure PolyZone
ensure speedometer
ensure utils
ensure FeedM
ensure IPL_Loader
# ensure [Dev-Tools] # Un-comment this line if you want to use the /coords tool
```

## 🛠️ Setup Instructions

### **1. Install DriftV Remastered**
1. Download the latest release of **DriftV Remastered** from the [GitHub repository](https://github.com/LaureLNWK/DriftV-Remaster).
2. Extract the contents of the ZIP file into your FiveM server's `resources` folder.**REPLACE EVERYTHING THAT IT ASKS YOU WHEN YOU DRAG AND DROP**
3. Ensure all required resources are added to your `server.cfg` file as shown above.

### **2. Database Configuration**
DriftV Remastered uses a MySQL database to store player and crew data. Follow these steps to set up the database:

```mysql
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.5.1-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Database structure for driftv
CREATE DATABASE IF NOT EXISTS `driftv` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `driftv`;

-- Table structure for table `kvp`
CREATE TABLE IF NOT EXISTS `kvp` (
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

CREATE TABLE `players` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `license` VARCHAR(255) NOT NULL,
    `season` VARCHAR(255) NOT NULL,
    `pName` VARCHAR(255) NOT NULL,
    `money` INT NOT NULL DEFAULT 0,
    `driftPoint` INT NOT NULL DEFAULT 0,
    `exp` INT NOT NULL DEFAULT 0,
    `level` INT NOT NULL DEFAULT 0,
    `cars` JSON NOT NULL,
    `succes` JSON NOT NULL,
    `crew` VARCHAR(255) NOT NULL DEFAULT 'None',
    `crewOwner` BOOLEAN NOT NULL DEFAULT FALSE,
    UNIQUE (`license`, `season`)
);

CREATE TABLE `crews` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `tag` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NOT NULL UNIQUE,
    `memberCount` INT NOT NULL DEFAULT 1,
    `totalPoints` INT NOT NULL DEFAULT 0,
    `win` INT NOT NULL DEFAULT 0,
    `loose` INT NOT NULL DEFAULT 0,
    `elo` INT NOT NULL DEFAULT 1000,
    `members` JSON NOT NULL,
    `rank` INT NOT NULL DEFAULT 500
);

-- Exported data was not selected.

-- Restore previous settings
/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
```

## 🚀 Running the Server
1. Start your FiveM server.
2. Ensure all resources are loaded correctly by checking the server console for errors.
3. Players can now join your server and start drifting!

---

## 🎨 Features
- **Custom Drift Vehicles**: A wide range of vehicles optimized for drifting.
- **Dynamic UI**: A sleek and responsive user interface for tracking drift points, speed, and more.
- **Crew System**: Form crews, compete, and climb the leaderboards.
- **Custom Maps**: Pre-loaded maps designed for drifting.
- **Sound Effects**: Immersive engine and drift sounds.

---

## 🛠️ Troubleshooting
- **Performance Issues**: Ensure **OneSync Infinity** is enabled for optimal performance.
- **Database Errors**: Double-check your MySQL credentials and ensure the database and tables are created correctly.
- **Missing Resources**: Verify that all required resources are properly installed and ensured in your `server.cfg`.

---

## 🙏 Credits
- **Original Creator**: [Rubylium](https://github.com/Rubylium)
- **Original Repository**: [DriftV](https://github.com/Rubylium/DriftV)
- **Remastered By**: [SophiaDLL](https://github.com/SophiaDLL)

---

Enjoy drifting with **DriftV Remastered**! If you encounter any issues or have suggestions, feel free to open an issue on the [GitHub repository](https://github.com/LaureLNWK/DriftV-Remaster). Happy drifting! 🚗💨

---
## 🚗 Vehicle Credits

| Car Name | Spawn Code | Brand | Authors Download Link[5MODS](https://gta5-mods.com/) | Status | Extra Notes |
| :-: | :-: | :-: | :-: | :-: | :-: |
| **Annis Remus Tsuki Edition** | tfremus | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-remus-tsuki-edition-add-on-fivem-tuning-lods) | ✔️ | |
| **Annis Euros X32 Custom** | eurosx32wb | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/euros-x32-custom-add-on-fivem) | ✔️ | |
| **Annis Euros** | euros | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-euros-add-on-tuning-liveries) | ✔️ | |
| **Annis kawaii** | kawaii | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-kawaii-addon-replace-tuning) | ✔️ | |
| **Annis Roxanne** | roxanne | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-roxanne-add-on-tuning-sounds-liveries) | ✔️ | |
| **Annis ZR380 R** | zr380c | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/6str-annis-zr380-custom-add-on-tuning) | ✔️ | |
| **Annis Elegy RH4** | rh4 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-elegy-rh4-add-on-tuning-liveries-sounds) | ✔️ | |
| **Annis s-230** | S230 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-s-230-add-on-tuning-liveries) | ✔️ | |
| **Annis ZR-250** | ZR250 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-zr-250-savestra-add-on-tuning-liveries-sounds) | ✔️ | |
| **Annis ZR-350** | ZR | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-zr-350-improved) | ✔️ | |
| **Annis Elegy RH8 FR-Works** | rh82 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/elegy-rh8-custom-add-on-sound-tuning) | ✔️ | |
| **Annis ZR390** | ZR390 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-zr390) | ✔️ | |
| **Annis Elegy Retro Ute** | ELEGY | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-elegy-retro-ute-add-on-tuning) | ✔️ | |
| **Annis Elegy RH-7** | ELEGYRH7 | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-elegy-rh-7-addon-tuning-liveries-sounds-rhd-deadman23-jerkov-tgi_j-and-the-vanillaworks-community) | ✔️ | |
| **Annis Majima LM** | MAJIMALM | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-majima-lm-add-on-liveries-sound) | ✔️ | |
| **Annis Remus Cabrio** | REMUSVERT | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-remus-cabrio-add-on-tuning-liveries) | ✔️ | |
| **Annis Cardboard Bozozoku** | BOZOCARD | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-cardboard-bozozoku-car-addon) | ✔️ | |
| **Annis Remus Pickup** | REMUSP | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-remus-pickup-add-on-tuning) | ✔️ | |
| **Annis Trailwilder** | TRAILW | Annis | [5MODS Link](https://www.gta5-mods.com/vehicles/annis-trailwilder-add-on-tuning-mmtgarage) | ✔️ | |
| **Albany Cavalcade III** | NCAVALCADE | Albany | [5MODS Link](https://www.gta5-mods.com/vehicles/albany-cavalcade-iii-add-on-tuning-liveries-lods) | ✔️ | |
| **Albany Primo LX** | PRIMOLX | Albany | [5MODS Link](https://www.gta5-mods.com/vehicles/albany-primo-lx) | ✔️ | |
| **Albany Esperanto** | ESPERANTO | Albany | [5MODS Link](https://www.gta5-mods.com/vehicles/albany-esperanto-coupe-add-on-handling) | ✔️ | |
| **Albany Esperanto Executive** | ESPEXECUTIVE | Albany | [5MODS Link](https://www.gta5-mods.com/vehicles/albany-esperanto-executive-add-on-tuning-liveries) | ✔️ | |
| **Albany Primo ARD** | PRIMOARD | Albany | [5MODS Link](https://www.gta5-mods.com/vehicles/albany-primo-ard) | ✔️ | |
| **Benefactor Schafter V12** | SCHAFTER3RS | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-schafter-v12-rework-facelift-fivem-add-on-sp-replace) | ✔️ | |
| **Benefactor Glendale Strech** | glendalelimo | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-glendale-stretch-add-on) | ✔️ | |
| **Benefactor streiter v2** | streiter2 | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-streiter-add-on) | ✔️ | |
| **Benefactor spritzer** | spritzer | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-spritzer-str-add-on-tuning) | ✔️ | |
| **Benefactor spritzer STM** | spritzerdtm | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-spritzer-str-add-on-tuning) | ✔️ | |
| **Benefactor Schlagen STR** | SCHLAGENSTR | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-spritzer-str-add-on-tuning) | ✔️ | |
| **Benefactor Schwartzer DTM** | SCDTM | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-spritzer-str-add-on-tuning) | ✔️ | |
| **Benefactor Surano E-Motion** | SURANOE | Benefactor | [5MODS Link](https://www.gta5-mods.com/vehicles/benefactor-surano-e-motion-add-on-lods) | ✔️ | |
| **Bravado Lazyeye Gauntlet** | yubbynub | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/lazyeye-gauntlet) | ✔️ | |
| **Bravado Gauntlet Hellfire Last Call** | HELLFIRELASTCALL | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-gauntlet-hellfire-last-call-add-on-tuning) | ✔️ | |
| **Bravado Hellfire** | buffalo4h | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-buffalo-hellfire-add-on-tuning) | ✔️ | |
| **Bravado Gauntlet v2** | gauntletc | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-hellfire-ctx-add-on-tuning) | ✔️ | |
| **Bravado Gauntlet STX** | gauntletstx | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/buffalo-stx-hellfire-custom-add-on-fivem) | ✔️ | |
| **Bravado Vulture** | vulture | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-vulture-add-on-tuning-liveries-sounds) | ✔️ | |
| **Bravado Howitzer** | HOWITZER | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-howitzer-pack-add-on-tuning) | ✔️ | |
| **Bravado Howitzer v2** | HOWITZER2 | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-howitzer-pack-add-on-tuning) | ✔️ | |
| **Bravado Gresley Hellhound** | GRESLEYH | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-gresley-hellhound-add-on-sounds) | ✔️ | |
| **Bravado Boxville Bravado MBU** | servicevan | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/boxville-bravado-mbu-sp-addon-fivem-unlocked) | ✔️ | |
| **Bravado Buffalo Street** | sabuffalostreet | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-buffalo-street-add-on-fivem) | ✔️ | |
| **Bravado Buffalo Gauntlet Street** | sagauntletstreet | Bravado | [5MODS Link](https://www.gta5-mods.com/vehicles/bravado-gauntlet-street) | ✔️ | |
| **BF Club racing** | CLUBTA | BF | [5MODS Link](https://www.gta5-mods.com/vehicles/bf-club-racing-addon-tuning) | ✔️ | |
| **BF Ruff-Weld Weevil** | weevilf6 | BF | [5MODS Link](https://www.gta5-mods.com/vehicles/bf-ruff-weld-weevil-addon-tuning-liverys-mmtgarage) | ✔️ | |
| **BORDEAUX ARIAS** | arias | BORDEAUX | [5MODS Link](https://www.gta5-mods.com/vehicles/bordeaux-arias-add-on-tuning-lod-s-sounds) | ✔️ | |
| **Bordeaux SP3 Mirage** | Mirage | BORDEAUX | [5MODS Link](https://www.gta5-mods.com/vehicles/bordeaux-sp3-mirage-fivem-add-on-lods-liveries-tuning) | ✔️ | |
| **Coil Raiden Z** | RAIDENZ | COIL | [5MODS Link](https://www.gta5-mods.com/vehicles/coil-raiden-z-add-on-lod-s-officer91-wibflip) | ✔️ | |
| **Chariot Romero Hearse Widebody** | ROMTUNER | Chariot | [5MODS Link](https://www.gta5-mods.com/vehicles/chariot-romero-hearse-widebody-add-on-tuning-lods) | ✔️ | |
| **Cheval picadorexr** | picadorexr | Cheval | [5MODS Link](https://www.gta5-mods.com/vehicles/cheval-picador-exr-addon-liveries-tuning) | ✔️ | |
| **coquette D10** | coquette4c | coquette | [5MODS Link](https://www.gta5-mods.com/vehicles/invetero-coquette-d10-widebody-add-on-tuning-hsw-sounds-lods) | ✔️ | |
| **Declasse Granger 3600UT** | h4rxgranUT | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-granger-3600ut-add-on-tuning-fivem-template) | ✔️ | |
| **Declasse Indiana** | indiana | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-indiana-pack) | ✔️ | |
| **Declasse Indiana XL** | indianaxl | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-indiana-pack) | ✔️ | |
| **1991 Declasse Premier** | 91prem | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-premier-200-ss-beta-w-i-p-project) | ✔️ | |
| **Declasse Walton v1** | l35r | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-walton-l35-stock-add-on-lod-s-tuning-liverys) | ✔️ | |
| **Declasse Walton v2** | l35s | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-walton-l35-stock-add-on-lod-s-tuning-liverys) | ✔️ | |
| **Declasse Yosemite Raid** | gstyosemite1 | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-yosemite-drt-add-on-fivem-tuning-template-gom) | ✔️ | |
| **Declasse Tampa X wildbody** | TAMPAX | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/tampa-x-widlbody-add-on-tuning-livery) | ✔️ | |
| **Declasse Premier 200 SS** | TMPREM | Declasse | [5MODS Link](https://www.gta5-mods.com/vehicles/declasse-premier-200-ss-beta-w-i-p-project) | ✔️ | |
| **Dinka Jester re-RR** | JESTGPR | DINKA | [5MODS Link](https://www.gta5-mods.com/vehicles/dinka-jester-re-rr-add-on-widebody) | ✔️ | |
| **Dinka Millennial Wagon** | MILLENNIAL | DINKA | [5MODS Link](https://www.gta5-mods.com/vehicles/dinka-millennial) | ✔️ | |
| **Dinka Nexus** | NEXUS | DINKA | [5MODS Link](https://www.gta5-mods.com/vehicles/dinka-nexus) | ✔️ | |
| **Cavos V6 WideBody** | chavosv6w | Dinka | [5MODS Link](https://www.gta5-mods.com/vehicles/chavos-v6-widebody-add-on-fivem) | ✔️ | |
| **Jester MK4 Custom** | jester3c | dINKA | [5MODS Link](https://www.gta5-mods.com/vehicles/jester-mk4-custom-add-on-fivem) | ✔️ | |
| **Enus Windsor GP Kit** | h4rxwindsorcus | Enus | [5MODS Link](https://www.gta5-mods.com/vehicles/enus-windsor-ss-kit-add-on-replace) | ✔️ | |
| **Emperor Sheavas** | sheavas | Emperor | [5MODS Link](https://www.gta5-mods.com/vehicles/emperor-sheava-add-on-lods) | ✔️ | |
| **Grotti Stinger SC** | stingersc | Grotti | [5MODS Link](https://www.gta5-mods.com/vehicles/grotti-stinger-sc) | ✔️ | |
| **Grotti itali gts** | italigts | Grotti | [5MODS Link](https://www.gta5-mods.com/vehicles/grotti-itali-gto-spider-add-on-tuning) | ✔️ | |
| **Grotti Turismo Classic Custom** | turismoc | Grotti | [5MODS Link](https://www.gta5-mods.com/vehicles/grotti-turismo-classic-custom) | ✔️ | |
| **Grotti Itali GTO N-Larga Custom** | ITALIGTON | Grotti | [5MODS Link](https://www.gta5-mods.com/vehicles/grotti-itali-gto-n-larga-custom-add-on) | ✔️ | |
| **gallivanter baller RAID** | baller7r | gallivanter | [5MODS Link](https://www.gta5-mods.com/vehicles/gallivanter-baller-raid-add-on-tuning-lods-liveries-shards) | ✔️ | |
| **hijak EVA** | eva | hijak | [5MODS Link](https://www.gta5-mods.com/vehicles/hijak-eva-add-on-liveries) | ✔️ | |
| **Iemanjá Carumba** | CARUMBA | Iemanjá | [5MODS Link](https://www.gta5-mods.com/vehicles/iemanja-carumba-add-on-tuning-sounds) | ✔️ | |
| **Imponte Duke 450 cui** | dukes4 | Imponte | [5MODS Link](https://www.gta5-mods.com/vehicles/6str-imponte-ruiner-450-custom-add-on-tuning) | ✔️ | |
| **Imponte Ruiner 450 Custom** | ruiner6str | Imponte | [5MODS Link](https://www.gta5-mods.com/vehicles/6str-imponte-ruiner-450-custom-add-on-tuning) | ✔️ | |
| **Imponte Ruiner UTE** | ruinerafd | Imponte | [5MODS Link](https://www.gta5-mods.com/vehicles/imponte-ruiner-ute-add-on-fivem-alzheimer-fools-special) | ✔️ | |
| **Imponte Firecast Phoenix** | FIRECAST | Imponte | [5MODS Link](https://www.gta5-mods.com/vehicles/imponte-firecast-phoenix-add-on) | ✔️ | |
| **Imponte Deluxo GT** | DELUXOGT | Imponte | [5MODS Link](https://www.gta5-mods.com/vehicles/imponte-deluxo-gt-add-on-tuning-extras) | ✔️ | |
| **Karin atlas** | atlas | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-atlas-add-on-liveries) | ✔️ | |
| **Karin Sultan RSV8 MK2** | SULTANRSV8 | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/sultan-rs-v8-twinturbo-add-on) | ✔️ | |
| **Karin Futo Custom** | FUTOPE | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-futo-custom) | ✔️ | |
| **Karin Ariant** | ARIANT | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-ariant-add-on-tuning-sounds-lods) | ✔️ | |
| **Karin Boor Widebody** | BOORC | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-boor-widebody-add-on-tuning-sounds-lods) | ✔️ | |
| **Karin Drift Rebel** | REBELD | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-drift-rebel-add-on-sounds-lods) | ✔️ | |
| **Karin Futo Hatchback N2 Spec** | N2FUTO | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-futo-hatchback-n2-spec-add-on-tuning-liveries) | ✔️ | |
| **Karin R70K-II** | R70K | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-r70k-ii-add-on-tuning-liveries) | ✔️ | |
| **Karin Sultan Backyard Boost** | SULBOOST | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-sultan-backyard-boost-add-on-tuning-lods) | ✔️ | |
| **Karin Sultan Classic Custom** | SULTAN2C | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-sultan-classic-custom-add-on-sounds) | ✔️ | |
| **Karin Turtle** | turtle | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-turtle-demo-addon-fivem-tuning-liveries-template) | ✔️ | |
| **Karin Rebel Raid** | REBELR | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-rebel-raid-lods-add-on-modparts) | ✔️ | |
| **Karin Sultan Drift Missile** | SULTANDM | KARIN | [5MODS Link](https://www.gta5-mods.com/vehicles/karin-sultan-drift-missil-addon) | ✔️ | |
| **Lampadati Panorama** | panorama | Lampadati | [5MODS Link](https://www.gta5-mods.com/vehicles/classique-panorama-pack-add-on-tuning-liveries-lods) | ✔️ | |
| **Lampadati Komoda FR-Works** | KOMODAFR | Lampadati | [5MODS Link](https://www.gta5-mods.com/vehicles/lampadati-komoda-custom-add-on-tuning) | ✔️ | |
| **Maibatsu Sunrise VII** | sunrise1 | Maibatsu | [5MODS Link](https://www.gta5-mods.com/vehicles/maibatsu-sunrise-r-add-on-tuning-liveries-sounds) | ✔️ | |
| **Maibatsu Penumbra Retro** | PENTRO | Maibatsu | [5MODS Link](https://www.gta5-mods.com/vehicles/maibatsu-penumbra-retro-add-on-tuning) | ✔️ | |
| **Maibatsu Vincent Sport** | VINCENT2 | Maibatsu | [5MODS Link](https://www.gta5-mods.com/vehicles/maibatsu-vincent-sport-add-on-tuning-liveries) | ✔️ | |
| **Maibatsu Vincent Tourer** | VINCENT3 | Maibatsu | [5MODS Link](https://www.gta5-mods.com/vehicles/maibatsu-vincent-tourer-add-on-tuning-liveries) | ✔️ | |
| **Maxwell Molecule** | MOLECULE | MAXWELL | [5MODS Link](https://www.gta5-mods.com/vehicles/maxwel-molecule) | ✔️ | |
| **Obey 9R** | NINER | OBEY | [5MODS Link](https://www.gta5-mods.com/vehicles/obey-argento-add-on-sounds-lods) | ✔️ | |
| **Obey Argento** | ARGENTO | OBEY | [5MODS Link](https://www.gta5-mods.com/vehicles/obey-9r-add-on) | ✔️ | |
| **Obey DD-BLITZ** | DOUBLED | OBEY | [5MODS Link](https://www.gta5-mods.com/vehicles/obey-dd-blitz-add-on-tuning-livery) | ✔️ | |
| **Entity MTR** | H4REntityMTR | Overflod | [5MODS Link](https://www.gta5-mods.com/vehicles/overflod-entity-mtr-add-on-fivem-lods) | ✔️ | |
| **Oracle V12** | ORACLETA | ORACLE | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-oracle-v12-pack-add-on-tuning) | ✔️ | |
| **Oracle V12 std** | ORACLESTD | ORACLE | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-oracle-v12-pack-add-on-tuning) | ✔️ | |
| **Ocelot 620s** | f620s2 | Ocelot | [5MODS Link](https://www.gta5-mods.com/vehicles/ocelot-f620-drop-add-on-lods) | ✔️ | |
| **Pfister Comet RR** | cometrr | Pfister | [5MODS Link](https://www.gta5-mods.com/vehicles/pfister-comet-rr-add-on-fivem) | ✔️ | |
| **Pfister Comet S2 SCW** | comet6scw | Pfister | [5MODS Link](https://www.gta5-mods.com/vehicles/pfister-comet-s2-scw-add-on-tuning-v1-stancecity) | ✔️ | |
| **Pfister Meteor** | meteor | Pfister | [5MODS Link](https://www.gta5-mods.com/vehicles/pfister-meteor-add-on) | ✔️ | |
| **Pfister Stardust** | stardust | Pfister | [5MODS Link](https://www.gta5-mods.com/vehicles/pfister-stardust-add-on-tuning) | ✔️ | |
| **Pfister Comet S2 CUP** | cometcup | Pfister | [5MODS Link](https://www.gta5-mods.com/vehicles/pfister-comet-s2-cup-fivem-add-on-lods-liveries-tuning-sound) | ✔️ | |
| **Progen Ares GT** | ares | Progen | [5MODS Link](https://www.gta5-mods.com/vehicles/progen-ares-gt-fivem-add-on-lods-liveries-tuning) | ✔️ | |
| **Progen Emerus GTR** | EMERUSGTR | Progen | [5MODS Link](https://www.gta5-mods.com/vehicles/progen-emerus-gtr-add-on-tuning) | ✔️ | |
| **Progen MF1 Spyder** | MF1 | Progen | [5MODS Link](https://www.gta5-mods.com/vehicles/progen-mf1-spyder-add-on-animated-roof-sounds) | ✔️ | |
| **Progen MF1 Spyder v2** | MF1C | Progen | [5MODS Link](https://www.gta5-mods.com/vehicles/progen-mf1-spyder-add-on-animated-roof-sounds) | ✔️ | |
| **Pegassi Osiris Roadster** | OSIRISR | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/pegassi-osiris-roadster-add-on-tuning) | ✔️ | |
| **Pegassi Tempesta Evo Stradale** | TEMPESTAES | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/pegassi-tempesta-evo-stradale-add-on-tuning) | ✔️ | |
| **Pegassi Tempesta Custom** | tempesta2 | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/6str-pegassi-tempesta-custom-tuners-outlaws-add-on-tuneable) | ✔️ | |
| **Pegassi Tempesta FR-Works** | TEMPESTAFR | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/pegassi-tempesta-fr-works-add-on-tuning-ydrop) | ✔️ | |
| **Pegassi Torero Custom** | TOREROD | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/pegassi-torero-custom) | ✔️ | |
| **Pegassi Severo Widebody** | saseverowb | Pegassi | [5MODS Link](https://www.gta5-mods.com/vehicles/pegassi-severo-widebody) | ✔️ | |
| **Schyster Fusilade V8** | FUSILADEV8 | Schyster | [5MODS Link](https://www.gta5-mods.com/vehicles/schyster-fusilade-v8-add-on-tuning-fivem) | ✔️ | |
| **Übermacht Beretta** | BERETTA | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-beretta-add-on-tuning) | ✔️ | |
| **Übermacht sentinelsg4** | sentinelsg4 | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-sentinel-sg4-add-on-liveries) | ✔️ | |
| **Übermacht Zion 750ci** | zion4 | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-zion-classic-add-on-replace-tuning) | ✔️ | |
| **Ubermacht Cypher Hatchback** | CYPHERCT | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-cypher-hatchback-add-on-tuning-lod-s-sounds) | ✔️ | |
| **Ubermacht Sentinel Classic Custom** | sentinel6str2 | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/6str-ubermacht-sentinel-classic-custom-add-on-tuning) | ✔️ | |
| **Ubermacht Sentinel SG4 Drift Missile** | SENTINELDM | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-sentinel-sg4-drift-missile-add-on-sounds) | ✔️ | |
| **Übermacht Zion V10** | ZIONV10 | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-zion-v10-add-on-tuning-sounds-lods) | ✔️ | |
| **Cypher MX-2** | cypherx9 | Ubermacht | [5MODS Link](https://www.gta5-mods.com/vehicles/ubermacht-cypher-mx2-supremocustoms-fivem-add_on-tuning-liverys) | ✔️ | |
| **Vapid Custom FMJ Bullet** | fmjb | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-fmj-bullet-add-on-fivem) | ✔️ | |
| **Vapid Contender Baja** | CONTENDERBAJA | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-contender-custom-add-on) | ✔️ | |
| **2022 Vapid Caracara** | CARACARAN | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/2022-vapid-caracara-add-on-lods-tuning) | ✔️ | |
| **Vapid Torrence** | torrence | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-torrence-add-on-replace-tuning) | ✔️ | |
| **Vapid Dominator GT Coupe** | DOMGTCOUPE | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-dominator-gt-coupe-add-on-tuning) | ✔️ | |
| **Vapid Vamos Custom** | vamoswb | Vapid | [5MODS Link](https://www.gta5-mods.com/vehicles/vamos-custom-add-on-fivem) | ✔️ | |
| **Vapid Sandstorm D350** | NSANDSTORM | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-sandstorm-d205-add-on-tuning-liveries-lods) | ✔️ | |
| **Sandstorm D350** | nsandstorm | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-sandstorm-d205-add-on-tuning-liveries-lods) | ✔️ | |
| **Sandstorm D350 XL** | nsandstorm2 | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-sandstorm-d205-add-on-tuning-liveries-lods) | ✔️ | |
| **Sandstorm D350 Hellenbach** | hellenstorm | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-sandstorm-d205-add-on-tuning-liveries-lods) | ✔️ | |
| **Vapid executioner** | executioner | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-executioner-add-on) | ✔️ | |
| **Vapid Dominator 450ci** | dominatorgtc | VAPID | [5MODS Link](https://www.gta5-mods.com/paintjobs/vapid-dominator-gtt-450-livery-pack-replace) | ✔️ | |
| **Vapid Clique v2** | clique2 | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-clique-deluxe-add-on-tuning-liveries-lods) | ✔️ | |
| **Vapid Contender Custom** | CONTENDERC | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-contender-custom-add-on) | ✔️ | |
| **Vapid Nightmare GT** | domgt | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-nightmare-gt-d31592f4-5be5-42dd-8ac6-dd44755db7a8) | ✔️ | |
| **Vapid Bobcat CTX (Bagcat)** | bcatctx | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-bobcat-ctx-bagcat-add-on-tuning-fivem) | ✔️ | |
| **Vapid Riata CTX** | gstriata1 | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-riata-tx-s-add-on-tuning-liveries-lods) | ✔️ | |
| **Vapid Riata Outlaw** | RIATAO | VAPID | [5MODS Link](https://www.gta5-mods.com/vehicles/vapid-riata-tx-s-add-on-tuning-liveries-lods) | ✔️ | |
| **Vulcar Hachura R Custom** | HACHURAC | VULCAR | [5MODS Link](https://www.gta5-mods.com/vehicles/vulcar-hachura-custom-add-on-tuning) | ✔️ | |
| **Vulcar Nebula Wagon** | NEBULAW | VULCAR | [5MODS Link](https://www.gta5-mods.com/vehicles/vulcar-nebula-wagon-add-on-liveries) | ✔️ | |
| **Vigero ZX WideBody** | vigerozxwbc | Vigero | [5MODS Link](https://www.gta5-mods.com/vehicles/vigero-zx-widebody-add-on-fivem) | ✔️ | |
| **VigeroZX WideBody Convertible** | vigerozxwb | Vigero | [5MODS Link](https://www.gta5-mods.com/vehicles/vigero-zx-widebody-convertible-add-on-fivem) | ✔️ | |
| **Willard Elegant** | elegant | Willard | [5MODS Link](https://www.gta5-mods.com/vehicles/willard-elegant-addon) | ✔️ | |
| **Willard Paradox** | paradox | Willard | [5MODS Link](https://www.gta5-mods.com/vehicles/willard-paradox-add-on-tuning-lods-shards) | ✔️ | |
| **Warrener HKR WideBody** | warrener3 | Warrener | [5MODS Link](https://www.gta5-mods.com/vehicles/warrener-hkr-widebody-add-on-fivem) | ✔️ | |

## 🗺️ Map Credits

| Map Name | Map location | Authors Download Link<sub> >> [5MODS](https://gta5-mods.com/) >> [5M Forums](https://forum.cfx.re/)<sub> | Status | Extra Notes |
| :-: | :-: | :-: | :-: | :-: |
| **Kush Park Drift Island** | vector4(2097.614, -2907.6, 134.1969, 261.5315) | [5M Forums Link](https://forum.cfx.re/t/release-map-free-kush-park-drift-island/4910369) | ✔️ | |

## 📜️ Script Credits

| Resource Name | Use in DrftV | Authors Download Link<sub> >> [GITHUB](https://github.com/)<sub> | Status | Extra Notes |
| :-: | :-: | :-: | :-: | :-: |
| **KBlips** | Mission on blip Display| [Github Link](https://github.com/gtasnail/kBlipInfo) | ✔️ | |
| **yorick-antilag** | Vehicle Anti-lag System| [Github Link](https://github.com/Yorick20022/yorick-antilag) | ✔️ | |
