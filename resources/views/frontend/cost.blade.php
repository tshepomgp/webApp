<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Cloud Cost Assessment</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
	<meta name="csrf-token" content="{{ csrf_token() }}">


        <!-- Google Web Fonts test -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


 <style>
        .top-info div {
            color: #FFFF00; /* Bright Yellow */
        }


.mtn-logo {
    background-color: #FFD100; /* MTN Yellow */
    background-image: url('path/to/mtn-logo.png'); /* Path to MTN logo image */
    background-repeat: no-repeat;
    background-position: center;
    background-size: contain; /* Adjust size as needed */
    height: 50px; /* Adjust height as needed */
}

.mtn-text {
    color: #000000; /* Black text for contrast against yellow background */
    text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.7); /* Optional: slight text shadow for better readability */
}

.mtn-logo-img {
    height: 40px; /* Adjust size as needed */
    margin-left: 10px; /* Space between email link and logo */
}
    </style>
    </head>

    <body>


        <!-- Navbar start -->
        <div  fixed-top">
            <!-- <div class="container topbar bg-primary d-none d-lg-block"> -->
             <div class="container topbar  d-none d-lg-block mtn-logo"> 
                <div class="d-flex justify-content-between">
                    <div class="top-info ps-2">
                        <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">sales@mtn.com</a></small>
			<img src="/img/MTNlogo.png" alt="MTN Logo" class="mtn-logo-img">
                    </div>
                </div>
            </div>
	
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6" mtn-text>General Purpose VMs</h1></a>
                   <!--  <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index.html" class="nav-item nav-link">Home</a>
                        <div class="d-flex m-3 me-0"> -->
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->




        <!-- Checkout Page Start -->
        <div class="container-fluid ">
            <div class="container ">
		 <img src="/img/MTNlogo.png" alt="MTN Logo" >
                <h2 class="mb-4">Direct Purchase</h2>
                <form action="{{route ('view.pricing')}}" method="post" enctype="multipart/form-data">
			@csrf
                    <div class="row g-5">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="row">
                                <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Choose VM Operation System<sup>*</sup></label>
           					 <select class="form-control" name="osSelect"  id="osSelect">
							<option value="" selected disabled>Select OS</option>
              					  @foreach($uniqueOS as $os)
                   					 <option value="{{ $os }}" name="osOption">{{ $os }}</option>
               					   @endforeach
            					  </select>


	
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Number of Cores<sup>*</sup></label>
					<select class="form-control" name="coresSelect" id="coresSelect">
						<option value="" selected disabled>Select Cores</option>
                                                  @foreach($uniqueCores as $cores)
                                                         <option value="{{ $cores }}" name="coresOption">{{ $cores }}</option>
                                                   @endforeach
                                                  </select>
                                    </div>
				 </div>
				 <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">RAM Size<sup>*</sup></label>
                                        <select class="form-control "name="ramSelect"  id="ramSelect">
               					 <option value="" name="ramOption">Select RAM</option>
              					  <!-- Options will be populated by JavaScript -->
            					</select>
                                    </div>
				</div>
				 <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Storage Base GB<sup>*</sup></label>
                                      	<select class="form-control" name="storageSelect" id="storageSelect">
                				<option value="" name="storageOption">Select Storage</option>
                				<!-- Options will be populated by JavaScript -->
            				</select>
                                    </div>
                                </div>
				</div>
				 <div class="row g-5">

				<div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Cost<sup>*</sup></label>
                                        <input type="text" class="form-control" id="costPrice" disabled>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Selling Price<sup>*</sup></label>
                                        <input type="text" class="form-control" id="sellingPrice"   disabled>
                                    </div>
                                 </div>
				</div>
                            </div>
			    </div> 

				<hr>

				 <h2 class="mb-4">MTN Pricing</h2>

				<div class="row g-5">
                        <div class="col-md-12 col-lg-12 col-xl-12">
                            <div class="row">
                                <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">MTN Price<sup>*</sup></label>
                                        <input type="text" class="form-control" id="mtnPrice" disabled>
                                    </div>
                                </div>
                                <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Azure Instance<sup>*</sup></label>
                                        <input type="text" class="form-control" id="azureInstance" disabled>
                                    </div>
                                 </div>
                                 <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">%Difference with Azure<sup>*</sup></label>
                                        <input type="text" class="form-control" id="diff" disabled>
                                    </div>
                                </div>
                                 <div class="col-md-12 col-lg-3">
                                    <div class="form-item w-100">
                                        <label class="form-label my-3">Total MRR @ 80% Capacity<sup>*</sup></label>
                                        <input type="text" class="form-control" id="mrr" disabled>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>

			


                        </div>
                            <div class="row g-4 text-center align-items-center justify-content-center pt-4">
                                <button type="submit" class="btn border-secondary py-3 px-4 text-uppercase w-100 text-primary">Place Order</button>
                            </div>
                        </div>G
                    </div>
                </form>
            </div>
        </div>
        <!-- Checkout Page End -->





        <!-- Back to Top -->
        <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>






 <script>
