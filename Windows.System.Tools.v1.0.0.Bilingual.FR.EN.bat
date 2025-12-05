@echo off
title System Tools Menu
mode con:cols=100 lines=40
color 0F
setlocal enabledelayedexpansion

:: --- Variables de langue ---
:: Définition des textes en Français
set "lang_fr_title=MENU D'OUTILS SYSTEME WINDOWS"
set "lang_fr_welcome=Bienvenue ! Choisissez une categorie pour acceder aux commandes."
set "lang_fr_main_1=Diagnostic et reparation du systeme"
set "lang_fr_main_2=Demarrage et restauration"
set "lang_fr_main_3=Gestion des utilisateurs et securite"
set "lang_fr_main_4=Configuration et administration"
set "lang_fr_main_5=Surveillance et performance"
set "lang_fr_main_6=Nettoyage et reseau"
set "lang_fr_main_quit=Quitter"
set "lang_fr_prompt=Votre choix : "
set "lang_fr_invalid_choice=Choix invalide."
set "lang_fr_back_main=Retour au menu principal"
set "lang_fr_exit=Quitter"
set "lang_fr_goodbye=Merci d'avoir utilise le menu d'outils systeme. Au revoir !"
set "lang_fr_username_prompt=Nom d'utilisateur a modifier : "
set "lang_fr_process_name_prompt=Nom du processus a tuer (ex: chrome.exe) : "
set "lang_fr_cleanmgr_info=Lancement de cleanmgr /sageset:1 puis cleanmgr /sagerun:1..."
set "lang_fr_cleanmgr_pause=Configuration enregistree. Appuyez sur Entree pour lancer le nettoyage... "
set "lang_fr_confirm_action=Etes-vous sur ? Cette action ne peut pas etre annulee. (O/N) : "
set "lang_fr_confirm_warning=[AVERTISSEMENT] Operation destructrice !"
set "lang_fr_operation_cancelled=Operation annulee."
set "lang_fr_operation_executed=Operation executee avec succes."

set "lang_fr_diagnostic_title=DIAGNOSTIC ET REPARATION DU SYSTEME"
set "lang_fr_diag_1_desc=Repare les fichiers systeme"
set "lang_fr_diag_2_desc=Verif rapide"
set "lang_fr_diag_3_desc=Analyse profonde"
set "lang_fr_diag_4_desc=Repare via Windows Update"
set "lang_fr_diag_5_desc=Verifie et repare le disque C:"

set "lang_fr_boot_restore_title=DEMARRAGE ET RESTAURATION"
set "lang_fr_boot_1_desc=Restauration du systeme"
set "lang_fr_boot_2_desc=Reinitialise Windows 10/11"
set "lang_fr_boot_3_desc=Repare le MBR"
set "lang_fr_boot_4_desc=Repare le secteur de demarrage"
set "lang_fr_boot_5_desc=Scanne les installations Windows"
set "lang_fr_boot_6_desc=Reconstruit le BCD"

set "lang_fr_user_security_title=GESTION DES UTILISATEURS ET SECURITE"
set "lang_fr_user_1_desc=Liste les utilisateurs"
set "lang_fr_user_2_desc=Change le mot de passe"
set "lang_fr_user_3_desc=Parametres avances utilisateurs"
set "lang_fr_user_4_desc=Strategie de securite locale"
set "lang_fr_user_5_desc=Strategie de groupe locale"
set "lang_fr_user_6_desc=Gestion de l'ordinateur"

set "lang_fr_config_admin_title=CONFIGURATION ET ADMINISTRATION"
set "lang_fr_conf_1_desc=Services et demarrage"
set "lang_fr_conf_2_desc=Gestion des services"
set "lang_fr_conf_3_desc=Editeur de registre"
set "lang_fr_conf_4_desc=Planificateur de taches"
set "lang_fr_conf_5_desc=Panneau de configuration"
set "lang_fr_conf_6_desc=Dossier demarrage auto"
set "lang_fr_conf_7_desc=Nom d'utilisateur"
set "lang_fr_conf_8_desc=Version de Windows"
set "lang_fr_conf_9_desc=Interface ligne de commande"

