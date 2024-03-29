<?php include_once('././assets/layouts/header.php'); ?>
<?php include_once('././assets/layouts/siderbar.php'); ?>
<div class="container-fluid" style="padding-top:20px">
<h2>Thêm đọc giả</h2>
    <form action="index.php?controller=reader&action=insert" method="post">
        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Tên Đọc giả</label>
            <div class="col-sm-6">
                <select name="MaDK" class="form-control" aria-label="Default select example">
                    <?php
                        foreach($createcards as $createcard)
                        {
                            echo "<option value='".$createcard['MaDK']."' selected>".$createcard['HoTen']."</option>";
                        }
                    ?>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">AnhBarcode</label>
            <div class="col-sm-6">
                <input type="text" name="AnhBarcode" class="form-control" required="required">
            </div>
        </div>

        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Hạn sử dụng</label>
            <div class="col-sm-6">
            <input type="date" name="HSD" class="form-control" required="required">

            </div>
        </div>

        <div class="form-group row">
            <label for="inputEmail3" class="col-sm-2 col-form-label">Tình trạng</label>
            <div class="col-sm-6">
                <input type="text" name="TinhTrang" class="form-control" required="required">
            </div>
        </div>


<div class="form-group row">
    <div class="col-sm-5"></div>
    <label class="text-danger ml-2" for=""><?php echo (isset($_GET['result']) && $_GET['result'] == 'true') ? "Thành công" : "" ?></label>
    <label class="text-danger ml-2" for=""><?php echo (isset($_GET['result']) && $_GET['result'] == 'false') ? "Tài khoản bị trùng" : "" ?></label>
</div>

<div class="form-group row mx-auto">
    <div class="col-sm-2"></div>
    <div class="col-sm-6">
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-primary">Thêm</button>
            <a name="" id="" class="btn btn-primary ml-2" href="index.php?controller=reader" role="button">Thoát</a>
        </div>
    </div>
</div>
</form>
</div>
<?php include_once('././assets/layouts/footer.php'); ?>
