# Pasticceria

Per installare l'applicazione pasticceria:

-Scaricare l'intero progetto zip e salvarlo nella directory server relativa

-Creare il DB di base importando il File: torte.sql

-Modificare i seguenti due file nel modo appropriato :

 -../Pasticceria/application/config/config.php (Modifica Del path relativo) 
 $config['base_url'] = 'http://www.serdf3r.com/Pasticceria/';//<--- Modifica
 
 -../Pasticceria/application/config/database.php(Modifica dei dati per la connessione al DB)
    'hostname' => '...',//<--- Modifica
    'username' => '...',//<--- Modifica
    'password' => '...',//<--- Modifica
    'database' => '...',//<--- Modifica