set "lang_fr_monitoring_performance_title=SURVEILLANCE ET PERFORMANCE"
set "lang_fr_monit_1_desc=Rapport diagnostic systeme"
set "lang_fr_monit_2_desc=Infos systeme detaillees"
set "lang_fr_monit_3_desc=Liste des processus"
set "lang_fr_monit_4_desc=Tuer un processus"
set "lang_fr_monit_5_desc=Moniteur de ressources"
set "lang_fr_monit_6_desc=Journal des evenements"
set "lang_fr_monit_7_desc=Diagnostic DirectX"

set "lang_fr_cleanup_network_title=NETTOYAGE ET RESEAU"
set "lang_fr_clean_1_desc=Nettoyage de disque"
set "lang_fr_clean_2_desc=Nettoyage avance"
set "lang_fr_clean_3_desc=Supprime les fichiers temporaires"
set "lang_fr_clean_4_desc=Vide toutes les corbeilles"
set "lang_fr_clean_5_desc=Vide le cache DNS"
set "lang_fr_clean_6_desc=Reinitialise le reseau"
set "lang_fr_clean_7_desc=Reinitialise la config IP"
set "lang_fr_clean_8_desc=Desactive l'hibernation"
set "lang_fr_clean_9_desc=Rapport gestion energie"
set "lang_fr_clean_10_desc=Etat batterie"
set "lang_fr_clean_11_desc=Redemarre et options avancees"

:: Définition des textes en Anglais
set "lang_en_title=WINDOWS SYSTEM TOOLS MENU"
set "lang_en_welcome=Welcome! Choose a category to access commands."
set "lang_en_main_1=System Diagnostic and Repair"
set "lang_en_main_2=Startup and Recovery"
set "lang_en_main_3=User and Security Management"
set "lang_en_main_4=Configuration and Administration"
set "lang_en_main_5=Monitoring and Performance"
set "lang_en_main_6=Cleanup and Network"
set "lang_en_main_quit=Exit"
set "lang_en_prompt=Your choice: "
set "lang_en_invalid_choice=Invalid choice."
set "lang_en_back_main=Back to main menu"
set "lang_en_exit=Exit"
set "lang_en_goodbye=Thank you for using the system tools menu. Goodbye!"
set "lang_en_username_prompt=Username to modify: "
set "lang_en_process_name_prompt=Process name to kill (e.g.: chrome.exe): "
set "lang_en_cleanmgr_info=Launching cleanmgr /sageset:1 then cleanmgr /sagerun:1..."
set "lang_en_cleanmgr_pause=Configuration saved. Press Enter to start cleanup... "
set "lang_en_confirm_action=Are you sure? This action cannot be undone. (Y/N): "
set "lang_en_confirm_warning=[WARNING] Destructive operation!"
set "lang_en_operation_cancelled=Operation cancelled."
set "lang_en_operation_executed=Operation executed successfully."

set "lang_en_diagnostic_title=SYSTEM DIAGNOSTIC AND REPAIR"
set "lang_en_diag_1_desc=Repairs system files"
set "lang_en_diag_2_desc=Quick check"
set "lang_en_diag_3_desc=Deep scan"
set "lang_en_diag_4_desc=Repair via Windows Update"
set "lang_en_diag_5_desc=Check and repair disk C:"

set "lang_en_boot_restore_title=STARTUP AND RECOVERY"
set "lang_en_boot_1_desc=System Restore"
set "lang_en_boot_2_desc=Reset Windows 10/11"
set "lang_en_boot_3_desc=Repair MBR"
set "lang_en_boot_4_desc=Repair boot sector"
set "lang_en_boot_5_desc=Scan Windows installations"
set "lang_en_boot_6_desc=Rebuild BCD"

set "lang_en_user_security_title=USER AND SECURITY MANAGEMENT"
set "lang_en_user_1_desc=List users"
set "lang_en_user_2_desc=Change user password"
set "lang_en_user_3_desc=Advanced user settings"
set "lang_en_user_4_desc=Local security policy"
set "lang_en_user_5_desc=Local Group Policy"
set "lang_en_user_6_desc=Computer Management"

