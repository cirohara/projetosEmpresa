$(document).ready(function () {
    //Inicio Carregar tela
    $.getJSON("http://10.0.8.98:45000/menu-console-col/api/endpoint/all", function (data) {
        var host_data = '';
        $.each(data, function (key, value) {
            host_data += '<tbody>';
            host_data += '<tr>';
            host_data += '<td>' + value.id + '</td>';
            host_data += '<td>' + value.hostDev + '</td>';
            host_data += '<td>' + value.hostHomol + '</td>';
            host_data += '<td>' + value.hostProd + '</td>';
            host_data += '<td class="text-centere"><button type="button" id="myBtn" name="btnView" class="btn btn-primary">View</button></td>';
            host_data += '</tbody>';
        });
        //Popula a tabela
        $('#host_table').append(host_data);
        
        //Função para mostrar o Endpoint selecionado em uma modal
        $("[name='btnView']").click(function () {
            $("#modalViewItem").modal();
            var id_host = $(this).closest("tr");
            var col1 = id_host.find("td:eq(0)").html();
            $.getJSON("http://10.0.8.98:45000/menu-console-col/api/endpoint/" + col1 + "", function () {

            }).then(function (data) {
                $("#txtIDM").val(data.id);
                $("#txtHostDevM").val(data.hostDev);
                $("#txtHostHomolM").val(data.hostHomol);
                $("#txtHostProdM").val(data.hostProd);
            });
        });
    });

    //Função que realiza o cadastro de um novo Endpoint
    $("#cadastrarHost").on("click", function () {
        var hostdev_data = document.getElementById('txtHostDevCad').value;
        var hosthomol_data = document.getElementById('txtHostHomolCad').value;
        var hostprod_data = document.getElementById('txtHostProdCad').value;
        var obj = {
            hostDev: hostdev_data,
            hostHomol: hosthomol_data,
            hostProd: hostprod_data
        };
        
        var settings = {
            "url": "http://10.0.8.98:45000/menu-console-col/api/endpoint",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(obj)
        };
        $.ajax(settings).done(function (response) {
            location.reload();
        });
        $('#modalExemplo').modal('hide');
    });

    //Função que realiza a ateração do Endpoint selecionado
    $("#alterar").on("click", function () {
        var id_data = document.getElementById('txtIDM').value;
        var hostdev_data = document.getElementById('txtHostDevM').value;
        var hosthomol_data = document.getElementById('txtHostHomolM').value;
        var hostprod_data = document.getElementById('txtHostProdM').value;
        var obj = {
            id: id_data,
            hostDev: hostdev_data,
            hostHomol: hosthomol_data,
            hostProd: hostprod_data
        };
        var settings = {
            "url": "http://10.0.8.98:45000/menu-console-col/api/endpoint/" + id_data + "",
            "method": "PUT",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(obj)
        };
        $.ajax(settings).done(function (response) {
            console.log(response);
            location.reload();
        });
        $('#modalExemplo').modal('hide');
    });

    //Função para deletar o Endpoin selecionado
    $("#delete").on("click", function () {
        var id_data = document.getElementById('txtIDM').value;
        var settings = {
            "url": "http://10.0.8.98:45000/menu-console-col/api/endpoint/" + parseInt(id_data) + "",
            "method": "DELETE",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            }
        };
        $.ajax(settings).done(function (response) {
            console.log(response);
            location.reload();
        });
        $('#modalExemplo').modal('hide');
    });
});
