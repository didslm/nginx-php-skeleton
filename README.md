# nginx-php-skeleton
Ky eshte nje skeleton qe mundesh me e perdor per nje projekt te ri qe e fillon.

### Hapat per ta pergaditur kete skeleton per projektin tuaj.
1. Nje fajll ne direktoriumin `./nginx` i emeruar `default.conf` ku mund ta ndryshoni rreshtin 
```
  root /var/www/html/public; # Ky direktorium ndryshon ne baze se ku gjendet `index.php` fajlli ne projektin tuaj.
```
2. Duhet te krijoni nje direktorium se ku do ta fusni projektin tuaj. p.sh ./app, pastaj struktura do te duket si ne vijim.
```
| nginx
| -  default.conf
|
| app
| -  index.php <--- fajlli juaj i projektit
|
| Dockerfile
| docker-compose.yaml
```
3. Duhet ta beni run komanden `docker-compose build && docker-compose up`.
4. Mund ti qaseni projektit tuaj ne `http://localhost`
