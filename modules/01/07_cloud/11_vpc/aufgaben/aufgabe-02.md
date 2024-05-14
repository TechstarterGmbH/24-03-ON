# Aufgabe 2: VPC Praxis

1. Zerstöre das VPC, und alle zugehörigen Ressourcen, die du in der Praxisaufgabe erstellt hast.
2. Erstelle das VPC und alle zugehörigen Ressourcen erneut, ohne die Anleitung zu verwenden. (Nutze die Anleitung nur, wenn du nicht weiterkommst.)
3. Erstelle eine EC2-Instanz in einem der erstellten privaten Subnetze und eine im öffentlichen Subnetz.
4. Verbinde dich mit der EC2-Instanz im öffentlichen Subnetz.
5. Nutze die EC2-Instanz im öffentlichen Subnetz als Bastion Host, um dich mit der EC2-Instanz im privaten Subnetz zu verbinden.
6. Teste, ob die EC2-Instanz im privaten Subnetz auf das Internet zugreifen kann.

## Freiwillige Aufgaben

- Füge eine Network ACL Regel in dem privaten Subnetz, in dem die EC2-Instanz liegt.
- Setze eine `DENY`-Regel für den eingehenden Verkehr von allem Traffic
- Teste, ob die EC2-Instanz im öffentlichen Subnetz noch auf die EC2-Instanz im privaten Subnetz zugreifen kann.
