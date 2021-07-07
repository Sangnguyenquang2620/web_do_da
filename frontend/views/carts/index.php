<!--Timeline items start -->
<div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Giỏ Hàng</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                        <li class="breadcrumb-item active">Giỏ Hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<div class="timeline-items container">
    <h1 style="text-align: center;color: #B7C916; padding-top: 10px;margin: 10px 0px; background-color: #20410E"><b>Giỏ hàng của bạn</b></h1>
    <form action="" method="post">
        <table border="5" class="table table-striped">
            <tbody>
            <tr>
                <th width="40%">Tên sản phẩm</th>
                <th width="12%">Số lượng</th>
                <th>Giá</th>
                <th>Thành tiền</th>
                <th></th>
            </tr>
            <?php
            // Tổng giá trị đơn hàng
            $total_order = 0;
            foreach($_SESSION['cart'] AS $product_id => $cart):
            ?>
            <tr>
                <td>
                    <img class="product-avatar img-responsive"
                         src="../backend/assets/uploads/<?php echo $cart['avatar']?>"
                         width="80">
                    <div class="content-product">
                       <b> <a style="color: #800000" href="#" class="content-product-a">
                               <?php echo $cart['name']; ?>
                            </a></b>
                    </div>
                </td>
                <td>
                    <!--  cần khéo léo đặt name cho input số lượng, để khi xử lý submit form update lại giỏ hàng Tin nổi bật sẽ đơn giản hơn    -->
<!--                    Với giỏ hàng hiện tại, đặt name = id của sản phẩm-->
                    <input type="number" min="0"
                           name="<?php echo $product_id;?>"
                           class="product-amount form-control"
                           value="<?php echo $cart['quantity']; ?>">

                </td>
                <td>
                     <b><span style="color: #800000" class="product-price-payment">
                               <?php echo number_format($cart['price'], 0, '.', '.') ?>
                              </span></b>
                     <b style="color: goldenrod"><span>VNĐ</span></b>
                </td>
                <td>
                     <b><span style="color: red" class="product-price-payment">
                                  <?php
                                  $price_total = $cart['price'] * $cart['quantity'];
                                  $total_order += $price_total;
                                  ?>
                                  <?php echo number_format($price_total, 0, '.', '.') ?>
                              </span></b>
                     <b style="color: goldenrod"><span>VNĐ</span></b>
                </td>
                <td>
                    <b><a class="content-product-a" style="color: #4C9F5F"
                          href="xoa-san-pham/<?php echo $product_id; ?>.html" onclick="return confirm('Bạn muốn xóa sản phẩm này khỏi giỏ hàng không?')">
                              Xóa
                         </a></b>
                </td>
            </tr>
            <?php endforeach; ?>
            <tr>
                <td colspan="5" style="text-align: right">
                    Tổng giá trị đơn hàng:
                     <b><span style="color: red" class="product-price">
                                <?php echo number_format($total_order, 0, '.', '.') ?>
                            </span>
                     </b>
                     <b style="color: goldenrod"><span>VNĐ</span></b>
                </td>
            </tr>
            <tr>
                <td colspan="5" class="product-payment">
                    <input type="submit" name="submit" value="Cập nhật lại giá" class="btn btn-primary">
                    <a href="thanh-toan.html" class="btn btn-success">Đến trang thanh toán</a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
<!--Timeline items end -->