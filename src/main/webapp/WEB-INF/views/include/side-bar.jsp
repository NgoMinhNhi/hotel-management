<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    <strong>Dau Cung Duoc</strong> Hotel
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="<c:url value="/bookingroom/" />">
                        <i class="fas fa-hotel"></i>
                        <p>Room Management</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value="/service-list/" />">
                        <i class="fas fa-tasks"></i>
                        <p>Service Management</p>
                    </a>
                </li>
            </ul>
    	</div>
    </div>