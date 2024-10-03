<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curiosità sui Motori</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #e0f7fa, #80deea);
            position: relative;
        }

        header {
            background: url('https://example.com/immagine-motori.jpg') no-repeat center center/cover;
            color: #fff;
            padding: 50px 0;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        main {
            padding: 20px;
        }

        .search-bar {
            margin: 20px auto;
            max-width: 500px;
            display: flex;
            justify-content: center;
        }

        .car-details {
            display: none;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            margin-top: 20px;
        }

        footer {
            background-color: #00796b;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            position: relative;
            margin-top: 20px;
        }

        #contatti {
            background-color: #004d40;
            color: white;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .favorite {
            cursor: pointer;
            color: gray;
            font-size: 24px;
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .favorite.selected {
            color: gold;
        }

        /* Modulo di contatto */
        .contact-form {
            max-width: 600px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        .contact-form input,
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #00796b;
            border-radius: 5px;
        }

        .contact-form button {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #005b4f;
        }

        .card {
            width: 100%; /* Imposta la larghezza della card */
            margin: 10px; /* Margine per lo spazio tra le card */
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
    <header>
        <h1>Curiosità sui Motori</h1>
        <nav>
            <ul>
                <li><a href="#contatti">Contatti</a></li>
            </ul>
        </nav>
    </header>

    <main>
       <!-- Barra di ricerca -->
<div class="search-bar">
    <input type="text" id="searchInput" placeholder="Cerca una macchina..." oninput="filterCars()">
</div>

        <div class="container text-center">
           
            <div class="row align-items-start" id="carContainer">
                <!-- Peugeot E-3008 e E-5008 -->
                <div class="col-md-4 car" data-name="Peugeot">
                    <div class="card">
                        <a href="peugeot.html">
                            <img src="https://cdn.motori.it/TqEmIr-CI_r4-TL3H3vC5FdxSG4=/450x300/smart/https://www.motori.it/wp-content/uploads/2024/09/peugeot-e-5008.jpg"
                                class="card-img-top" alt="Peugeot E-5008">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Peugeot E-3008 e E-5008</h5>
                            <p class="card-text">Le nuove varianti elettriche con 700 km di autonomia.</p>
                        </div>
                    </div>
                    <div class="car-details" id="peugeotDetails">
                        <h5>Dettagli Peugeot E-3008 e E-5008</h5>
                        <p>Queste vetture elettriche offrono un'autonomia di 700 km, tecnologia avanzata e comfort eccezionale per un viaggio senza pensieri.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('peugeotDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Toyota Supra -->
                <div class="col-md-4 car" data-name="Toyota">
                    <div class="card">
                        <a href="toyota.html">
                            <img src="https://cdn.motori.it/KmMExKKHJpA6EQLTJVs84Np5tbg=/450x300/smart/https://www.motori.it/wp-content/uploads/2024/09/toyota-supra-1.jpg"
                                class="card-img-top" alt="Toyota Supra">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Toyota Supra</h5>
                            <p class="card-text">Il ritorno del V8 per competere con Ford Mustang e Chevrolet Camaro.</p>
                        </div>
                    </div>
                    <div class="car-details" id="supraDetails">
                        <h5>Dettagli Toyota Supra</h5>
                        <p>La nuova Toyota Supra combina potenza e design, con un motore V8 che offre prestazioni incredibili per ogni appassionato di auto.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('supraDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Alfa Romeo 4C -->
                <div class="col-md-4 car" data-name="Alfa Romeo">
                    <div class="card">
                        <a href="alafaromeo4c.html">
                            <img src="https://images.ctfassets.net/uaddx06iwzdz/4hwzfZynjcEhmXyHpUEAK6/2d37ffcf3ec9bed05dec1fdc35b14fcd/alfa-romeo-4c-front.jpg"
                                class="card-img-top" alt="Alfa Romeo 4C">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Alfa Romeo 4C</h5>
                            <p class="card-text">Una sportiva compatta con un design accattivante e un motore potente.</p>
                        </div>
                    </div>
                    <div class="car-details" id="alfaRomeoDetails">
                        <h5>Dettagli Alfa Romeo 4C</h5>
                        <p>Con il suo telaio in fibra di carbonio, l'Alfa Romeo 4C offre prestazioni straordinarie e un'esperienza di guida unica.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('alfaRomeoDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Caterham Seven -->
                <div class="col-md-4 car" data-name="Caterham">
                    <div class="card">
                        <a href="caterham.html">
                            <img src="https://media.gqitalia.it/photos/64b71bc058456626df746edb/16:9/w_1280,c_limit/pexels-photo-2409671.jpg"
                                class="card-img-top" alt="Caterham Seven">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Caterham Seven</h5>
                            <p class="card-text">Un'auto leggera e sportiva per veri appassionati di driving.</p>
                        </div>
                    </div>
                    <div class="car-details" id="caterhamDetails">
                        <h5>Dettagli Caterham Seven</h5>
                        <p>La Caterham Seven è l'auto perfetta per gli amanti del brivido, con un design minimalista e una potenza sorprendente.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('caterhamDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Tesla Model S -->
                <div class="col-md-4 car" data-name="Tesla">
                    <div class="card">
                        <a href="tesla.html">
                            <img src="https://media.gqitalia.it/photos/61d846b9e6f38a90a1f09a08/16:9/w_1280,c_limit/tesla.jpg"
                                class="card-img-top" alt="Tesla Model S">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Tesla Model S</h5>
                            <p class="card-text">L'auto elettrica che sta cambiando il mondo.</p>
                        </div>
                    </div>
                    <div class="car-details" id="teslaDetails">
                        <h5>Dettagli Tesla Model S</h5>
                        <p>La Tesla Model S è nota per le sue straordinarie prestazioni e per la sua autonomia superiore a 600 km, rendendola una delle migliori auto elettriche sul mercato.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('teslaDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Ferrari 488 GTB -->
                <div class="col-md-4 car" data-name="Ferrari">
                    <div class="card">
                        <a href="ferrari.html">
                            <img src="https://media.gqitalia.it/photos/610ff7b1e43046d0660c1123/16:9/w_1280,c_limit/ferrari.jpg"
                                class="card-img-top" alt="Ferrari 488 GTB">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Ferrari 488 GTB</h5>
                            <p class="card-text">Una supercar con prestazioni straordinarie e un design iconico.</p>
                        </div>
                    </div>
                    <div class="car-details" id="ferrariDetails">
                        <h5>Dettagli Ferrari 488 GTB</h5>
                        <p>La Ferrari 488 GTB offre un motore V8 con oltre 600 cavalli, accelerazione incredibile e una tecnologia all'avanguardia per un'esperienza di guida senza pari.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('ferrariDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Ford Mustang -->
                <div class="col-md-4 car" data-name="Ford">
                    <div class="card">
                        <a href="ford.html">
                            <img src="https://media.gqitalia.it/photos/6284070d94c44efae3bc7a86/16:9/w_1280,c_limit/ford-mustang.jpg"
                                class="card-img-top" alt="Ford Mustang">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Ford Mustang</h5>
                            <p class="card-text">La muscle car americana per eccellenza.</p>
                        </div>
                    </div>
                    <div class="car-details" id="fordDetails">
                        <h5>Dettagli Ford Mustang</h5>
                        <p>Icona delle auto sportive americane, la Ford Mustang combina potenza, stile e un'eredità senza tempo.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('fordDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Honda Civic Type R -->
                <div class="col-md-4 car" data-name="Honda">
                    <div class="card">
                        <a href="honda.html">
                            <img src="https://media.gqitalia.it/photos/628407f5e2b4e27b542e1da8/16:9/w_1280,c_limit/honda-civic-type-r.jpg"
                                class="card-img-top" alt="Honda Civic Type R">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Honda Civic Type R</h5>
                            <p class="card-text">La hatchback sportiva con prestazioni eccezionali.</p>
                        </div>
                    </div>
                    <div class="car-details" id="hondaDetails">
                        <h5>Dettagli Honda Civic Type R</h5>
                        <p>La Honda Civic Type R è famosa per il suo design aerodinamico e il motore turbo potente, rendendola una delle migliori hatchback sportive sul mercato.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('hondaDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Mercedes-Benz EQS -->
                <div class="col-md-4 car" data-name="Mercedes">
                    <div class="card">
                        <a href="mercedes.html">
                            <img src="https://media.gqitalia.it/photos/628408303855f06e7e8a3f3b/16:9/w_1280,c_limit/mercedes-benz-eqs.jpg"
                                class="card-img-top" alt="Mercedes-Benz EQS">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Mercedes-Benz EQS</h5>
                            <p class="card-text">Il lusso elettrico in una berlina elegante e innovativa.</p>
                        </div>
                    </div>
                    <div class="car-details" id="mercedesDetails">
                        <h5>Dettagli Mercedes-Benz EQS</h5>
                        <p>La EQS è una berlina elettrica di lusso che offre comfort senza precedenti, tecnologia all'avanguardia e prestazioni superiori, rendendola una delle migliori nel suo segmento.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('mercedesDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Subaru WRX STI -->
                <div class="col-md-4 car" data-name="Subaru">
                    <div class="card">
                        <a href="subaru.html">
                            <img src="https://media.gqitalia.it/photos/628409240cc16d20d65079c9/16:9/w_1280,c_limit/subaru-wrx-sti.jpg"
                                class="card-img-top" alt="Subaru WRX STI">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Subaru WRX STI</h5>
                            <p class="card-text">L'auto sportiva con trazione integrale e prestazioni eccezionali.</p>
                        </div>
                    </div>
                    <div class="car-details" id="subaruDetails">
                        <h5>Dettagli Subaru WRX STI</h5>
                        <p>Famosa per la sua trazione integrale e le prestazioni in pista, la Subaru WRX STI è un'auto sportiva che promette adrenalina pura.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('subaruDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Lamborghini Huracán -->
                <div class="col-md-4 car" data-name="Lamborghini">
                    <div class="card">
                        <a href="lamborghini.html">
                            <img src="https://media.gqitalia.it/photos/62840a4a70c0f3f92bead9c1/16:9/w_1280,c_limit/lamborghini-huracan.jpg"
                                class="card-img-top" alt="Lamborghini Huracán">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Lamborghini Huracán</h5>
                            <p class="card-text">Un'icona di potenza e stile senza compromessi.</p>
                        </div>
                    </div>
                    <div class="car-details" id="lamborghiniDetails">
                        <h5>Dettagli Lamborghini Huracán</h5>
                        <p>La Lamborghini Huracán combina un design mozzafiato con un motore V10, rendendola una delle supercar più desiderate al mondo.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('lamborghiniDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Audi R8 -->
                <div class="col-md-4 car" data-name="Audi">
                    <div class="card">
                        <a href="audi.html">
                            <img src="https://media.gqitalia.it/photos/62840b4f70c0f3f92beaf234/16:9/w_1280,c_limit/audi-r8.jpg"
                                class="card-img-top" alt="Audi R8">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Audi R8</h5>
                            <p class="card-text">Un'auto sportiva di lusso con prestazioni senza pari.</p>
                        </div>
                    </div>
                    <div class="car-details" id="audiDetails">
                        <h5>Dettagli Audi R8</h5>
                        <p>L'Audi R8 è famosa per il suo design elegante e le prestazioni mozzafiato, con un motore V10 che la rende una delle migliori nel suo segmento.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('audiDetails')">Chiudi</button>
                    </div>
                </div>

                <!-- Porsche 911 -->
                <div class="col-md-4 car" data-name="Porsche">
                    <div class="card">
                        <a href="porsche.html">
                            <img src="https://media.gqitalia.it/photos/62840b7e70c0f3f92beaf2d2/16:9/w_1280,c_limit/porsche-911.jpg"
                                class="card-img-top" alt="Porsche 911">
                        </a>
                        <span class="favorite" onclick="toggleFavorite(this)">★</span>
                        <div class="card-body">
                            <h5 class="card-title">Porsche 911</h5>
                            <p class="card-text">La leggendaria sportiva con un'eredità senza tempo.</p>
                        </div>
                    </div>
                    <div class="car-details" id="porscheDetails">
                        <h5>Dettagli Porsche 911</h5>
                        <p>La Porsche 911 è un'icona automobilistica, famosa per le sue prestazioni eccezionali e il suo design distintivo che l'hanno resa un simbolo di stile.</p>
                        <button class="btn btn-secondary" onclick="toggleDetails('porscheDetails')">Chiudi</button>
                    </div>
                </div>
                <!-- Nissan GT-R -->
<div class="col-md-4 car" data-name="Nissan">
    <div class="card">
        <a href="nissan.html">
            <img src="https://media.gqitalia.it/photos/5f8d53e181eb8c001cb038a8/16:9/w_1280,c_limit/nissan-gtr.jpg"
                class="card-img-top" alt="Nissan GT-R">
        </a>
        <span class="favorite" onclick="toggleFavorite(this)">★</span>
        <div class="card-body">
            <h5 class="card-title">Nissan GT-R</h5>
            <p class="card-text">Una supercar giapponese con prestazioni da urlo.</p>
        </div>
    </div>
    <div class="car-details" id="nissanDetails">
        <h5>Dettagli Nissan GT-R</h5>
        <p>La Nissan GT-R è celebre per la sua potenza e la sua agilità, con un motore V6 twin-turbo che offre un'esperienza di guida adrenalinica.</p>
        <button class="btn btn-secondary" onclick="toggleDetails('nissanDetails')">Chiudi</button>
    </div>
</div>

<!-- Aston Martin DB11 -->
<div class="col-md-4 car" data-name="Aston Martin">
    <div class="card">
        <a href="astonmartin.html">
            <img src="https://media.gqitalia.it/photos/5f8d53f681eb8c001cb038b4/16:9/w_1280,c_limit/aston-martin-db11.jpg"
                class="card-img-top" alt="Aston Martin DB11">
        </a>
        <span class="favorite" onclick="toggleFavorite(this)">★</span>
        <div class="card-body">
            <h5 class="card-title">Aston Martin DB11</h5>
            <p class="card-text">Un'auto di lusso con prestazioni straordinarie.</p>
        </div>
    </div>
    <div class="car-details" id="astonDetails">
        <h5>Dettagli Aston Martin DB11</h5>
        <p>L'Aston Martin DB11 combina un design elegante con un motore V8 potente, offrendo un'esperienza di guida unica e raffinata.</p>
        <button class="btn btn-secondary" onclick="toggleDetails('astonDetails')">Chiudi</button>
    </div>
</div>

            </div>
        </div>
    </main>
    <footer>
        <p>© 2024 AutoPassion. Tutti i diritti riservati.</p>
    </footer>
    
    <script>
        function filterCars() {
            const searchInput = document.getElementById('searchInput').value.toLowerCase();
            const cars = document.querySelectorAll('.car');

            cars.forEach(car => {
                const carName = car.getAttribute('data-name').toLowerCase();
                if (carName.startsWith(searchInput)) {
                    car.style.display = 'block'; // Mostra la macchina se inizia con la lettera cercata
                } else {
                    car.style.display = 'none'; // Nasconde la macchina se non inizia con la lettera cercata
                }
            });
        }

        function toggleFavorite(star) {
            star.classList.toggle('selected');
        }

        function toggleDetails(detailsId) {
            const details = document.getElementById(detailsId);
            details.style.display = details.style.display === 'none' ? 'block' : 'none';
        }
    </script>

</body>
 </html>
