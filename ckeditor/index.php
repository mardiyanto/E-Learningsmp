<!--
Author : Aguzrybudy
Created : Selasa, 14-Maret-2017
Title : Configuaration ckeditor & Kcfinder
-->

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Configuaration ckeditor & Kcfinder</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
  </head>
  <body>

    <div id="wrapper">
      <nav class="navbar navbar-light bg-faded">
      <a class="navbar-brand" href="http://aguzrybudy.com">Aguzrybudy.com</a>
      <ul class="nav navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">Cara Integrasi Ckeditor & Kcfinder</a>
        </li>
      </ul>
      </nav>
      <div class="container box">
		<form name="form_mahasiwa" action="process.php" method="post" enctype="multipart/form-data">

		  <div class="form-group">
			<label for="Title">Title</label>
			<input type="text" class="form-control" id="nim" placeholder="Title" name="title" required>
		  </div>

		  <div class="form-group">
			<label for="Description">Description</label>
			<textarea class="form-control" id="Description" placeholder="Description" name="description" required></textarea>
		  </div>

		  <div class="form-group">
			<button type="reset" class="btn btn-danger">Reset</button>
			<button type="submit" class="btn btn-primary">Save</button>
		  </div>

		</form>
      </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="ckeditor.js"></script>
    <script type="text/javascript">
	  //Script untuk mengaktifkan ckeditor
      CKEDITOR.replace( 'description',{height: 100} );
    </script>
  </body>
</html>