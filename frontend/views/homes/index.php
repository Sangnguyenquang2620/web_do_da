<?php
require_once 'helpers/Helper.php';
?>
<!--    PRODUCT-->
<!-- <div class="product-wrap">
    <div class="product container">
        <?php if (!empty($products)): ?>
        <h1 class="post-list-title">
            <a href="danh-sach-san-pham.html" class="link-category-item">Sản phẩm mới nhất</a>
        </h1>
        <div class="link-secondary-wrap row">
            <?php foreach ($products AS $product):
              $slug = Helper::getSlug($product['title']);
              $product_link = "san-pham/$slug/" . $product['id'] . ".html";
              $product_cart_add = "them-vao-gio-hang/" . $product['id'] . ".html";
              ?>
            <div class="service-link col-md-3 col-sm-6 col-xs-12">
                <a href="<?php echo $product_link; ?>">
                    <img class="secondary-img img-responsive" title="<?php echo $product['title'] ?>"
                        src="../backend/assets/uploads/<?php echo $product['avatar'] ?>"
                        alt="<?php echo $product['title'] ?>" />
                    <span class="shop-title">
                        <?php echo $product['title'] ?>
                    </span>
                </a>
                <span class="shop-price">
                    <?php echo number_format($product['price']) ?>
                </span> -->
<!--                    frontend/views/homes/index.php-->
<!-- Khai báo thêm 1 thuộc tính do bạn tự định nghĩa ra
, để khi click vào thì lấy đc id của sp vừa click-->
<!-- <span data-id="<?php echo $product['id']?>" class="add-to-cart">
                    <a href="#" style="color: inherit">Thêm vào giỏ</a>
                </span>
            </div>
            <?php endforeach; ?>
        </div>
        <?php endif; ?>
    </div>
</div> -->
<!--    END PRODUCT-->

<div class="products-box">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img style="height:600px" class="d-block w-100" src="assets/images/index/banner-double2.jpg" alt="First slide">
                        </div>
                        <div  class="carousel-item">
                        <img style="height:600px" class="d-block w-100" src="assets/images/index/banner.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                        <img style="height:600px" class="d-block w-100" src="assets/images/index/edc-banner-collection.jpg" alt="Third slide">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
    </div>
    <div class="container">
        <div style="margin-top: 20px" class="row">
            <div class="col-lg-12">
                <div  class="title-all text-center">
                    <h1 style="font-size: 40px">Hàng mới về</h1>
                    <b><p style="color: #20410E; font-size: 18px">Toàn bộ sản phẩm của Leather Another được sản xuất, đóng gói trực tiếp thủ công.</p></b>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter="*">All</button>
                        <button data-filter=".bulbs" class="">Túi </button>
                        <button data-filter=".fruits" class="">Giày</button>
                        <button data-filter=".podded-vegetables" class="">Ví</button>
                        <button data-filter=".root-and-tuberous" class="">Thắt lưng</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row special-list" style="position: relative; height: 695.625px;">
            <div class="col-lg-3 col-md-6 special-grid bulbs" style="position: absolute; left: 0px; top: 0px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="assets/images/leather/bag/bag1.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>
                            <!-- <a class="cart" href="#">Add to Cart</a> -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid fruits" style="position: absolute; left: 285px; top: 0px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/shoes/shoe1.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid bulbs" style="position: absolute; left: 570px; top: 0px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                    <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="assets/images/leather/bag/bag2.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid fruits" style="position: absolute; left: 855px; top: 0px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/shoes/shoe2.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 special-grid bulbs" style="position: absolute; left: 0px; top: 231px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/bag/bag3.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid fruits" style="position: absolute; left: 285px; top: 231px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                    <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="assets/images//leather/shoes/shoe3.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid podded-vegetables"
                style="position: absolute; left: 570px; top: 231px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        
                        <img src="assets/images/leather/wallet/wallet1.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid root-and-tuberous"
                style="position: absolute; left: 855px; top: 231px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/belt/belt1.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid root-and-tuberous"
                style="position: absolute; left: 0px; top: 463px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                    <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="assets/images/leather/belt/belt2.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid podded-vegetables"
                style="position: absolute; left: 285px; top: 463px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/wallet/wallet2.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid root-and-tuberous"
                style="position: absolute; left: 570px; top: 463px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <img src="assets/images/leather/belt/belt3.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 special-grid podded-vegetables"
                style="position: absolute; left: 855px; top: 463px;">
                <div class="products-single fix">
                    <div class="box-img-hover">
                    <div class="type-lb">
                            <p class="sale">Sale</p>
                        </div>
                        <img src="assets/images/leather/wallet/wallet3.jpg" class="img-fluid" alt="Image">
                        <div class="mask-icon">
                            <ul>
                                <!-- <li><a href="danh-sach-san-pham.html" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="View"><i class="fas fa-eye"></i></a></li> -->
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                <li><a href="#" data-toggle="tooltip" data-placement="right" title=""
                                        data-original-title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                            </ul>
                            <a class="cart" href="danh-sach-san-pham.html"><i class="fas fa-eye"> Chi tiết sản phẩm</i></a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="categories-shop">
    <div class="container">
        <div class="col-12">
            <h2 style="text-align: center;" class="noo-sh-title">Cam Kết</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img width="100%" class="img-fluid" src="assets/images/index/camket2.jpg" alt="">
                    <a class="btn hvr-hover" href="#">Sản phẩm chất lượng</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img style="height:373px;" class="img-fluid" src="assets/images/index/thanh-toan.png" alt="">
                    <a class="btn hvr-hover" href="#">Thanh toán trực tuyến</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <div class="shop-cat-box">
                    <img style="height:373px;" class="img-fluid" src="assets/images/index/doi-tra.jpg" alt="">
                    <a class="btn hvr-hover" href="#">Nhận hàng và đổi trả miễn phí</a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="box-add-products">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img style="height:373px; border-radius: 13px;" class="img-fluid" src="assets/images/index/chose.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="offer-box-products">
                    <img style="height:373px; border-radius: 13px;" class="img-fluid" src="assets/images/index/banner-double2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

