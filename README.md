
# <h2 align="center">BTH-Assignment-Build-Something-Paul-Kakarantzas</h2>

<p align="center">
<img src="img/SWADiagram_Finished.png" align="center" alt="BTH-Assignment" height="370">
</p>
<br>

 <h2 align="center">Instructions</h2>
 

    This project's requirements as it is are:
    - Windows 10 or later
    - Docker Desktop with Kubernetes module installed
    - Postman or any Bash terminal to run the Curls
    
    You will need to run ./deployment.sh to deploy the services
    and then you will be able to use the services locally in ports: 9001, 9002
    and 5432.
    
    Then, using Postman or the curls directly to bash we are able to register a new
    user to firebase and then fetch a token from Firebase with these credentials
    or use directly the body attached with the email: professor@bth.se | abcdef.
    Using this token we will be able to authorize usage for /storeAdmin/create
    and insert a user into the Postgres database.

 <br>
 <br>
 
 <h3 align="center">Software General Concept </h3> 

The software I have implemented is a dynamic and innovative platform, currently in its initial stages of development, which draws inspiration from successful online food delivery services.
It serves as a location-based 'marketplace' for health and wellness services, including hair salons, massage centers, and pet grooming stores. Users can effortlessly book appointments through
their smartphones, select their preferred service providers, and provide valuable feedback through reviews. On the other side, business owners can seamlessly manage their appointments, whether
they are manually booked or through our platform, and gain valuable insights through analytical tools. The software architecture comprises two microservices and a PostgreSQL database deployed
in Kubernetes. The first microservice named FirebaseAuthMS, focuses on secure authentication using Google's Firebase, offering user registration, token generation, and token refreshing. 
The second microservice named OneBEServiceMS, facilitates the creation of store administrators within the database and retrieves a comprehensive list of them. To ensure data persistence, 
the PostgreSQL database is deployed in Kubernetes with a persistent volume, safeguarding data integrity even after the system restarts.