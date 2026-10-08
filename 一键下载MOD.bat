@echo off
setlocal enabledelayedexpansion
chcp 437 >nul
title Modpack mod downloader - Minecraft 1.21.1 / NeoForge 21.1.256

rem  ASCII-only by convention: cmd mis-parses LF-only and non-ASCII batch files.
rem  Downloads every mod into .\mods and verifies its sha1.

where curl >nul 2>&1
if errorlevel 1 (
    echo [ERROR] curl.exe not found. Windows 10 1803 or newer is required.
    pause
    exit /b 1
)

set "ROOT=%~dp0"
set "MODS=%ROOT%mods"
if not exist "%MODS%" mkdir "%MODS%"
set "UA=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36"
set /a N_OK=0
set /a N_SKIP=0
set /a N_FAIL=0

echo.
echo Target : %MODS%
echo Mods   : 84
echo.
call :Get "actuallyadditions-1.3.26+mc1.21.1.jar" "https://cdn.modrinth.com/data/4K7Q3nqd/versions/iNeJmgFj/actuallyadditions-1.3.26%2Bmc1.21.1.jar" "bd1826f117065dc3d73f0a7197091a4c37829a06"
call :Get "AI-Improvements-1.21-0.5.3.jar" "https://cdn.modrinth.com/data/DSVgwcji/versions/dGNP90t0/AI-Improvements-1.21-0.5.3.jar" "b4a8e11384454bcc341043b251db7fb5afdfdf45"
call :Get "almostunified-neoforge-1.21.1-1.4.2.jar" "https://cdn.modrinth.com/data/sdaSaQEz/versions/e8iYxxI3/almostunified-neoforge-1.21.1-1.4.2.jar" "f9a58fa95780f4b045d30559c1fdaedaa7f0fba3"
call :Get "appleskin-neoforge-mc1.21-3.0.9.jar" "https://cdn.modrinth.com/data/EsAfCjCV/versions/uAKA6Laj/appleskin-neoforge-mc1.21-3.0.9.jar" "81cf0e668f991f83ac8820c386fbd6c9c3602246"
call :Get "appliedenergistics2-19.2.18.jar" "https://cdn.modrinth.com/data/XxWD5pD3/versions/KDnFUmMm/appliedenergistics2-19.2.18.jar" "bcd04bc7f181b2ffa314625f284c8eca6fee7fe4"
call :Get "ae2wtlib-19.5.1.jar" "https://cdn.modrinth.com/data/pNabrMMw/versions/CxSEpEnO/ae2wtlib-19.5.1.jar" "b1bee01393b15f1eb0f46d58862ef99234e1d337"
call :Get "Applied-Mekanistics-1.6.3.jar" "https://cdn.modrinth.com/data/IiATswDj/versions/TpUCzFaW/Applied-Mekanistics-1.6.3.jar" "bec4a47269ec23bca2329742e13409bfde69c5c3"
call :Get "architectury-13.0.11-neoforge.jar" "https://cdn.modrinth.com/data/lhGA9TYQ/versions/1IiqEQGl/architectury-13.0.11-neoforge.jar" "008656a0702801174b8ec245ed7aad1921d6e9f1"
call :Get "athena-neoforge-1.21.1-4.0.6.jar" "https://cdn.modrinth.com/data/b1ZV3DIJ/versions/dJgL278E/athena-neoforge-1.21.1-4.0.6.jar" "4bcbdf388bd5e387beca7c627224aac33584b55b"
call :Get "balm-neoforge-1.21.1-21.0.66.jar" "https://cdn.modrinth.com/data/MBAkmtvl/versions/CquiaiDj/balm-neoforge-1.21.1-21.0.66.jar" "dd3606a349f4a3c8fb5bd0ab22905675c02b0d74"
call :Get "BetterF3-11.0.3-NeoForge-1.21.1.jar" "https://cdn.modrinth.com/data/8shC1gFX/versions/maXNB1dn/BetterF3-11.0.3-NeoForge-1.21.1.jar" "8fa17df26d3650416bc124be7a264bc1566a3b26"
call :Get "carryon-neoforge-1.21.1-2.2.6.13.jar" "https://cdn.modrinth.com/data/joEfVgkn/versions/PV8oLZ1q/carryon-neoforge-1.21.1-2.2.6.13.jar" "2ceb0d9284525b6cb2a214c88cf6511cab91f601"
call :Get "cc-tweaked-1.21.1-forge-1.120.2.jar" "https://cdn.modrinth.com/data/gu7yAYhd/versions/1ewzHZYg/cc-tweaked-1.21.1-forge-1.120.2.jar" "f35d4f636c2eb1b30c5d3f5c08e110c6acb8e02f"
call :Get "Chunky-NeoForge-1.4.23.jar" "https://cdn.modrinth.com/data/fALzjamp/versions/LuFhm4eU/Chunky-NeoForge-1.4.23.jar" "ab0c74743a653020fe2dfc4986b43e893947f3e9"
call :Get "cloth-config-15.0.140-neoforge.jar" "https://cdn.modrinth.com/data/9s6osm5g/versions/izKINKFg/cloth-config-15.0.140-neoforge.jar" "c3e5733ba4503b102589a026000fd5ce0212f6f2"
call :Get "Clumps-neoforge-1.21.1-19.0.0.1.jar" "https://cdn.modrinth.com/data/Wnxd13zP/versions/jo7lDoK4/Clumps-neoforge-1.21.1-19.0.0.1.jar" "fa2576297c7bd12b28aa7070e8141792bd66da4c"
call :Get "ConstructionWandsRevived-1.21.1-4.2.2-NeoForge.jar" "https://cdn.modrinth.com/data/u2NJ7rzu/versions/wYnj2tM3/ConstructionWandsRevived-1.21.1-4.2.2-NeoForge.jar" "e6312dfecfa7caa9f81cdbdcfdf3b38851615c7b"
call :Get "Controlling-neoforge-1.21.1-19.0.5.jar" "https://cdn.modrinth.com/data/xv94TkTM/versions/FaNppCJJ/Controlling-neoforge-1.21.1-19.0.5.jar" "8a34424fc1428778be2fdbfa4da67b21b70bcbfe"
call :Get "corpse-neoforge-1.21.1-1.1.13.jar" "https://cdn.modrinth.com/data/WrpuIfhw/versions/Zwf8nv8y/corpse-neoforge-1.21.1-1.1.13.jar" "a735362c4e5ef705956f1fcbac01fb9f1aae5b8e"
call :Get "craftingtweaks-neoforge-1.21.1-21.1.11.jar" "https://cdn.modrinth.com/data/DMu0oBKf/versions/IhkQpEve/craftingtweaks-neoforge-1.21.1-21.1.11.jar" "b6252039445978a742f439fc398f2a198b86bd4e"
call :Get "curios-neoforge-9.5.1+1.21.1.jar" "https://cdn.modrinth.com/data/vvuO3ImH/versions/yohfFbgD/curios-neoforge-9.5.1%2B1.21.1.jar" "418fcd42e3a7844c9bdc71c9b6401fdb3894e0c4"
call :Get "DefaultWorldType-1.21-5.0.4.jar" "https://cdn.modrinth.com/data/kZvO1mDq/versions/CCrwlupr/DefaultWorldType-1.21-5.0.4.jar" "ee1a6664e67858b64f1e95ebbfcd6fa1e3111069"
call :Get "dynamic-fps-3.11.4+minecraft-1.21.0-neoforge.jar" "https://cdn.modrinth.com/data/LQ3K71Q1/versions/T238FZpQ/dynamic-fps-3.11.4%2Bminecraft-1.21.0-neoforge.jar" "35b17e95b2b65930116ccc83e0cc358ac1bfcf9e"
call :Get "enderio-8.2.12-beta.jar" "https://cdn.modrinth.com/data/49ZofO4f/versions/2bHl1dCW/enderio-8.2.12-beta.jar" "4e1d16a227eb36a6ac16d9f615765480027b8e82"
call :Get "energizedpower-3.0.1+1.21.1-neoforge.jar" "https://cdn.modrinth.com/data/6pku8gW1/versions/gGPYiXzr/energizedpower-3.0.1%2B1.21.1-neoforge.jar" "4ccecba73e437bdadea3fdde1780c8f4d52fc948"
call :Get "entityculling-neoforge-1.11.3-mc1.21.1.jar" "https://cdn.modrinth.com/data/NNAgCjsB/versions/eieYbWYb/entityculling-neoforge-1.11.3-mc1.21.1.jar" "f122f84f329793675b2625d51b77f990d7de3579"
call :Get "ExtremeReactors2-1.21.1-2.4.9.jar" "https://cdn.modrinth.com/data/idkvShUy/versions/wABJBBTd/ExtremeReactors2-1.21.1-2.4.9.jar" "9a079dfcbb4fa350dfbe76b2674d20f1028cad62"
call :Get "fast-ip-ping-v1.0.12-mc1.21.1-neoforge.jar" "https://cdn.modrinth.com/data/9mtu0sUO/versions/SNWnJAqf/fast-ip-ping-v1.0.12-mc1.21.1-neoforge.jar" "4dc232213f88173d360d892faae11a8d6dcda10d"
call :Get "ferritecore-7.0.3-neoforge.jar" "https://cdn.modrinth.com/data/uXXizFIs/versions/x7kQWVju/ferritecore-7.0.3-neoforge.jar" "9563692efb708b6b568df27a01ec52f6311928ef"
call :Get "FlightRings-neoforge-2.0.0.jar" "https://cdn.modrinth.com/data/GpHA2rbH/versions/KZtVgcSu/FlightRings-neoforge-2.0.0.jar" "79d7ab716293e61ff0456974bd944916fd7c6b62"
call :Get "ftb-chunks-neoforge-2101.1.22.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-chunks-neoforge/2101.1.22/ftb-chunks-neoforge-2101.1.22.jar" "a53f1bb7965c6954a348d4f321f03d3971ad503f"
call :Get "ftb-essentials-neoforge-2101.1.10.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-essentials-neoforge/2101.1.10/ftb-essentials-neoforge-2101.1.10.jar" "fa7b3d1b06c0285dcbe8e53a27d44cd7f8d15726"
call :Get "ftb-library-neoforge-2101.1.37.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-library-neoforge/2101.1.37/ftb-library-neoforge-2101.1.37.jar" "b6e503587afcd678ec257e4abdc6362ff18c2fef"
call :Get "ftb-quests-neoforge-2101.1.36.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-quests-neoforge/2101.1.36/ftb-quests-neoforge-2101.1.36.jar" "b2ede29b98a3022c22065fbe9b1761e385a28683"
call :Get "ftb-teams-neoforge-2101.1.11.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-teams-neoforge/2101.1.11/ftb-teams-neoforge-2101.1.11.jar" "62b65f752d0326edd13244e58d5f2aec035da4e9"
call :Get "ftb-ultimine-neoforge-2101.1.15.jar" "https://maven.ftb.dev/releases/dev/ftb/mods/ftb-ultimine-neoforge/2101.1.15/ftb-ultimine-neoforge-2101.1.15.jar" "c96a7cc0b52bf919660ea61c1536cebd9d5773b3"
call :Get "functionalstorage-1.21.1-1.5.7.jar" "https://cdn.modrinth.com/data/cO40ZIg3/versions/FWnouoF2/functionalstorage-1.21.1-1.5.7.jar" "19ed7ed8edfddf26c5fc29fe66084b2c3b313981"
call :Get "fzzy_config-0.7.7+1.21+neoforge.jar" "https://cdn.modrinth.com/data/hYykXjDp/versions/uG7oHgw6/fzzy_config-0.7.7%2B1.21%2Bneoforge.jar" "518eadc53c065a74a49207769209c116e77d1849"
call :Get "geckolib-neoforge-1.21.1-4.9.3.jar" "https://cdn.modrinth.com/data/8BmcQJ2H/versions/Grwn5rUB/geckolib-neoforge-1.21.1-4.9.3.jar" "5cfe835472a5c5457ae9ac192d9d7b317454d5ac"
call :Get "guideme-21.1.19.jar" "https://cdn.modrinth.com/data/Ck4E7v7R/versions/hFpGwC6q/guideme-21.1.19.jar" "e85cd4c266f974dd360c46e8dad7ecf4c7ee96c6"
call :Get "I18nAutoUpdateMod-1.1.0-all.jar" "https://cdn.modrinth.com/data/mEn7eS3l/versions/gRRRsJMs/I18nAutoUpdateMod-1.1.0-all.jar" "c8f47b792723f571f15d41b6771b30d193f5e5fc"
call :Get "IMBlocker-5.6.2.1-neoforge+1.20.6-1.21.8.jar" "https://cdn.modrinth.com/data/WMDesFsZ/versions/BKOiydts/IMBlocker-5.6.2.1-neoforge%2B1.20.6-1.21.8.jar" "259f0c47808ae0d9476733e9f51e8dcf12210e72"
call :Get "ImmediatelyFast-NeoForge-1.6.14+1.21.1.jar" "https://cdn.modrinth.com/data/5ZwdcRci/versions/OUpXxw4n/ImmediatelyFast-NeoForge-1.6.14%2B1.21.1.jar" "fee59af2f39c66d09c4c09f441c799e76af70f97"
call :Get "ImmersiveEngineering-1.21.1-12.4.2-194.jar" "https://cdn.modrinth.com/data/tIm2nV03/versions/uNRARSH2/ImmersiveEngineering-1.21.1-12.4.2-194.jar" "a4e90c2df8009040f6d022433c5d76635944dd59"
call :Get "industrialforegoing-1.21-3.6.27.jar" "https://cdn.modrinth.com/data/lWxpUd04/versions/erRsRPki/industrialforegoing-1.21-3.6.27.jar" "88ff21e4fa6e5c4cfb7cd5626cbcfdf424e704b5"
call :Get "InventoryProfilesNext-neoforge-1.21.1-2.2.5.jar" "https://cdn.modrinth.com/data/O7RBXm3n/versions/vjuNnHLv/InventoryProfilesNext-neoforge-1.21.1-2.2.5.jar" "b09d7c0820c233ea34af54d0a3ab7ed510b32dcc"
call :Get "iris-neoforge-1.8.12+mc1.21.1.jar" "https://cdn.modrinth.com/data/YL57xq9U/versions/t3ruzodq/iris-neoforge-1.8.12%2Bmc1.21.1.jar" "a3e6355915c7d3b2bc392724795113e51d289378"
call :Get "Jade-1.21.1-NeoForge-15.10.6.jar" "https://cdn.modrinth.com/data/nvQzSEkH/versions/eYz2YBGT/Jade-1.21.1-NeoForge-15.10.6.jar" "88ee316e68900080b017f60c12162e2731924cf8"
call :Get "jei-1.21.1-neoforge-19.51.0.418.jar" "https://cdn.modrinth.com/data/u6dRKJwZ/versions/ufHUqt9b/jei-1.21.1-neoforge-19.51.0.418.jar" "d19552586f686eae4ef5e7199f31604d1d3cfca7"
call :Get "JustEnoughMekanismMultiblocks-1.21.1-7.21.jar" "https://cdn.modrinth.com/data/kRaE85yQ/versions/4OlLf9A1/JustEnoughMekanismMultiblocks-1.21.1-7.21.jar" "9e10e0368b7808a82c624c3f11b23669de675d21"
call :Get "jecharacters-1.21.1-neoforge-4.5.29.jar" "https://cdn.modrinth.com/data/I7k4B65h/versions/XPKoy65e/jecharacters-1.21.1-neoforge-4.5.29.jar" "2325c72eadfb19c9feb3901435ca5a9cebc7a46c"
call :Get "kotlinforforge-5.12.0-all.jar" "https://cdn.modrinth.com/data/ordsPcFz/versions/uhJhCT7X/kotlinforforge-5.12.0-all.jar" "d10d062caf1aad9aec82d7852f2fee1781735c1f"
call :Get "libIPN-neoforge-1.21.1-6.6.3.jar" "https://cdn.modrinth.com/data/onSQdWhM/versions/BGe4KMlE/libIPN-neoforge-1.21.1-6.6.3.jar" "baab9e8cae3d2b77b5e172b5694e465ee9f30d4a"
call :Get "LibX-1.21.1-6.0.9.jar" "https://cdn.modrinth.com/data/qEH6GYul/versions/CLe8cTHs/LibX-1.21.1-6.0.9.jar" "06a144a41aa7affca17f30a28c0e9effdddc3f4e"
call :Get "mcjtylib-1.21-9.0.21.jar" "https://cdn.modrinth.com/data/1Zu0uTEE/versions/9B2CiAN5/mcjtylib-1.21-9.0.21.jar" "ae0cadbb2c3f4fabc955e627f8bbefa281aa5d3f"
call :Get "Mekanism-1.21.1-10.7.19.85.jar" "https://cdn.modrinth.com/data/Ce6I4WUE/versions/5KzzycBT/Mekanism-1.21.1-10.7.19.85.jar" "b78945c40cfe7640408f3fd1e44da385a8c8b805"
call :Get "MekanismAdditions-1.21.1-10.7.19.85.jar" "https://cdn.modrinth.com/data/a6F3uASn/versions/6mkdykZa/MekanismAdditions-1.21.1-10.7.19.85.jar" "0934a9f9961a9a1a47ff344762f8eeb0c149d80d"
call :Get "MekanismGenerators-1.21.1-10.7.19.85.jar" "https://cdn.modrinth.com/data/OFVYKsAk/versions/a6gl7srE/MekanismGenerators-1.21.1-10.7.19.85.jar" "44c4d8006597580ff7e4101b5a22f7b426cdcaf6"
call :Get "mekanism_lasers-1.1.10.3-c.jar" "https://cdn.modrinth.com/data/hvFdcxrV/versions/oCD9S63b/mekanism_lasers-1.1.10.3-c.jar" "bef83dbd088a8ef96f18a94166880c0f93c6a4db"
call :Get "MekanismTools-1.21.1-10.7.19.85.jar" "https://cdn.modrinth.com/data/tqQpq1lt/versions/v5zlSE9s/MekanismTools-1.21.1-10.7.19.85.jar" "4433b3eec0a5a0bf415d873e710a1cecea5850bc"
call :Get "modernfix-neoforge-5.27.26+mc1.21.1.jar" "https://cdn.modrinth.com/data/nmDcB62a/versions/7Jy58lnT/modernfix-neoforge-5.27.26%2Bmc1.21.1.jar" "69d468b70e53f6a014c778a81116a41a38fbab33"
call :Get "MouseTweaks-neoforge-mc1.21-2.26.1.jar" "https://cdn.modrinth.com/data/aC3cM3Vq/versions/9I21YYxf/MouseTweaks-neoforge-mc1.21-2.26.1.jar" "6dae57f4f50f7808d2ed9a18f6cd1c0d4640c6bc"
call :Get "noisium-neoforge-2.3.0+mc1.21-1.21.1.jar" "https://cdn.modrinth.com/data/KuNKN7d2/versions/nJBE6tif/noisium-neoforge-2.3.0%2Bmc1.21-1.21.1.jar" "1bea6b61378ba80f038256c4345d9ff3b67928c4"
call :Get "oritech-neoforge-1.21.1-1.2.13.jar" "https://cdn.modrinth.com/data/4sYI62kA/versions/BR0KKypH/oritech-neoforge-1.21.1-1.2.13.jar" "12515c78b29976bd25077deb7427852f63879ddc"
call :Get "particle_core-0.3.3+1.21+neoforge.jar" "https://cdn.modrinth.com/data/RSeLon5O/versions/2QF4NhZD/particle_core-0.3.3%2B1.21%2Bneoforge.jar" "f859d68818e522fb00056d3ed1603ca4300eb681"
call :Get "Patchouli-1.21.1-93-NEOFORGE.jar" "https://cdn.modrinth.com/data/nU0bVIaL/versions/BIogJv2D/Patchouli-1.21.1-93-NEOFORGE.jar" "5413bb9b8fc35ebe46b06b48bf9afafbd8471140"
call :Get "pipez-neoforge-1.21.1-1.2.31.jar" "https://cdn.modrinth.com/data/iRmWy6ga/versions/BPGKb8pi/pipez-neoforge-1.21.1-1.2.31.jar" "a5671f7e8d38dfc092ace4091250e8f9e1245e1e"
call :Get "Placebo-1.21.1-9.9.3.jar" "https://cdn.modrinth.com/data/tCkE8p2N/versions/h326cnw1/Placebo-1.21.1-9.9.3.jar" "37b1cf95c23a72caafc5d5c9671bbf1fa62bee14"
call :Get "Powah-6.2.10.jar" "https://cdn.modrinth.com/data/KZO4S4DO/versions/1prWLuga/Powah-6.2.10.jar" "f134ab3e0ace3793abf93129e318eb817898a4e1"
call :Get "rftoolsbase-1.21-6.0.11.jar" "https://cdn.modrinth.com/data/hIO8IsD8/versions/f8Tk2cfj/rftoolsbase-1.21-6.0.11.jar" "9614bdc12d6c633801b254a983d30dd4cbeb5aee"
call :Get "Searchables-neoforge-1.21.1-1.0.2.jar" "https://cdn.modrinth.com/data/fuuu3xnx/versions/iEE85X0w/Searchables-neoforge-1.21.1-1.0.2.jar" "5b8a0b43a474c066371b2e16f9bfb88622552a74"
call :Get "SkyblockBuilder-21.1.31.jar" "https://cdn.modrinth.com/data/por2AZc5/versions/rjVhHP6u/SkyblockBuilder-21.1.31.jar" "c13df34bb22a9862b82644ae85a84dc1b5d19cdb"
call :Get "sodium-neoforge-0.6.13+mc1.21.1.jar" "https://cdn.modrinth.com/data/AANobbMI/versions/Pb3OXVqC/sodium-neoforge-0.6.13%2Bmc1.21.1.jar" "38af70fa4dc4b2aaac636e92fdba3bedd5a025e1"
call :Get "sophisticatedbackpacks-1.21.1-3.26.9.2195.jar" "https://cdn.modrinth.com/data/TyCTlI4b/versions/1pYxRkKq/sophisticatedbackpacks-1.21.1-3.26.9.2195.jar" "b2b301daf9f29a8adc0bd16d4c8a5ef4c46061cd"
call :Get "sophisticatedcore-1.21.1-1.5.7.2381.jar" "https://cdn.modrinth.com/data/nmoqTijg/versions/p09oohxN/sophisticatedcore-1.21.1-1.5.7.2381.jar" "4d204eed0783cbca6c196fdc83f79079715cb125"
call :Get "sophisticatedstorage-1.21.1-1.6.2.2159.jar" "https://cdn.modrinth.com/data/hMlaZH8f/versions/f7c8aEld/sophisticatedstorage-1.21.1-1.6.2.2159.jar" "cc0af3093031cb91c16c01341b1d2f5cd73d5d58"
call :Get "spark-1.10.124-neoforge.jar" "https://cdn.modrinth.com/data/l6YH9Als/versions/v5qtqRQi/spark-1.10.124-neoforge.jar" "9430cc2ab64ff89d698be593769fb9f9ee4efae6"
call :Get "squatgrow-neoforge-21.1.4+mc1.21.1.jar" "https://cdn.modrinth.com/data/b5JMdB5V/versions/NZp6wTbs/squatgrow-neoforge-21.1.4%2Bmc1.21.1.jar" "a1ff3e1383186b83609ab03e66ff8fc935cf2562"
call :Get "StorageDrawers-neoforge-1.21.1-13.11.4.jar" "https://cdn.modrinth.com/data/guitPqEi/versions/px0CCB06/StorageDrawers-neoforge-1.21.1-13.11.4.jar" "b8e11e3d1fd63fd1a0d9277ec3f966c7e5cff385"
call :Get "titanium-1.21-4.0.50.jar" "https://cdn.modrinth.com/data/1Ro7m06l/versions/zCzYA9mW/titanium-1.21-4.0.50.jar" "c57a545f81104c5ee87bf1e0af55a6e87598573b"
call :Get "ToastControl-1.21.1-9.0.1.jar" "https://cdn.modrinth.com/data/CnOG2wlS/versions/jXHDAUrd/ToastControl-1.21.1-9.0.1.jar" "47f9b3eb9e499996c77a7567c85e6bb9d3d51be8"
call :Get "waystones-neoforge-1.21.1-21.1.46.jar" "https://cdn.modrinth.com/data/LOpKHB2A/versions/6Z6MQ6os/waystones-neoforge-1.21.1-21.1.46.jar" "75718161662d9ec957ba22e10e497788ec1687ba"
call :Get "xnet-1.21-7.0.7.jar" "https://cdn.modrinth.com/data/iu1jkWqa/versions/lvCo0M5N/xnet-1.21-7.0.7.jar" "3ee807801ee484ee06d53d0bdb9ed85a6f10abf5"
call :Get "ZeroCore2-1.21.1-2.4.9.jar" "https://cdn.modrinth.com/data/rHpb85Mf/versions/6AlNHOWo/ZeroCore2-1.21.1-2.4.9.jar" "c7e7f135039df964a704245d05ca41ff2df2f496"

