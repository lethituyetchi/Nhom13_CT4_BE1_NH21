<?php include "header.php" ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Project Add</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Project Add</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <form action="editp.php?type_id=<?php echo $_GET['type_id']; ?>" method="post" enctype="multipart/form-data">
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">General</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div><?php
                  if (isset($_GET['type_id'])) :
                    $getTypeByID = $type->getTypeByID($_GET['type_id']);
                    foreach ($getTypeByID as $value) :  ?>
                <div class="card-body">
                  <div class="form-group">
                    <label for="inputName"></label>
                    <input type="text" id="inputName" class="form-control" name="type_name" value="<?php echo $value['type_name']; ?>">
                  </div>
                </div>
            <?php
                    endforeach;
                  endif;
            ?>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <input type="submit" name="submit" value="Save change!!" class="btn btn-success float-right">
        </div>
      </div>
    </section>
  </form>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include "footer.html" ?>