set "lang_en_config_admin_title=CONFIGURATION AND ADMINISTRATION"
set "lang_en_conf_1_desc=Services and startup"
set "lang_en_conf_2_desc=Manage services"
set "lang_en_conf_3_desc=Registry Editor"
set "lang_en_conf_4_desc=Task Scheduler"
set "lang_en_conf_5_desc=Control Panel"
set "lang_en_conf_6_desc=Startup folder"
set "lang_en_conf_7_desc=Username"
set "lang_en_conf_8_desc=Windows version"
set "lang_en_conf_9_desc=Command line interface"

set "lang_en_monitoring_performance_title=MONITORING AND PERFORMANCE"
set "lang_en_monit_1_desc=System diagnostic report"
set "lang_en_monit_2_desc=Detailed system info"
set "lang_en_monit_3_desc=List processes"
set "lang_en_monit_4_desc=Kill a process"
set "lang_en_monit_5_desc=Resource Monitor"
set "lang_en_monit_6_desc=Event Viewer"
set "lang_en_monit_7_desc=DirectX Diagnostic"

set "lang_en_cleanup_network_title=CLEANUP AND NETWORK"
set "lang_en_clean_1_desc=Disk Cleanup"
set "lang_en_clean_2_desc=Advanced cleanup"
set "lang_en_clean_3_desc=Delete temporary files"
set "lang_en_clean_4_desc=Empty all Recycle Bins"
set "lang_en_clean_5_desc=Flush DNS cache"
set "lang_en_clean_6_desc=Reset network"
set "lang_en_clean_7_desc=Reset IP config"
set "lang_en_clean_8_desc=Disable hibernation"
set "lang_en_clean_9_desc=Power usage report"
set "lang_en_clean_10_desc=Battery status"
set "lang_en_clean_11_desc=Restart and advanced options"

:: --- Sélection de la langue ---
:language_selection
cls
echo.
echo ============================================================
echo   === Choose your language / Choisissez votre langue ===
echo ============================================================
echo.
echo   1. English
echo   2. Francais
echo.
echo ============================================================
set /p lang_choice="Enter your choice / Entrez votre choix : "

if "%lang_choice%"=="1" (
    set "current_lang=en"
    goto main_menu
)
if "%lang_choice%"=="2" (
    set "current_lang=fr"
    goto main_menu
)
echo Invalid choice. Please try again.
timeout /t 2 >nul
goto language_selection

:: --- Fonctions d'affichage bilingues ---
:: Chaque "fonction" prend en charge la définition des variables d'affichage spécifiques à son menu

:display_main_menu_text
cls
echo ============================================================
echo           [ %lang_title% ]
echo ============================================================
echo.
echo %lang_welcome%
echo ---
echo    1. %lang_main_1%
echo    2. %lang_main_2%
echo    3. %lang_main_3%
echo    4. %lang_main_4%
echo    5. %lang_main_5%
echo    6. %lang_main_6%
echo ------------------------------------------------------------
echo    0. %lang_main_quit%
echo ============================================================
set /p main_choice="%lang_prompt%"
goto :eof

