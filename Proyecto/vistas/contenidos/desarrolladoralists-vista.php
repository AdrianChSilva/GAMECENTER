<!-- Content page -->
<?php

/**
 * Como esta vista es para  administradores, quedaría restringida su
 * visualización para usuarios normales. 
 */
if ($_SESSION['tipoGC'] != "Administrador") {
    echo $loginController->forzarCierreSesionController();
}
?>
<div class="container-fluid">
    <div class="page-header">
        <h1 class="text-titles"><i class="zmdi zmdi-balance zmdi-hc-fw"></i> Administración <small>DESARROLLADORA</small></h1>
    </div>
    <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse voluptas reiciendis tempora voluptatum eius porro ipsa quae voluptates officiis sapiente sunt dolorem, velit quos a qui nobis sed, dignissimos possimus!</p>
</div>

<div class="container-fluid">
    <ul class="breadcrumb breadcrumb-tabs">
        <li>
            <a href="<?php echo SERVERURL ?>desarrolladora/" class="btn btn-info">
                <i class="zmdi zmdi-plus"></i> &nbsp; NUEVA DESARROLLADORA
            </a>
        </li>
        <li>
            <a href="<?php echo SERVERURL ?>desarrolladoralists/" class="btn btn-success">
                <i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE DESARROLLADORAS
            </a>
        </li>
    </ul>
</div>
<?php
    require_once "./controladores/controladorDesarrolladora.php";
    $desarr = new controladorDesarrolladora();
?>

<!-- panel lista de empresas -->
<div class="container-fluid">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE DESARROLLADORA</h3>
        </div>
        <div class="panel-body">
 
            <?php
            $pagina = explode("/", $_GET['vistas']);
            echo $desarr->paginadorDesarrController($pagina[1],8,$_SESSION['privilegioGC'],
            $_SESSION['cuentaCodigoGC'],"");
            ?>
        </div>
    </div>
</div>