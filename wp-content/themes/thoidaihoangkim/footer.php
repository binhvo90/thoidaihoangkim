<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package thoidaihoangkim
 */

?>

<!-- FOOTER -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-5 mrb20 address Module Module-139">
                <div class="ModuleContent">
                    <address>
                        <h5>CÔNG TY CỔ PHẦN BẤT ĐỘNG SẢN THỜI ĐẠI HOÀNG KIM</h5>

                        <p><i class="fas fa-map-marker-alt"></i>
                            Địa chỉ : BC o4 Road 38, Conic Nguyen Van Linh Street, Phong Phu Ward, District Binh Chanh, HCM City.
                        </p>
                        <p><i class="fas fa-book-open"></i>MST : 0314906155</p>
                        <p><i class="fas fa-phone"></i>Hotline : 0938606816 & 0911711944</p>

                        <p><i class="fas fa-mobile"></i>Di Động : 0911711944</p>

                        <p><i class="fas fa-envelope"></i>Email :
                            <a href="mailto:admin@thoidaihoangkim.vn">
                                <span>admin@thoidaihoangkim.vn</span>
                            </a>
                        </p>
                                    
                        <p><i class="fab fa-weebly"></i>Web : thoidaihoangkim.vn</p>
                    </address>
                </div>
            </div>
            <div class="col-md-4 footer-menu Module Module-164 .mrb20">
                <div class="ModuleContent">
                    <nav class="row">
                        <div class="col-sm-6 mrb20">
                            <h5>Dự án</h5>
                            <a class="nav-link transition" href="#" target="_self">Thành Phố</a>
                            <a class="nav-link transition" href="#" target="_self">Đất và móng</a>
                            <a class="nav-link transition" href="#" target="_self">Đất nền</a>
                        </div>
                        <div class="col-sm-6 mrb20">
                            <h5>Tin tức</h5>
                            <a class="nav-link transition" href="#" target="_self">Tin tức và sự kiện</a>
                            <a class="nav-link transition" href="#" target="_self">Tin thị trường</a>
                            <a class="nav-link transition" href="#" target="_self">Góc báo chí</a>
                            <a class="nav-link transition" href="#" target="_self">Thư viện ảnh - Video</a>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="col-md-3 mrb20 socical-sub text-xs-center text-lg-left">
                <div class="clearfix mrb20 Module Module-141">
                    <div class="ModuleContent">
                        <h5>KẾT NỐI MẠNG XÃ HỘI</h5>
                        <div class="socail">
                            <ul>
                                <li><a href="#" class="facebook"></a></li>
                                <li><a href="#" class="twitter"></a></li>
                                <li><a href="#" class="instagram"></a></li>
                                <li><a href="#" class="linkdin"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
                <div class="copy">© Copyright . All Rights Reserved.</div>

            </div>
        </div>
    </div>
</footer>
<!-- END OF FOOTER -->

<!-- SUCCESS MODAL -->
<div class="modal fade" id="successModal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <div class="bootstrap-dialog-header">
                    <div class="bootstrap-dialog-close-button" data-dismiss="modal" aria-label="Close">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="bootstrap-dialog-title">Success!</div>
                </div>
            </div>
            <div class="modal-body">
                <div class="bootstrap-dialog-body">
                    <div class="bootstrap-dialog-message">Your request has been recieved.</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END OF SUCCESS MODAL -->

<?php wp_footer(); ?>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5be67ee20e6b3311cb78ac18/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</body>
</html>
