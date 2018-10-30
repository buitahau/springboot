<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="">
<head>
    <title>Hau Bui</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="/static/theme/layout.css" rel="stylesheet" type="text/css" media="all">
    <script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded" style="background-image:url('<c:url value="/static/theme/image/01.png"/>');">
    <!-- ################################################################################################ -->
    <div class="wrapper row1">
        <header id="header" class="hoc clear">
            <!-- ################################################################################################ -->
            <div id="logo" class="fl_left">
                <h1><a href="index.html">Gomag</a></h1>
            </div>
            <nav id="mainav" class="fl_right">
                <ul class="clear">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a class="drop" href="#">Pages</a>
                        <ul>
                            <li><a href="pages/gallery.html">Gallery</a></li>
                            <li><a href="pages/full-width.html">Full Width</a></li>
                            <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
                            <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
                            <li><a href="pages/basic-grid.html">Basic Grid</a></li>
                        </ul>
                    </li>
                    <li><a class="drop" href="#">Sort</a>
                        <ul>
                            <li><a href="<c:url value="/sort/bubble.html"/>">Bubble</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Link Text</a></li>
                    <li><a href="#">Link Text</a></li>
                </ul>
            </nav>
            <!-- ################################################################################################ -->
        </header>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <section id="pageintro" class="hoc clear">
        <div>
            <!-- ################################################################################################ -->
            <h2 class="heading">Sodales dui sit<br>
                <strong>donec cursus sapien</strong></h2>
            <p>Mauris sed lectus vel erat consectetuer vulputate etiam duis orci urna dignissim non convallis eget facilisis curabitur.</p>
            <footer>
                <ul class="nospace inline pushright">
                    <li><a class="btn" href="#">Suscipit</a></li>
                    <li><a class="btn inverse" href="#">Lobortis</a></li>
                </ul>
            </footer>
            <!-- ################################################################################################ -->
        </div>
    </section>
    <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
    <main class="hoc container clear btmpad-none">
        <!-- main body -->
        <!-- ################################################################################################ -->
        <div class="sectiontitle center">
            <h6 class="heading">Nisi arcu dapibus</h6>
            <p>Ligula ultrices pharetra lorem leo in ante cum sociis.</p>
        </div>
        <ul class="nospace group center btmspace-80">
            <li class="one_third first">
                <article><i class="btmspace-30 fa fa-3x fa-android"></i>
                    <h6 class="heading font-x1">Auctor hendrerit id</h6>
                    <p class="btmspace-30">Ut semper mattis elit maecenas mattis massa nec rutrum mattis leo felis posuere eros eget elementum tortor leo non [&hellip;]</p>
                    <footer><a class="btn" href="#">Read More &raquo;</a></footer>
                </article>
            </li>
            <li class="one_third">
                <article><i class="btmspace-30 fa fa-3x fa-recycle"></i>
                    <h6 class="heading font-x1">Lacus praesent ullamcorper</h6>
                    <p class="btmspace-30">Natoque penatibus et magnis dis parturient montes nascetur ridiculus mus nulla facilisi etiam congue donec dictum [&hellip;]</p>
                    <footer><a class="btn" href="#">Read More &raquo;</a></footer>
                </article>
            </li>
            <li class="one_third">
                <article><i class="btmspace-30 fa fa-3x fa-code"></i>
                    <h6 class="heading font-x1">Risus gravida suscipit</h6>
                    <p class="btmspace-30">Enim sed et erat mauris lobortis suscipit dui in sollicitudin gravida tortor morbi nunc sapien varius condimentum [&hellip;]</p>
                    <footer><a class="btn" href="#">Read More &raquo;</a></footer>
                </article>
            </li>
        </ul>
        <figure><img src="images/demo/978x380.png" alt=""></figure>
        <!-- ################################################################################################ -->
        <!-- / main body -->
        <div class="clear"></div>
    </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay coloured" style="background-image:url('<c:url value="/static/theme/image/02.png"/>');">
    <section class="hoc container clear">
        <!-- ################################################################################################ -->
        <div class="sectiontitle center">
            <h6 class="heading">Tempor turpis pede</h6>
            <p>Dictum ipsum vel auctor leo est tincidunt est cras.</p>
        </div>
        <ul class="nospace group infoboxes">
            <li class="one_third first">
                <article class="infobox"><i class="fa fa-codepen"></i>
                    <p><a href="#">View Details</a></p>
                    <h6>Lectus nullam et diam</h6>
                </article>
            </li>
            <li class="one_third">
                <article class="infobox"><i class="fa fa-scissors"></i>
                    <p><a href="#">View Details</a></p>
                    <h6>Non dui consequat pulvinar</h6>
                </article>
            </li>
            <li class="one_third">
                <article class="infobox"><i class="fa fa-crosshairs"></i>
                    <p><a href="#">View Details</a></p>
                    <h6>Integer velit mi facilisis</h6>
                </article>
            </li>
        </ul>
        <!-- ################################################################################################ -->
        <div class="clear"></div>
    </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
    <article class="hoc container clear">
        <!-- ################################################################################################ -->
        <figure class="one_half first">
            <ul class="nospace">
                <li class="btmspace-10"><img src="images/demo/480x186.png" alt=""></li>
                <li><img src="images/demo/480x186.png" alt=""></li>
            </ul>
        </figure>
        <div class="one_half">
            <p class="nospace font-xs bold">Eget volutpat et aliquam</p>
            <h6 class="heading">Sed magna maecenas ultrices</h6>
            <p class="btmspace-30">Neque a nisl nulla facilisi phasellus et mi et nisl sollicitudin consequat aliquam erat volutpat vestibulum congue erat eu turpis in mattis velit eu ante in in felis in metus mollis.</p>
            <ul class="nospace group btmspace-30 smvplc">
                <li class="one_third first"><a href="#"><i class="fa fa-3x fa-dashboard"></i></a>
                    <p>Scelerisque<br>
                        <strong>12345</strong></p>
                </li>
                <li class="one_third"><a href="#"><i class="fa fa-3x fa-deaf"></i></a>
                    <p>Consectetuer<br>
                        <strong>12345</strong></p>
                </li>
                <li class="one_third"><a href="#"><i class="fa fa-3x fa-slack"></i></a>
                    <p>Himenaeos<br>
                        <strong>12345</strong></p>
                </li>
            </ul>
            <footer><a class="btn" href="#">Feugiat sed blandit</a></footer>
        </div>
        <!-- ################################################################################################ -->
        <div class="clear"></div>
    </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('<c:url value="/static/theme/image/03.png"/>');">
    <section class="hoc container clear">
        <!-- ################################################################################################ -->
        <div class="one_half first">
            <h6 class="heading">Blandit sed in risus fusce</h6>
            <p>Felis ipsum id non sapien nunc pretium consequat sapien fusce ante augue convallis sit amet volutpat ac posuere vel quam aenean porta donec a diam ut nunc tempor ornare etiam leo leo.</p>
            <footer><a class="btn" href="#">Bibendum vel dictum</a></footer>
        </div>
        <div class="one_half"><img src="images/demo/480x186-vid.png" alt=""></div>
        <!-- ################################################################################################ -->
        <div class="clear"></div>
    </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
    <figure class="hoc container clear">
        <!-- ################################################################################################ -->
        <ul class="nospace group logos">
            <li class="one_quarter first"><a href="#"><img src="images/demo/222x86.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/222x86.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/222x86.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/222x86.png" alt=""></a></li>
        </ul>
        <figcaption class="center hidden"><a class="btn" href="#">View More &raquo;</a></figcaption>
        <!-- ################################################################################################ -->
    </figure>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row4 bgded overlay" style="background-image:url('<c:url value="/static/theme/image/04.png"/>');">
    <footer id="footer" class="hoc clear">
        <!-- ################################################################################################ -->
        <div class="one_third first">
            <h6 class="heading">Gomag</h6>
            <p>Et posuere sit amet vulputate tempor tellus maecenas vehicula magna quis pede curabitur iaculis dui eu purus quisque est enim lobortis.</p>
            <p class="btmspace-50">Sed sollicitudin a mi vestibulum nisi ut lectus duis quam leo consectetuer.</p>
            <nav>
                <ul class="nospace">
                    <li><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Contact</a></li>
                    <li><a href="#">Terms</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li><a href="#">Cookies</a></li>
                    <li><a href="#">Disclaimer</a></li>
                    <li><a href="#">Online Shop</a></li>
                    <li><a href="#">Sitemap</a></li>
                </ul>
            </nav>
        </div>
        <div class="one_third">
            <h6 class="heading">Metus nam eu urna tempus</h6>
            <ul class="nospace btmspace-30 linklist contact">
                <li><i class="fa fa-map-marker"></i>
                    <address>
                        Street Name &amp; Number, Town, Postcode/Zip
                    </address>
                </li>
                <li><i class="fa fa-phone"></i> +00 (123) 456 7890</li>
                <li><i class="fa fa-fax"></i> +00 (123) 456 7890</li>
                <li><i class="fa fa-envelope-o"></i> info@domain.com</li>
            </ul>
            <ul class="faico clear">
                <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
                <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
            </ul>
        </div>
        <div class="one_third">
            <h6 class="heading">Non lacus vivamus quis</h6>
            <article><a href="#"><img class="btmspace-15" src="images/demo/320x140.png" alt=""></a>
                <h6 class="nospace font-x1"><a href="#">Sed congue vel gravida</a></h6>
                <time class="font-xs block btmspace-10" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
                <p class="nospace">Viverra interdum quam in hac habitasse platea dictumst sed pede volutpat [&hellip;]</p>
            </article>
        </div>
        <!-- ################################################################################################ -->
    </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
    <div id="copyright" class="hoc clear">
        <!-- ################################################################################################ -->
        <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">Domain Name</a></p>
        <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
        <!-- ################################################################################################ -->
    </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="/static/theme/scripts/jquery.backtotop.js"></script>
<script src="/static/theme/scripts/jquery.mobilemenu.js"></script>
</body>
</html>