<!--NEWS-->
<div class="latest-blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1><a href="/news.html" href="">Tin Tức </a></h1>
                    <p>Cập nhật các mẹo và tin tức trong ngày về đồ da</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img-fluid-banner" src="assets/images/index/news.png" alt="">
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>Tài lộc gấp bội nhờ sử dụng ví đúng phong thuỷ</h3>
                            <p>Ví tiền không chỉ là một phụ kiện đơn thuần mà còn là một vật dụng không thể thiếu của mỗi người. 
                            Theo quan niệm phong thủy của nhiều quốc gia, ví tiền tượng trưng cho tài lộc, cho sự thịnh vượng của chủ nhân. 
                            Nếu bạn sử dụng ví đúng cách thì tài lộc ắt sẽ đến như một lẽ thường nhiên.</p>
                        </div>
                        <ul class="option-blog">
                            <li><a href="#"><i class="far fa-heart"></i></a></li>
                            <li><a href="news_detail.html"><i class="fas fa-eye"></i></a></li>
                            <li><a href="#"><i class="far fa-comments"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img-fluid-banner" src="assets/images/index/new.jpg" alt="">
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>Cách diệt nấm mốc trên đồ da</h3>
                            <p>Giày da, đồ da và túi da đều dễ bị lên nấm khi bạn cất trong tủ. 
                            Diệt nấm bằng cách: Nhúng miếng bọt biển vào 5ml chất diệt nấm pha loãng trong 500 ml nước ấm, 
                            rồi lau. Hoặc lau bằng miếng bôg sạch thấm nước súc miệng diệt khuẩn. Sau đó đánh giày và bọc da. 
                            Chà và đánh bóng bằng vải mềm.</p>
                        </div>
                        <ul class="option-blog">
                            <li><a href="#"><i class="far fa-heart"></i></a></li>
                            <li><a href="news_detail.html"><i class="fas fa-eye"></i></a></li>
                            <li><a href="#"><i class="far fa-comments"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img-fluid-banner" src="assets/images/index/new1.jpg" alt="">
                    </div>
                    <div class="blog-content">
                        <div class="title-blog">
                            <h3>Chân to nên chọn giày như thế nào?</h3>
                            <p>Bạn đang cảm thấy phiền muộn bởi đôi chân quá khổ của mình, hãy cứ chọn một chiếc với size thoải mái nhất và dùng các mẹo nhỏ sau đây: 
                            chọn giày tối màu, chọn giày có họa tiết, chọn giày mũi nhọn, . Đảm bảo giúp bạn chọn được đôi giày ưng
                             ý và phù hợp nhất với mình.</p>
                        </div>
                        <ul class="option-blog">
                            <li><a href="#"><i class="far fa-heart"></i></a></li>
                            <li><a href="news_detail.html"><i class="fas fa-eye"></i></a></li>
                            <li><a href="#"><i class="far fa-comments"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--END NEWS-->


    </div>
    <ul class="icon-service-wrap">
    <li data-toggle="tooltip" data-placement="left" title="Gọi ngay cho chúng tôi">
        <a href="tel:0999999999">
            <img src="assets/images/icon-phone.png" class="icon-service-img"/>
        </a>
    </li>
    <li data-toggle="tooltip" data-placement="left" title="Chat với chúng tôi qua Zalo">
        <a href="//zalo.me/0999999999" target="_blank">
            <img src="assets/images/icon-zalo.png" class="icon-service-img"/>
        </a>
    </li>
    <li data-toggle="tooltip" data-placement="left" title="Gửi mail cho chúng tôi">
        <a href="mailto:abc@gmail.com">
            <img src="assets/images/icon-mail.png" class="icon-service-img"/>
        </a>
    </li>
    <li data-toggle="tooltip" data-placement="left" title="Liên hệ với chúng tôi">
        <a href="contact.html" target="_blank">
            <img src="assets/images/icon-map.png" class="icon-service-img"/>
        </a>
    </li>
</ul>
</div>
<!--END NEWS-->