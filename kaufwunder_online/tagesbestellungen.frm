TYPE=VIEW
query=select `kaufwunder_online`.`kunde`.`Straße` AS `Straße`,`kaufwunder_online`.`kunde`.`Hausnummer` AS `Hausnummer`,`kaufwunder_online`.`kunde`.`PLZ` AS `PLZ`,`kaufwunder_online`.`kunde`.`Stadt` AS `Stadt`,`kaufwunder_online`.`bestellung`.`Artikelnummer` AS `Artikelnummer`,`kaufwunder_online`.`bestellung`.`Bestellnummer` AS `Bestellnummer` from (`kaufwunder_online`.`kunde` join `kaufwunder_online`.`bestellung` on((`kaufwunder_online`.`kunde`.`Kundennummer` = `kaufwunder_online`.`bestellung`.`Kundennummer`))) where (`kaufwunder_online`.`bestellung`.`Bestelldatum` = curdate())
md5=99afb0bf4226a5b35644c73d949722fd
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2021-06-08 15:37:27
create-version=2
source=SELECT Straße, Hausnummer, PLZ, Stadt, Artikelnummer, Bestellnummer\nFROM kunde join bestellung\non kunde.Kundennummer = bestellung.Kundennummer\nWHERE Bestelldatum = CURDATE()
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `kaufwunder_online`.`kunde`.`Straße` AS `Straße`,`kaufwunder_online`.`kunde`.`Hausnummer` AS `Hausnummer`,`kaufwunder_online`.`kunde`.`PLZ` AS `PLZ`,`kaufwunder_online`.`kunde`.`Stadt` AS `Stadt`,`kaufwunder_online`.`bestellung`.`Artikelnummer` AS `Artikelnummer`,`kaufwunder_online`.`bestellung`.`Bestellnummer` AS `Bestellnummer` from (`kaufwunder_online`.`kunde` join `kaufwunder_online`.`bestellung` on((`kaufwunder_online`.`kunde`.`Kundennummer` = `kaufwunder_online`.`bestellung`.`Kundennummer`))) where (`kaufwunder_online`.`bestellung`.`Bestelldatum` = curdate())
mariadb-version=100128