:display_diagnostic_menu_text
cls
echo ============================================================
echo           [ %lang_diagnostic_title% ]
echo ============================================================
echo    1. sfc /scannow (%lang_diag_1_desc%)
echo    2. DISM /Online /Cleanup-Image /CheckHealth (%lang_diag_2_desc%)
echo    3. DISM /Online /Cleanup-Image /ScanHealth (%lang_diag_3_desc%)
echo    4. DISM /Online /Cleanup-Image /RestoreHealth (%lang_diag_4_desc%)
echo    5. chkdsk C: /f /r (%lang_diag_5_desc%)
echo ------------------------------------------------------------
echo    9. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:display_boot_restore_menu_text
cls
echo ============================================================
echo             [ %lang_boot_restore_title% ]
echo ============================================================
echo    1. rstrui (%lang_boot_1_desc%)
echo    2. systemreset (%lang_boot_2_desc%)
echo    3. bootrec /fixmbr (%lang_boot_3_desc%)
echo    4. bootrec /fixboot (%lang_boot_4_desc%)
echo    5. bootrec /scanos (%lang_boot_5_desc%)
echo    6. bootrec /rebuildbcd (%lang_boot_6_desc%)
echo ------------------------------------------------------------
echo    9. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:display_user_security_menu_text
cls
echo ============================================================
echo           [ %lang_user_security_title% ]
echo ============================================================
echo    1. net user (%lang_user_1_desc%)
echo    2. net user nom_utilisateur * (%lang_user_2_desc%)
echo    3. control userpasswords2 (%lang_user_3_desc%)
echo    4. secpol.msc (%lang_user_4_desc%)
echo    5. gpedit.msc (%lang_user_5_desc%)
echo    6. compmgmt.msc (%lang_user_6_desc%)
echo ------------------------------------------------------------
echo    9. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:display_config_admin_menu_text
cls
echo ============================================================
echo           [ %lang_config_admin_title% ]
echo ============================================================
echo    1. msconfig (%lang_conf_1_desc%)
echo    2. services.msc (%lang_conf_2_desc%)
echo    3. regedit (%lang_conf_3_desc%)
echo    4. taskschd.msc (%lang_conf_4_desc%)
echo    5. control (%lang_conf_5_desc%)
echo    6. explorer shell:startup (%lang_conf_6_desc%)
echo    7. whoami (%lang_conf_7_desc%)
echo    8. ver (%lang_conf_8_desc%)
echo    9. wmic (%lang_conf_9_desc%)
echo ------------------------------------------------------------
echo    99. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:display_monitoring_performance_menu_text
cls
echo ============================================================
echo           [ %lang_monitoring_performance_title% ]
echo ============================================================
echo    1. perfmon /report (%lang_monit_1_desc%)
echo    2. msinfo32 (%lang_monit_2_desc%)
echo    3. tasklist (%lang_monit_3_desc%)
echo    4. taskkill /f /im nomduprocessus.exe (%lang_monit_4_desc%)
echo    5. resmon (%lang_monit_5_desc%)
echo    6. eventvwr (%lang_monit_6_desc%)
echo    7. dxdiag (%lang_monit_7_desc%)
echo ------------------------------------------------------------
echo    9. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:display_cleanup_network_menu_text
cls
echo ============================================================
echo             [ %lang_cleanup_network_title% ]
echo ============================================================
echo    1. cleanmgr (%lang_clean_1_desc%)
echo    2. cleanmgr /sageset:1 puis /sagerun:1 (%lang_clean_2_desc%)
echo    3. del /q/f/s %%TEMP%%\* (%lang_clean_3_desc%)
echo    4. rd /s /q C:\$Recycle.Bin (%lang_clean_4_desc%)
echo    5. ipconfig /flushdns (%lang_clean_5_desc%)
echo    6. netsh winsock reset (%lang_clean_6_desc%)
echo    7. netsh int ip reset (%lang_clean_7_desc%)
echo    8. powercfg /hibernate off (%lang_clean_8_desc%)
echo    9. powercfg /energy (%lang_clean_9_desc%)
echo    10. powercfg /batteryreport (%lang_clean_10_desc%)
echo    11. shutdown /r /o (%lang_clean_11_desc%)
echo ------------------------------------------------------------
echo    99. %lang_back_main%
echo    0. %lang_exit%
echo ============================================================
set /p sub_choice="%lang_prompt%"
goto :eof

:: --- Fonction de confirmation pour actions destructrices ---
:confirm_action
setlocal enabledelayedexpansion
echo.
echo ============================================================
echo %lang_confirm_warning%
echo ============================================================
set /p confirm_response="%lang_confirm_action%"
if /i "%confirm_response%"=="o" (
    if /i "%current_lang%"=="fr" (
        endlocal
        exit /b 1
    )
)
if /i "%confirm_response%"=="y" (
    if /i "%current_lang%"=="en" (
        endlocal
        exit /b 1
    )
)
echo %lang_operation_cancelled%
timeout /t 2 >nul
endlocal
exit /b 0

