<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/bdf08c7018.js" crossorigin="anonymous"></script>
    <title>Home</title>
  </head>
  <body>

       <div class="container mt-4 text-center">
           <h2>Product Details</h2>
           <table class="table mt-3">
                 <thead class="thead-dark">
                   <tr>
                     <th scope="col">Id</th>
                     <th scope="col">Name</th>
                     <th scope="col">Description</th>
                     <th scope="col">Price</th>
                     <th scope="col">Actions</th>
                   </tr>
                 </thead>
                 <tbody>

                   <c:forEach items="${products}" var="p" >
                       <tr>
                         <th scope="row">${p.id}</th>
                         <td>${p.name}</td>
                         <td>${p.description}</td>
                         <td>${p.price}</td>
                         <td>
                            <a href="update/${p.id}"><i class="fa-solid fa-pen-nib mr-4"></i></a>
                            <a href="delete/${p.id}"><i class="fa-solid fa-trash text-danger"></i></a>


                         </td>

                       </tr>
                   </c:forEach>

                 </tbody>
               </table>

                <div class="container">
                    <a href="product" class="link-success btn btn-success">Add Product</a>

                </div>

       </div>




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>