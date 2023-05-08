<?php
session_start();
require_once ('../../csdl/helper.php');
if(!isset($_SESSION['user_id'])){
header('location:../index.php');	
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Quản lý Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../../style/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../style/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="../../style/css/fullcalendar.css" />
<link rel="stylesheet" href="../../style/css/matrix-style.css" />
<link rel="stylesheet" href="../../style/css/matrix-media.css" />
<link href="../font-awesome/css/fontawesome.css" rel="stylesheet" />
<link href="../font-awesome/css/all.css" rel="stylesheet" />
<link rel="stylesheet" href="../../style/css/jquery.gritter.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<div id="header">
  <h1><a href="dashboard.html">Gym Admin</a></h1>
</div>

<?php include '../includes/topheader.php'?>
<?php $page='suathongbao'; include '../includes/sidebar.php'?>
    <?php
        $id=$_GET['id'];
        $qry= "select * from thongbao where id='$id'";
        $result=mysqli_query($con,$qry);
        while($row=mysqli_fetch_array($result)){
    ?> 

<div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.php" title="Go to Home" class="tip-bottom"><i class="fas fa-home"></i>Trang chủ</a> <a href="#" class="tip-bottom">thông báo</a> <a href="#" class="current">Quản lý thông báo</a> </div>
  <h1>Bảng chi tiết thông báo</h1>
</div>
<div class="container-fluid">
  <hr>
  <div class="row-fluid" style="display: flex;
  justify-content: center;
  align-items: center;">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="fas fa-align-justify"></i> </span>
          <h5>Thông tin thông báo</h5>
        </div>
        <div class="widget-content nopadding">
          <form method="POST" action="xuly.php" class="form-horizontal">
            <div class="control-group">
             <div class="controls">
                <select class="form-control" name="admin" id="admin">
                    <option value="">Chọn</option>
                    <?php
                        $sql = 'select * from admin';
                        $list = executeResult($sql);
                    foreach($list as $item){
                    echo '<option value="'.$item['user_id'].'">'.$item['name'].'</option>';
                    }
                    ?>
                  </select>
                </div>
            <div class="controls">
            <input type="text" class="span11" name="Noidung" value='<?php echo $row['Noidung']; ?>' required />
            </div>
            <div class="form-actions text-center">
             <input type="hidden" name="id" value="<?php echo $row['id'];?>">
              <button type="submit" class="btn btn-success">Sửa thông tin dịch vụ</button>
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
  function goPage (newURL) {
      if (newURL != "") {
          if (newURL == "-" ) {
              resetMenu();            
          }         
          else {  
            document.location.href = newURL;
          }
      }
  }
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
</body>
</html>