:: --- Boucle du menu principal ---
:main_menu
:: Définition dynamique des variables d'affichage pour le menu principal
if "%current_lang%"=="fr" (
    set "lang_title=%lang_fr_title%"
    set "lang_welcome=%lang_fr_welcome%"
    set "lang_main_1=%lang_fr_main_1%"
    set "lang_main_2=%lang_fr_main_2%"
    set "lang_main_3=%lang_fr_main_3%"
    set "lang_main_4=%lang_fr_main_4%"
    set "lang_main_5=%lang_fr_main_5%"
    set "lang_main_6=%lang_fr_main_6%"
    set "lang_main_quit=%lang_fr_main_quit%"
    set "lang_prompt=%lang_fr_prompt%"
    set "lang_invalid_choice=%lang_fr_invalid_choice%"
    set "lang_back_main=%lang_fr_back_main%"
    set "lang_exit=%lang_fr_exit%"
    set "lang_goodbye=%lang_fr_goodbye%"
) else (
    set "lang_title=%lang_en_title%"
    set "lang_welcome=%lang_en_welcome%"
    set "lang_main_1=%lang_en_main_1%"
    set "lang_main_2=%lang_en_main_2%"
    set "lang_main_3=%lang_en_main_3%"
    set "lang_main_4=%lang_en_main_4%"
    set "lang_main_5=%lang_en_main_5%"
    set "lang_main_6=%lang_en_main_6%"
    set "lang_main_quit=%lang_en_main_quit%"
    set "lang_prompt=%lang_en_prompt%"
    set "lang_invalid_choice=%lang_en_invalid_choice%"
    set "lang_back_main=%lang_en_back_main%"
    set "lang_exit=%lang_en_exit%"
    set "lang_goodbye=%lang_en_goodbye%"
)

call :display_main_menu_text

if "%main_choice%"=="1" goto diagnostic_menu
if "%main_choice%"=="2" goto boot_restore_menu
if "%main_choice%"=="3" goto user_security_menu
if "%main_choice%"=="4" goto config_admin_menu
if "%main_choice%"=="5" goto monitoring_performance_menu
if "%main_choice%"=="6" goto cleanup_network_menu
if "%main_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto main_menu

:: --- DIAGNOSTIC ET REPARATION ---
:diagnostic_menu
:: Définition dynamique des variables d'affichage pour le sous-menu
if "%current_lang%"=="fr" (
    set "lang_diagnostic_title=%lang_fr_diagnostic_title%"
    set "lang_diag_1_desc=%lang_fr_diag_1_desc%"
    set "lang_diag_2_desc=%lang_fr_diag_2_desc%"
    set "lang_diag_3_desc=%lang_fr_diag_3_desc%"
    set "lang_diag_4_desc=%lang_fr_diag_4_desc%"
    set "lang_diag_5_desc=%lang_fr_diag_5_desc%"
) else (
    set "lang_diagnostic_title=%lang_en_diagnostic_title%"
    set "lang_diag_1_desc=%lang_en_diag_1_desc%"
    set "lang_diag_2_desc=%lang_en_diag_2_desc%"
    set "lang_diag_3_desc=%lang_en_diag_3_desc%"
    set "lang_diag_4_desc=%lang_en_diag_4_desc%"
    set "lang_diag_5_desc=%lang_en_diag_5_desc%"
)
call :display_diagnostic_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "sfc /scannow && pause"
if "%sub_choice%"=="2" start cmd.exe /k "DISM /Online /Cleanup-Image /CheckHealth && pause"
if "%sub_choice%"=="3" start cmd.exe /k "DISM /Online /Cleanup-Image /ScanHealth && pause"
if "%sub_choice%"=="4" start cmd.exe /k "DISM /Online /Cleanup-Image /RestoreHealth && pause"
if "%sub_choice%"=="5" start cmd.exe /k "chkdsk C: /f /r && pause"
if "%sub_choice%"=="9" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto diagnostic_menu


