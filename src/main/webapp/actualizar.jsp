<%-- 
    Document   : actualizar
    Created on : 22-nov-2021, 17:42:58
    Author     : DAW-A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
        <h1 style="margin-top: 50px ">Producto</h1>
        
        <h2>${mensaje}</h2>
       
        
        <form action="Servlet?op=${operacion}" method="post">
            <input type="hidden" value="${operacion}" name="op">
            <div class="form-group">
                <label for="id">Id: </label>
                <input type="text" value="${producto.id}" name="id" class="form-control" />
            </div>
            <div class="form-group">
                <label for="nombre">Nombre: </label>
                <input type="text" value="${producto.nombre}" name="nombre" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="categoria">Categoría: </label>
                <input type="text" value="${producto.categoria}" name="categoria" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="precio">Precio: </label>
                <input type="text" value="${producto.precio}" name="precio" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="imagen">Imagen: </label>
                <input type="text" value="${producto.imagen}" name="imagen" class="form-control"/>
            </div>
            
            <input type="submit" value="Actualizar producto" class="btn btn-default">

        </form>
        </div>
            
            <a href="Servlet?op=listar">Volver a listado</a>
    </body>
</html>
