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
            <div class="col-xs-12">
                <div class="copy">© Copyright . All Rights Reserved.</div>
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
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
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

</body>
</html>