document.addEventListener('DOMContentLoaded', function() {
    const osSelect = document.getElementById('osSelect');
    const coresSelect = document.getElementById('coresSelect');
    const ramSelect = document.getElementById('ramSelect');
    const storageSelect = document.getElementById('storageSelect');

    const staticOptions = {
        'Linux': {
            '1': {
                'ram': [2],
                'storage': [32]
            },
            '2': {
                'ram': [4, 8, 16],
                'storage': [32]
            },
            '4': {
                'ram': [8, 16, 32],
                'storage': [32]
            },
            '8': {
                'ram': [16, 32, 64],
                'storage': [32]
            }
        },
        'Windows': {
            '1': {
                'ram': [2],
                'storage': [128]
            },
            '2': {
                'ram': [4, 8, 16],
                'storage': [128]
            },
            '4': {
                'ram': [8, 16, 32],
		 'storage': [128]
            },
            '8': {
                'ram': [16, 32, 64],
                'storage': [128]
            }
        }
    };

    function updateRamAndStorage() {
        const selectedOS = osSelect.value;
        const selectedCores = coresSelect.value;

        if (selectedOS && selectedCores && staticOptions[selectedOS] && staticOptions[selectedOS][selectedCores]) {
            const options = staticOptions[selectedOS][selectedCores];

            // Clear existing options
            ramSelect.innerHTML = '<option value="">Select RAM</option>';
            storageSelect.innerHTML = '<option value="">Select Storage</option>';

            // Populate RAM options
            options.ram.forEach(ram => {
                const opt = document.createElement('option');
                opt.value = ram;
                opt.innerHTML = ram;
                ramSelect.appendChild(opt);
            });

            // Populate Storage options
            options.storage.forEach(storage => {
                const opt = document.createElement('option');
                opt.value = storage;
                opt.innerHTML = storage;
                storageSelect.appendChild(opt);
            });
        } else {
            // Clear options if no valid selection
            ramSelect.innerHTML = '<option value="">Select RAM</option>';
            storageSelect.innerHTML = '<option value="">Select Storage</option>';
        }
    }
 function checkAndFetchPricing() {
        const selectedOS = osSelect.value;
        const selectedCores = coresSelect.value;
        const selectedRAM = ramSelect.value;
        const selectedStorage = storageSelect.value;

        if (selectedOS && selectedCores && selectedRAM && selectedStorage) {
            // Send AJAX request
	$.ajax({
                url: '/fetch/pricing',
                type: 'POST',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                contentType: 'application/json',
                data: JSON.stringify({
                    os: selectedOS,
                    cores: selectedCores,
                    ram: selectedRAM,
                    storage: selectedStorage
                }),
                success: function(data) {
                    if (data.success) {
                        console.log('MTN Price:', data.MTNprice);
                        console.log('Azure Instance:', data.azureInstance);
                        console.log('Difference:', data.diff);
                        console.log('MRR:', data.mrr);

			 // Set the values of the input fields
                	$('#mtnPrice').val(data.azureprice);
                	$('#azureInstance').val(data.azureInstance);
			$('#diff').val(data.diff + '%');
                	$('#mrr').val(data.mrr);
			 $('#costPrice').val(data.cost);
                        $('#sellingPrice').val(data.MTNprice);

			
                    } else {
                        console.log('No matching record found');
                    }
                },
                error: function(error) {
                    console.error('Error:', error);
                }
            });
        }
    }
    osSelect.addEventListener('change', updateRamAndStorage);
    coresSelect.addEventListener('change', updateRamAndStorage);
    ramSelect.addEventListener('change', checkAndFetchPricing);
    storageSelect.addEventListener('change', checkAndFetchPricing);
});










    </script>
    </body>

</html>
