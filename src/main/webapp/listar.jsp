<%-- 
    Document   : menu
    Created on : 15-nov-2021, 17:33:18
    Author     : DAW-A
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>Listado de productos por nombre</h1>
        <% String mensaje = (String)request.getAttribute("mensaje");  %>
        <div class="container">
        <h3 class="alert alert-success"><%= mensaje %></h3>
        <a href="Servlet?op=insertar" class="btn btn-primary">Nuevo producto</a>
        <table class="table">

        <%  
            
            List<Productos>  listaProductos = (List<Productos>) request.getAttribute("listado"); 
        
            for (Productos p : listaProductos) {
        %>
           <tr>
               <td> <%= p.getNombre() %> </td>  
               <td> <%=  p.getPrecio() %> </td>
               <td> <%=  p.getCategoria() %> </td>
               <td> <a href="Servlet?op=borrar&id=<%= p.getId() %>" onclick='return Confirmation()'>Borrar</a></td>
               <td> <a href="Servlet?op=actualizar&id=<%= p.getId() %>">Modificar</a></td>
           </tr>
            
            <%
                }
            %>
        </table>
        </div>
        <script type="text/javascript">
   
                function Confirmation() {
                              if (confirm('¿Esta seguro de eliminar el registro?')==true) {
                                alert('El registro ha sido eliminado correctamente');
                                return true;

                }else{
                    return false;
                }
                }
  
        </script>    
    </body>
</html>