:: --- DEMARRAGE ET RESTAURATION ---
:boot_restore_menu
if "%current_lang%"=="fr" (
    set "lang_boot_restore_title=%lang_fr_boot_restore_title%"
    set "lang_boot_1_desc=%lang_fr_boot_1_desc%"
    set "lang_boot_2_desc=%lang_fr_boot_2_desc%"
    set "lang_boot_3_desc=%lang_fr_boot_3_desc%"
    set "lang_boot_4_desc=%lang_fr_boot_4_desc%"
    set "lang_boot_5_desc=%lang_fr_boot_5_desc%"
    set "lang_boot_6_desc=%lang_fr_boot_6_desc%"
) else (
    set "lang_boot_restore_title=%lang_en_boot_restore_title%"
    set "lang_boot_1_desc=%lang_en_boot_1_desc%"
    set "lang_boot_2_desc=%lang_en_boot_2_desc%"
    set "lang_boot_3_desc=%lang_en_boot_3_desc%"
    set "lang_boot_4_desc=%lang_en_boot_4_desc%"
    set "lang_boot_5_desc=%lang_en_boot_5_desc%"
    set "lang_boot_6_desc=%lang_en_boot_6_desc%"
)
call :display_boot_restore_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "rstrui && pause"
if "%sub_choice%"=="2" start cmd.exe /k "systemreset && pause"
if "%sub_choice%"=="3" start cmd.exe /k "bootrec /fixmbr && pause"
if "%sub_choice%"=="4" start cmd.exe /k "bootrec /fixboot && pause"
if "%sub_choice%"=="5" start cmd.exe /k "bootrec /scanos && pause"
if "%sub_choice%"=="6" start cmd.exe /k "bootrec /rebuildbcd && pause"
if "%sub_choice%"=="9" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto boot_restore_menu

:: --- GESTION DES UTILISATEURS ET SECURITE ---
:user_security_menu
if "%current_lang%"=="fr" (
    set "lang_user_security_title=%lang_fr_user_security_title%"
    set "lang_user_1_desc=%lang_fr_user_1_desc%"
    set "lang_user_2_desc=%lang_fr_user_2_desc%"
    set "lang_user_3_desc=%lang_fr_user_3_desc%"
    set "lang_user_4_desc=%lang_fr_user_4_desc%"
    set "lang_user_5_desc=%lang_fr_user_5_desc%"
    set "lang_user_6_desc=%lang_fr_user_6_desc%"
    set "lang_username_prompt=%lang_fr_username_prompt%"
) else (
    set "lang_user_security_title=%lang_en_user_security_title%"
    set "lang_user_1_desc=%lang_en_user_1_desc%"
    set "lang_user_2_desc=%lang_en_user_2_desc%"
    set "lang_user_3_desc=%lang_en_user_3_desc%"
    set "lang_user_4_desc=%lang_en_user_4_desc%"
    set "lang_user_5_desc=%lang_en_user_5_desc%"
    set "lang_user_6_desc=%lang_en_user_6_desc%"
    set "lang_username_prompt=%lang_en_username_prompt%"
)
call :display_user_security_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "net user && pause"
if "%sub_choice%"=="2" (
    set /p username="%lang_username_prompt%"
    start cmd.exe /k "net user %username% * && pause"
)
if "%sub_choice%"=="3" start cmd.exe /k "control userpasswords2 && pause"
if "%sub_choice%"=="4" start cmd.exe /k "secpol.msc && pause"
if "%sub_choice%"=="5" start cmd.exe /k "gpedit.msc && pause"
if "%sub_choice%"=="6" start cmd.exe /k "compmgmt.msc && pause"
if "%sub_choice%"=="9" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto user_security_menu

