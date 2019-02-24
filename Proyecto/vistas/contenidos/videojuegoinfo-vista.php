
<?php

/**
 * Como esta vista es para administradores, quedaría restringida su
 * visualización para usuarios normales. 
 */

$datosUrl = explode("/", $_GET['vistas']);
if ($datosUrl[0] == "videojuegoinfo") :

    if ($_SESSION['tipoGC'] != "Administrador" && $_SESSION['tipoGC'] != "Cliente") {
    echo $loginController->forzarCierreSesionController();
}

require_once "./controladores/controladorVideojuego.php";
$videojuegoClass = new controladorVideojuego();


$filasVideojuego = $videojuegoClass->dataVideojuegoController("Uno", $datosUrl[1]);
if ($filasVideojuego->rowCount() == 1) {
    $camposForm = $filasVideojuego->fetch();
    ?>
<!-- Content page -->
<div class="container-fluid">
    <div class="page-header">
        <h1 class="text-titles"><i class="zmdi zmdi-book zmdi-hc-fw"></i> INFORMACIÓN VIDEOJUEGO</small></h1>
    </div>
    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse voluptas reiciendis tempora voluptatum eius porro ipsa quae voluptates officiis sapiente sunt dolorem, velit quos a qui nobis sed, dignissimos possimus!</p>
</div>

<!-- Panel info VIDEOJUEGO -->
<div class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="zmdi zmdi-info"></i> &nbsp; NOMBRE VIDEOJUEGO</h3>
        </div>
        <div class="panel-body">
            <fieldset>
                <legend><i class="zmdi zmdi-library"></i> &nbsp; Información básica</legend>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group label-floating">
                                <span>Título</span>
                                <input class="form-control" readonly="" value="<?php echo $camposForm['vidTitulo'] ?>">
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <img src="<?php echo $camposForm['vidImagen'] ?>" alt="videojuego" class="img-responsive">
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group label-floating">
                                            <span>Género</span>
                                            <input class="form-control" readonly=""  value="<?php echo $videojuegoClass->nombreGenVidController($camposForm['generoCodigo'],false) ?>">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="form-group label-floating">
                                            <span>País</span>
                                            <input class="form-control" readonly="" value="<?php echo $camposForm['vidPais'] ?>" >
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="form-group label-floating">
                                            <span>Año</span>
                                            <input class="form-control" readonly="" value="<?php echo $camposForm['vidAnno'] ?>">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="form-group label-floating">
                                            <span>Desarrolladora</span>
                                            <input class="form-control" readonly="" value="<?php echo $videojuegoClass->nombreDesVidController($camposForm['desarrCodigo'],false)?>">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-6">
                                        <div class="form-group label-floating">
                                            <span>Publisher</span>
                                            <input class="form-control" readonly="" value="<?php echo $videojuegoClass->nombrePublisherVidController($camposForm['publisherCodigo'],false)?>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br>
            <fieldset>
                <legend><i class="zmdi zmdi-assignment-o"></i> &nbsp; Resumen del VIDEOJUEGO</legend>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group label-floating">
                                <span>Resumen</span>
                                <textarea readonly="" class="form-control" rows="3"><?php echo $camposForm['vidAnalisis'] ?></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </fieldset>
            <br>
           <!-- <fieldset>
                <legend><i class="zmdi zmdi-download"></i> &nbsp; Descargar archivo PDF</legend>
                <p class="text-center">
                    <a href="javascript:void(0)" class="btn btn-raised btn-primary">
                    <i class="zmdi zmdi-cloud-download"></i> &nbsp; DESCARGAR PDF
                    </a>
                </p>
            </fieldset> -->
        </div>
    </div>
</div>
<?php 
} else {
    ?>
    <h3>No existen datos del videojuego</h3>
    <tr>
        <td colspan="5">
            <a href="<?php echo SERVERURL ?>catalogo/" class="btn btn-group-sm btn-info btn-raised">
                Volver al catálogo
            </a>
        </td>
    </tr>
    <?php

} else :

?>
<h1>ERROR</h1>
<h3>No existen datos del videojuego</h3>
    <tr>
        <td colspan="5">
            <a href="<?php echo SERVERURL ?>catalogo/" class="btn btn-group-sm btn-info btn-raised">
                Volver al catálogo
            </a>
        </td>
    </tr>
<?php endif; ?>