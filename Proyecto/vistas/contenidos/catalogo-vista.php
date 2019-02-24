<div class="container-fluid">
    <div class="page-header">
        <h1 class="text-titles"><i class="zmdi zmdi-book-image zmdi-hc-fw"></i> CATÁLOGO</h1>
    </div>
    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse voluptas reiciendis tempora voluptatum eius porro ipsa quae voluptates officiis sapiente sunt dolorem, velit quos a qui nobis sed, dignissimos possimus!</p>
</div>

<?php 
  require_once "./controladores/controladorVideojuego.php";
  $videojuego = new controladorVideojuego();

?>
<div class="container-fluid">
    <h2 class="text-titles text-center">Lista de videojuegos</h2>
    <div class="row">
        <div class="col-xs-12">
            <div class="list-group">
            <?php
            $pagina = explode("/", $_GET['vistas']);
            echo $videojuego->paginadorVideojuegoController($pagina[1],8,
            $_SESSION['cuentaCodigoGC'],"");
            ?>
            </div>

        </div>
    </div>
</div>