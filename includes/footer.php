 <?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
 <footer id="footer" class="footer footer-1 bg-white">
            <!-- Widget Section
    ============================================= -->
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6 col-md-3 widget--about">
                            <div class="widget--content">
                                <?php

                    
$ret=mysqli_query($con,"select * from tblpage where PageType='contactus'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                                <div class="footer--logo">
                                    <img src="assets/images/logo/logo-dark3.png" alt="logo">
                                </div>
                                <p><?php  echo $row['PageDescription'];?></p>
                                <div class="footer--contact">
                                    <ul class="list-unstyled mb-0">
                                        <li>+<?php  echo $row['MobileNumber'];?></li>
                                        <li> <p><?php  echo $row['Email'];?></p></li>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <!-- .col-md-2 end -->
                        <div class="col-xs-12 col-sm-3 col-md-2 col-md-offset-1 widget--links">
                            <div class="widget--title">
                                <h5></h5>
                            </div>
                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="about.php">About us</a></li>
                                    <li><a href="contact.php">Contact us</a></li>
                                   <li><a href="properties-grid.php">Properties</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- .col-md-2 end -->
                        <div class="col-xs-12 col-sm-3 col-md-2 widget--links">
                            <div class="widget--title">
                                <h5>More Links</h5>
                            </div>
                            <div class="widget--content">
                                <ul class="list-unstyled mb-0">
                                    <li><a href="admin/login.php">Admin</a></li>
                                    <li><a href="index.php">Home</a></li>
                                    
                                </ul>
                            </div>
                        </div>
                        <!-- .col-md-2 end -->
                      <!-- .col-md-2 end -->
                      <div class="col-xs-12 col-sm-12 col-md-4 widget--newsletter">
                            <div class="widget--title">
                                <h5>newsletter</h5>
                            </div>
                            <div class="widget--content">
                                <form class="newsletter--form mb-40">
                                    <input type="email" class="form-control" id="newsletter-email" placeholder="Email Address">
                                    <button type="submit"><i class="fa fa-arrow-right"></i></button>
                                </form>
                                <h6>Get In Touch</h6>
                                <div class="social-icons">
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-vimeo"></i></a>
                                </div>
                            </div>
                        </div>>
                        <!-- .col-md-4 end -->

                    </div>
                </div>
                <!-- .container end -->
            </div>
            <!-- .footer-widget end -->

            <!-- Copyrights
    ============================================= -->
            <div class="footer--copyright text-center">
                <div class="container">
                    <div class="row footer--bar">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <span>© 2019 ,  Capsule Market Place</span>
                        </div>

                    </div>
                    <!-- .row end -->
                </div>
                <!-- .container end -->
            </div>
            <!-- .footer-copyright end -->
        </footer>