curl wttr.in/Wroclaw.png?mM --output /var/www/html/Wroclaw.png
echo "<img src="Wroclaw.png" alt="Wroclaw">" > /var/www/html/index.html
curl wttr.in/Kiev.png?mM --output /var/www/html/Kiev.png
echo "<img src="Kiev.png" alt="Kiev">" >> /var/www/html/index.html