:: --- CONFIGURATION ET ADMINISTRATION ---
:config_admin_menu
if "%current_lang%"=="fr" (
    set "lang_config_admin_title=%lang_fr_config_admin_title%"
    set "lang_conf_1_desc=%lang_fr_conf_1_desc%"
    set "lang_conf_2_desc=%lang_fr_conf_2_desc%"
    set "lang_conf_3_desc=%lang_fr_conf_3_desc%"
    set "lang_conf_4_desc=%lang_fr_conf_4_desc%"
    set "lang_conf_5_desc=%lang_fr_conf_5_desc%"
    set "lang_conf_6_desc=%lang_fr_conf_6_desc%"
    set "lang_conf_7_desc=%lang_fr_conf_7_desc%"
    set "lang_conf_8_desc=%lang_fr_conf_8_desc%"
    set "lang_conf_9_desc=%lang_fr_conf_9_desc%"
) else (
    set "lang_config_admin_title=%lang_en_config_admin_title%"
    set "lang_conf_1_desc=%lang_en_conf_1_desc%"
    set "lang_conf_2_desc=%lang_en_conf_2_desc%"
    set "lang_conf_3_desc=%lang_en_conf_3_desc%"
    set "lang_conf_4_desc=%lang_en_conf_4_desc%"
    set "lang_conf_5_desc=%lang_en_conf_5_desc%"
    set "lang_conf_6_desc=%lang_en_conf_6_desc%"
    set "lang_conf_7_desc=%lang_en_conf_7_desc%"
    set "lang_conf_8_desc=%lang_en_conf_8_desc%"
    set "lang_conf_9_desc=%lang_en_conf_9_desc%"
)
call :display_config_admin_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "msconfig && pause"
if "%sub_choice%"=="2" start cmd.exe /k "services.msc && pause"
if "%sub_choice%"=="3" start cmd.exe /k "regedit && pause"
if "%sub_choice%"=="4" start cmd.exe /k "taskschd.msc && pause"
if "%sub_choice%"=="5" start cmd.exe /k "control && pause"
if "%sub_choice%"=="6" start cmd.exe /k "explorer shell:startup && pause"
if "%sub_choice%"=="7" start cmd.exe /k "whoami && pause"
if "%sub_choice%"=="8" start cmd.exe /k "ver && pause"
if "%sub_choice%"=="9" start cmd.exe /k "wmic && pause"
if "%sub_choice%"=="99" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto config_admin_menu

:: --- SURVEILLANCE ET PERFORMANCE ---
:monitoring_performance_menu
if "%current_lang%"=="fr" (
    set "lang_monitoring_performance_title=%lang_fr_monitoring_performance_title%"
    set "lang_monit_1_desc=%lang_fr_monit_1_desc%"
    set "lang_monit_2_desc=%lang_fr_monit_2_desc%"
    set "lang_monit_3_desc=%lang_fr_monit_3_desc%"
    set "lang_monit_4_desc=%lang_fr_monit_4_desc%"
    set "lang_monit_5_desc=%lang_fr_monit_5_desc%"
    set "lang_monit_6_desc=%lang_fr_monit_6_desc%"
    set "lang_monit_7_desc=%lang_fr_monit_7_desc%"
    set "lang_process_name_prompt=%lang_fr_process_name_prompt%"
) else (
    set "lang_monitoring_performance_title=%lang_en_monitoring_performance_title%"
    set "lang_monit_1_desc=%lang_en_monit_1_desc%"
    set "lang_monit_2_desc=%lang_en_monit_2_desc%"
    set "lang_monit_3_desc=%lang_en_monit_3_desc%"
    set "lang_monit_4_desc=%lang_en_monit_4_desc%"
    set "lang_monit_5_desc=%lang_en_monit_5_desc%"
    set "lang_monit_6_desc=%lang_en_monit_6_desc%"
    set "lang_monit_7_desc=%lang_en_monit_7_desc%"
    set "lang_process_name_prompt=%lang_en_process_name_prompt%"
)
call :display_monitoring_performance_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "perfmon /report && pause"
if "%sub_choice%"=="2" start cmd.exe /k "msinfo32 && pause"
if "%sub_choice%"=="3" start cmd.exe /k "tasklist && pause"
if "%sub_choice%"=="4" (
    set /p process_name="%lang_process_name_prompt%"
    start cmd.exe /k "taskkill /f /im %process_name% && pause"
)
if "%sub_choice%"=="5" start cmd.exe /k "resmon && pause"
if "%sub_choice%"=="6" start cmd.exe /k "eventvwr && pause"
if "%sub_choice%"=="7" start cmd.exe /k "dxdiag && pause"
if "%sub_choice%"=="9" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto monitoring_performance_menu

