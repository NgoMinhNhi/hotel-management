<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="card card-user">
    <div class="image">
        <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
    </div>
    <div class="content">
        <div class="author">
             <a href="#">
            <img class="avatar border-gray" src="<c:url value="/resources/images/face-3.jpg" />" alt="..."/>

              <h4 class="title">Mike Andrew<br />
                 <small>michael24</small>
              </h4>
            </a>
        </div>
        <p class="description text-center"> "Lamborghini Mercy <br>
                            Your chick she so thirsty <br>
                            I'm in that two seat Lambo"
        </p>
    </div>
    <hr>
    <div class="text-center">
        <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
        <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
        <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

    </div>
</div>