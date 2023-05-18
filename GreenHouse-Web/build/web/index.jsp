<%-- 
    Document   : index
    Created on : Jul 20, 2022, 5:42:42 PM
    Author     : grays
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GreenHouse-DashBoard</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Green House Dashboard</h1>

        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Time</th>
                    <th scope="col">Temperature</th>
                    <th scope="col">Humidity</th>
                    <th scope="col">Moisture</th>
                    <th scope="col">Light</th>
                </tr>
            </thead>
            <tbody id="tableView">
                <tr>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>sample</td>
                    <td>sample</td>
                    <td>sample</td>
                </tr>
            </tbody>
        </table>
    </body>
    <script>
        var f1 = function loadTable() {
            $.ajax({
                url: "getData",
                dataType: 'json',
                success: function (data) {
                    let val;
                    $.each(data, function (key, value) {
                        val+='<tr><td>'+value.timestamp+'</td>';
                        val+='<td>'+value.temperature+'</td>';
                        val+='<td>'+value.humidity+'</td>';
                        val+='<td>'+value.moisture+'</td>';
                        val+='<td>'+value.light+'</td></tr>';
                    });
                    $('#tableView').html(val);
                }
            });
        };
        setInterval(f1, 5000);
        console.log(f1);
//        var s1 = setInterval(loadTable(), 5000);
//        console.log(s1);

    </script>
</html>
