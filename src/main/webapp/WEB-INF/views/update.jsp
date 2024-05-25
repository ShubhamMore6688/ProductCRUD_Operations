<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>update</title>
  </head>
  <body>

   <div class="container text-center mt-4">
     <h2>Update Product</h2>
   </div>
   <form action="${pageContext.request.contextPath }/updateproduct" method="post">

    <div class="container mt-3 w-50">

            <div class="form-group">
               <label for="id">Name</label>
               <input type="text" class="form-control" id="id" name="id" value="${product.id}">
            </div>
             <div class="form-group">
               <label for="name">Name</label>
               <input type="text" class="form-control" id="name" name="name" value="${product.name}">
             </div>

             <div class="form-group">
                 <label for="description">Description</label>
                 <input type="text" class="form-control" id="Description" name="description" value="${product.description}">
              </div>

             <div class="form-group">
                  <label for="price">Price</label>
                  <input type="text" class="form-control" id="price" name="price" value="${product.price}">
             </div>

             <div class="container text-center mt-4">
                 <button type="submit" class="btn btn-primary">Update</button>
             </div>

   </div>

   </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>