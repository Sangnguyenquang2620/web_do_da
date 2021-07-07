<?php
require_once 'helpers/Helper.php';
?>
<div class="container">
     <div class="row">
          <div class="col-12" style="">
               <b><p style="color: #00FFFF; background-color: #20410E; text-align: center;height: 60px; padding-top: 10px; font-size: 24px" >Thanh toán</p></b>
          </div>
     </div>
    <form action="" method="POST">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <h5 style="color: #20410E; background-color: #00FFFF; text-align: center;height: 60px;margin-top: 15px; padding-top: 10px; font-size: 24px"  class="center-align">Thông tin khách hàng</h5>
                <div style="margin-top: 15px" class="form-group">
                    <b><label>Họ tên khách hàng</label></b>
                    <input type="text" name="fullname" value="" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <b><label>Địa chỉ</label></b>
                    <input type="text" name="address" value="" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <b><label>Số điện thoại</label></b>
                    <input type="number" min="0" name="mobile" value="" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <b><label>Email</label></b>
                    <input type="email" min="0" name="email" value="" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <b><label>Ghi chú thêm</label></b>
                    <textarea name="note" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <b><label>Chọn phương thức thanh toán</label></b> <br />
                    <input type="radio" name="method" value="0" /> Thanh toán trực tuyến <br />
                    <input type="radio" name="method" checked value="1" /> COD (dựa vào địa chỉ của bạn) <br />
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <b><h5 style="color: #20410E; background-color: #00FFFF; text-align: center;height: 60px;margin-top: 15px; padding-top: 10px; font-size: 24px"  class="center-align">Thông tin đơn hàng của bạn</h5></b>
              <?php
              //biến lưu tổng giá trị đơn hàng
              $total = 0;
              if (isset($_SESSION['cart'])):
                ?>
                  <table style="margin-top: 20px" border="2" class="table table-striped">
                      <tbody>
                      <tr>
                          <th width="40%">Tên sản phẩm</th>
                          <th width="12%">Số lượng</th>
                          <th>Giá</th>
                          <th>Thành tiền</th>
                      </tr>
                      <?php foreach ($_SESSION['cart'] AS $product_id => $cart):
                        $product_link = 'san-pham/' . Helper::getSlug($cart['name']) . "/$product_id";
                        ?>
                          <tr>
                              <td>
                                <?php if (!empty($cart['avatar'])): ?>
                                    <img class="product-avatar img-responsive"
                                         src="../backend/assets/uploads/<?php echo $cart['avatar']; ?>" width="60"/>
                                <?php endif; ?>
                                  <div class="content-product">
                                      <b><a style="color: #0069D9" href="<?php echo $product_link; ?>" class="content-product-a">
                                              <?php echo $cart['name']; ?>
                                           </a></b>
                                  </div>
                              </td>
                              <td>
                              <span class="product-amount">
                                  <?php echo $cart['quantity']; ?>
                              </span>

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
                                  $total += $price_total;
                                  ?>
                                      <?php echo number_format($price_total, 0, '.', '.') ?>
                              </span></b>
                                   <b style="color: goldenrod"><span>VNĐ</span></b>
                              </td>
                              </td>
                          </tr>
                      <?php endforeach; ?>
                      <tr>
                          <td colspan="5" class="product-total">
                              Tổng giá trị đơn hàng:
                              <b><span style="color: red" class="product-price">
                                <?php echo number_format($total, 0, '.', '.') ?>
                            </span>
                              </b>
                                   <b style="color: goldenrod"><span>VNĐ</span></b>
                          </td>
                      </tr>
                      </tbody>
                  </table>
              <?php endif; ?>

            </div>
        </div>
        <input type="submit" name="submit" value="Thanh toán" class="btn btn-primary">
        <a href="gio-hang-cua-ban.html" class="btn btn-secondary">Về trang giỏ hàng</a>
    </form>
</div>