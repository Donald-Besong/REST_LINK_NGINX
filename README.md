# REST_LINK_NGINX
<div id="top"></div>
<!--
*** Thanks for checking out my project
*** Dr Donald O. Besong
-->


<!-- PROJECT LOGO -->
<br />
<div align="center">
<a href="http://github.com/Donald-Besong/Donald_Rest_API">
<img src="flask_folder/myproject/images/logo.png" alt="Logo" width="80" height="80">
</a>

<h3 align="center">Donald's rest API</h3>
<p align="center">
project_description
<br />
<a href="http://github.com/Donald-Besong/Donald_Rest_API"><strong>Explore the docs »</strong></a>
</p>
</div>

<!-- GETTING STARTED -->
## Getting Started

<h1>Instructions</h1>
<h3>Method 1: Without Nginx</h3>

<ol>
<li> Clone the repository </li>
<li> Make sure you are in the root directory, that contains docker-compose.yml </li>
<li> Build image: <i>docker-compose build </i></li>
<li> run the image as a container <i>docker run  --name my_flask_container --rm -h 0.0.0.0 -p 5002:5001 flask_image </i> </li>
<li> On your browser load <i>http://localhost:5002/items</i> </li>

</ol>

<h3>Method 2: With Nginx</h3>

<ol>
<li> Clone the repository </li>
<li> Make sure you are in the root directory, that contains docker-compose.yml </li>
<li> Build image: <i>docker-compose build </i></li>
<li> Run the the flask image as a daemon container <i>docker run  -d -P --name flaskapp --rm flask_image </i> </li>
<li> Run the the nginx image and link with the above container <i>docker run --name nginx_flask_container --link flaskapp:flaskapp -v -d -p  8080:80 nginx_image </i> </li>
<li> On your browser load <i>http://localhost:8080</i> </li>
<li> Please note that we have not yet configured nginx to render the resources </li>
</ol>
