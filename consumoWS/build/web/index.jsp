<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap 101 Template</title>

        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>

        <div class="container">
            <p><br/></p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalCadEndpoint">Cadastrar</button>
        </div>
        <p><br/></p>
        <!--Tabela contendo a lista de Endpoints-->
        <div class="container">
            <table class="table table-bordered table-striped table-hover" id="host_table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Desenvolvedor</th>
                        <th>Homologação</th>
                        <th>Produção</th>
                        <th>Action</th>
                    </tr>
                </thead>
            </table>
        </div>

        <!-- Modal View Endpoints-->
        <div class="modal fade" id="modalViewItem" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-x1" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Endpoint</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label>ID</label>
                        <input type="text" id="txtIDM" disabled>
                        <label>HostDev</label>
                        <input type="text" id="txtHostDevM">
                        <label>HostHomol</label>
                        <input type="text" id="txtHostHomolM">
                        <label>HostProd</label>
                        <input type="text" id="txtHostProdM">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" id="delete" title="">Excluir</button>
                        <button type="button" class="btn btn-secondary" id="alterar" title="">Alterar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Cad Endpoints-->
        <div class="modal fade bd-example-modal-lg" id="modalCadEndpoint" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Cadastrar Endpoint</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container">
                            <label>HostDev</label>
                            <input type="text" id="txtHostDevCad">
                            <label>HostHomol</label>
                            <input type="text" id="txtHostHomolCad">
                            <label>HostProd</label>
                            <input type="text" id="txtHostProdCad">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" id="cadastrarHost" title="">Cadastrar</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>

                    </div>
                </div>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="./js/main.js"></script>
        <script language="Javascript">
            window.onload = function () {
                setTimeout('location.reload();', 20000);
            };
        </script>

    </body>

</html>