:: --- NETTOYAGE ET RESEAU ---
:cleanup_network_menu
if "%current_lang%"=="fr" (
    set "lang_cleanup_network_title=%lang_fr_cleanup_network_title%"
    set "lang_clean_1_desc=%lang_fr_clean_1_desc%"
    set "lang_clean_2_desc=%lang_fr_clean_2_desc%"
    set "lang_clean_3_desc=%lang_fr_clean_3_desc%"
    set "lang_clean_4_desc=%lang_fr_clean_4_desc%"
    set "lang_clean_5_desc=%lang_fr_clean_5_desc%"
    set "lang_clean_6_desc=%lang_fr_clean_6_desc%"
    set "lang_clean_7_desc=%lang_fr_clean_7_desc%"
    set "lang_clean_8_desc=%lang_fr_clean_8_desc%"
    set "lang_clean_9_desc=%lang_fr_clean_9_desc%"
    set "lang_clean_10_desc=%lang_fr_clean_10_desc%"
    set "lang_clean_11_desc=%lang_fr_clean_11_desc%"
    set "lang_cleanmgr_info=%lang_fr_cleanmgr_info%"
    set "lang_cleanmgr_pause=%lang_fr_cleanmgr_pause%"
) else (
    set "lang_cleanup_network_title=%lang_en_cleanup_network_title%"
    set "lang_clean_1_desc=%lang_en_clean_1_desc%"
    set "lang_clean_2_desc=%lang_en_clean_2_desc%"
    set "lang_clean_3_desc=%lang_en_clean_3_desc%"
    set "lang_clean_4_desc=%lang_en_clean_4_desc%"
    set "lang_clean_5_desc=%lang_en_clean_5_desc%"
    set "lang_clean_6_desc=%lang_en_clean_6_desc%"
    set "lang_clean_7_desc=%lang_en_clean_7_desc%"
    set "lang_clean_8_desc=%lang_en_clean_8_desc%"
    set "lang_clean_9_desc=%lang_en_clean_9_desc%"
    set "lang_clean_10_desc=%lang_en_clean_10_desc%"
    set "lang_clean_11_desc=%lang_en_clean_11_desc%"
    set "lang_cleanmgr_info=%lang_en_cleanmgr_info%"
    set "lang_cleanmgr_pause=%lang_en_cleanmgr_pause%"
)
call :display_cleanup_network_menu_text

if "%sub_choice%"=="1" start cmd.exe /k "cleanmgr && pause"
if "%sub_choice%"=="2" (
    echo %lang_cleanmgr_info%
    start cmd.exe /k "cleanmgr /sageset:1 && echo %lang_cleanmgr_pause% && pause && cleanmgr /sagerun:1 && pause"
)
if "%sub_choice%"=="3" (
    call :confirm_action
    if !errorlevel! equ 1 start cmd.exe /k "del /q/f/s %TEMP%\* && pause"
)
if "%sub_choice%"=="4" (
    call :confirm_action
    if !errorlevel! equ 1 start cmd.exe /k "rd /s /q C:\$Recycle.Bin && pause"
)
if "%sub_choice%"=="5" start cmd.exe /k "ipconfig /flushdns && pause"
if "%sub_choice%"=="6" (
    call :confirm_action
    if !errorlevel! equ 1 start cmd.exe /k "netsh winsock reset && pause"
)
if "%sub_choice%"=="7" (
    call :confirm_action
    if !errorlevel! equ 1 start cmd.exe /k "netsh int ip reset && pause"
)
if "%sub_choice%"=="8" start cmd.exe /k "powercfg /hibernate off && pause"
if "%sub_choice%"=="9" start cmd.exe /k "powercfg /energy && pause"
if "%sub_choice%"=="10" start cmd.exe /k "powercfg /batteryreport && pause"
if "%sub_choice%"=="11" (
    call :confirm_action
    if !errorlevel! equ 1 start cmd.exe /k "shutdown /r /o && pause"
)
if "%sub_choice%"=="99" goto main_menu
if "%sub_choice%"=="0" goto bye
call :error "%lang_invalid_choice%"
goto cleanup_network_menu

:: --- Fin du script ---
:bye
cls
echo.
echo ============================================================
echo %lang_goodbye%
echo ============================================================
echo.
timeout /t 2 >nul
exit

:: --- Fonction d'erreur ---
:error
echo.
echo ============================================================
echo [!] %~1
echo ============================================================
timeout /t 2 >nul
exit /b