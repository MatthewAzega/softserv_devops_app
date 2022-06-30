curl wttr.in/Wroclaw.png --output /var/www/html/Wroclaw.png
echo "<img src="Wroclaw.png" alt="Wroclaw">" > /var/www/html/index.html
curl wttr.in/Berlin.png --output /var/www/html/Berlin.png
echo "<img src="Berlin.png" alt="Berlin">" >> /var/www/html/index.html