echo.
echo ============================================================
echo  downloaded=%N_OK%  skipped=%N_SKIP%  failed=%N_FAIL%
echo ============================================================
if %N_FAIL% gtr 0 echo Some files failed. Just run this script again to retry.
if %N_FAIL% equ 0 echo All mods are in place. Copy the "mods" folder into your instance.
echo.
pause
exit /b 0

:Get
set "F=%MODS%\%~1"
if exist "%F%" (
    call :Sha1 "%F%"
    if /i "!ACTUAL!"=="%~3" (
        set /a N_SKIP+=1
        echo [skip] %~1
        goto :eof
    )
)
echo [ get] %~1
curl --http1.1 -L --retry 3 --retry-delay 2 --connect-timeout 20 -A "%UA%" -s -S -o "%F%.part" "%~2"
if not exist "%F%.part" (
    set /a N_FAIL+=1
    echo [fail] %~1  download error
    goto :eof
)
move /y "%F%.part" "%F%" >nul
call :Sha1 "%F%"
if /i not "!ACTUAL!"=="%~3" (
    set /a N_FAIL+=1
    echo [fail] %~1  sha1 mismatch, file removed
    del "%F%" >nul 2>&1
    goto :eof
)
set /a N_OK+=1
echo [ ok ] %~1
goto :eof

:Sha1
rem  %1 = file. Result is returned in ACTUAL (lowercase, spaces stripped).
set "ACTUAL="
for /f "skip=1 delims=" %%A in ('certutil -hashfile "%~1" SHA1 2^>nul') do if not defined ACTUAL set "ACTUAL=%%A"
set "ACTUAL=%ACTUAL: =%"
exit /b 0
