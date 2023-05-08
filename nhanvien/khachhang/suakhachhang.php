<?php
session_start();
require_once ('../../csdl/helper.php');
if(($_SESSION['congviec']) != "Quản lý" AND $_SESSION['congviec'] != "Thu ngân"){
header('location:../index.php');	
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gym System Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../../style/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../style/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="../../style/css/fullcalendar.css" />
<link rel="stylesheet" href="../../style/css/matrix-style.css" />
<link rel="stylesheet" href="../../style/css/matrix-media.css" />
<link href="../../font-awesome/css/fontawesome.css" rel="stylesheet" />
<link href="../../font-awesome/css/all.css" rel="stylesheet" />
<link rel="stylesheet" href="../../style/css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<style>
  .st{
    display : none;
  }
</style>
<body>
<div id="header">
  <h1><a href="dashboard.html">Gym Admin</a></h1>
</div>

<?php include '../includes/topheader.php'?>

<?php $page='khachhang-sua'; include '../includes/sidebar.php'?>


<?php
$id=$_GET['id'];
$qry= "select * from khachhang k left join dichvu d on k.id = d.id where user_id='$id'";
$result=mysqli_query($con,$qry);
while($row=mysqli_fetch_array($result)){
?> 
<div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="fas fa-home"></i>Trang chủ</a> <a href="#" class="tip-bottom">Quản lý khách hàng</a> <a href="#" class="current">Sửa khách hàng</a> </div>
  <h1>Cập nhật thông tin khách hàng</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="fas fa-align-justify"></i> </span>
          <h5>Thông tin cá nhân</h5>
        </div>
        <div class="widget-content nopadding">

          <form action="xuly.php" method="POST" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">Họ và tên :</label>
              <div class="controls">
                <input type="text" class="span11" style="width:350px" name="Hoten" value='<?php echo $row['Hoten']; ?>' />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Tài khoản :</label>
              <div class="controls">
                <input type="text" class="span11" name="Taikhoan" style="width:350px" value='<?php echo $row['Taikhoan']; ?>' />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Mật khẩu :</label>
              <div class="controls">
                <input type="text" class="span11" style="width:350px" name="Matkhau" value='<?php echo $row['Matkhau']; ?>'  />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Giới tính :</label>
              <div class="controls">
              <select name="Gioitinh" required="required" id="select" style="width:350px">
                  <option value="Male" selected="selected">Nam</option>
                  <option value="Female">Nữ</option>
                  <option value="Khác">Khác</option>
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">Ngày đăng ký :</label>
              <div class="controls">
                <input type="date" name="Ngaybd" readonly style="width:350px" class="span11" value='<?php echo $row['Ngaybd']; ?>' />
                <span class="help-block"></span></div>
            </div> 
        </div>
        <div class="widget-content nopadding">
          <div class="form-horizontal">
        </div>
        <div class="widget-content nopadding">
          <div class="form-horizontal">
            <div class="control-group">
            </div>
          </div>
          </div>
        </div>
      </div>
    </div>
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="fas fa-align-justify"></i> </span>
          <h5>Thông tin liên hệ</h5>
        </div>
        <div class="widget-content nopadding">
          <div class="form-horizontal">
            <div class="control-group">
              <label for="normal" class="control-label">Số điện thoại</label>
              <div class="controls">
                <input type="number" id="mask-phone" style="width:350px" name="Sdt" value='<?php echo $row['Sdt']; ?>' class="span8 mask text">
                </div>
            </div>
            <div class="control-group">
              <label class="control-label">Địa chỉ :</label>
              <div class="controls">
                <input type="text" class="span11" name="Diachi" style="width:350px" value='<?php echo $row['Diachi']; ?>' />
              </div>
            </div>
          </div>

              <div class="widget-title"> <span class="icon"> <i class="fas fa-align-justify"></i> </span>
          <h5>Chi tiết dịch vụ</h5>
        </div>
        <div class="widget-content nopadding">
          <div class="form-horizontal">
            
            
            <div class="control-group">
              <label class="control-label">Dịch vụ đang sử dụng</label>
              <div class="controls">
                <div class="input-append">
                  <input type="text" value='<?php echo $row['Tendv']; ?>' name="id1" readonly style="width:350px" class="span11">
                  </div>
              </div>
            </div>           
            <div class="form-actions text-center">
             <input type="hidden" name="id" value="<?php echo $row['user_id'];?>">
              <button type="submit" class="btn btn-success">Cập nhật</button>
            </div>
            </form>

          </div>
<?php
}
?>
        </div>
        </div>
      </div>
  </div>
  
</div></div>


<script src="../../style/js/excanvas.min.js"></script> 
<script src="../../style/js/jquery.min.js"></script> 
<script src="../../style/js/jquery.ui.custom.js"></script> 
<script src="../../style/js/bootstrap.min.js"></script> 
<script src="../../style/js/jquery.flot.min.js"></script> 
<script src="../../style/js/jquery.flot.resize.min.js"></script> 
<script src="../../style/js/jquery.peity.min.js"></script> 
<script src="../../style/js/fullcalendar.min.js"></script> 
<script src="../../style/js/matrix.js"></script> 
<script src="../../style/js/matrix.dashboard.js"></script> 
<script src="../../style/js/jquery.gritter.min.js"></script> 
<script src="../../style/js/matrix.interface.js"></script> 
<script src="../../style/js/matrix.chat.js"></script> 
<script src="../../style/js/jquery.validate.js"></script> 
<script src="../../style/js/matrix.form_validation.js"></script> 
<script src="../../style/js/jquery.wizard.js"></script> 
<script src="../../style/js/jquery.uniform.js"></script> 
<script src="../../style/js/select2.min.js"></script> 
<script src="../../style/js/matrix.popover.js"></script> 
<script src="../../style/js/jquery.dataTables.min.js"></script> 
<script src="../../style/js/matrix.tables.js"></script> 

<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>