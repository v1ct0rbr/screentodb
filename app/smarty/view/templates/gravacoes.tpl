
{include file="../includes/header.tpl" }
{include file="../includes/sidemenu.tpl" }


        <main class="app-main"> <!--begin::App Content Header-->
            <div class="app-content"> <!--begin::Container-->
            {include file="../includes/pagetitle.tpl" }
                <div class="container-fluid"> <!--begin::Row-->
              
                
                
                <div class="row g-4">
                        <div class="col-12">
                        <div class="card mb-4">
                        <div class="card-header">
                            <h3 class="card-title">Bordered Table</h3>
                        </div> <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">#</th>
                                        <th>Task</th>
                                        <th>Progress</th>
                                        <th style="width: 40px">Label</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="align-middle">
                                        <td>1.</td>
                                        <td>Update software</td>
                                        <td>
                                            <div class="progress progress-xs">
                                                <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                                            </div>
                                        </td>
                                        <td><span class="badge text-bg-danger">55%</span></td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td>2.</td>
                                        <td>Clean database</td>
                                        <td>
                                            <div class="progress progress-xs">
                                                <div class="progress-bar text-bg-warning" style="width: 70%"></div>
                                            </div>
                                        </td>
                                        <td> <span class="badge text-bg-warning">70%</span> </td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td>3.</td>
                                        <td>Cron job running</td>
                                        <td>
                                            <div class="progress progress-xs progress-striped active">
                                                <div class="progress-bar text-bg-primary" style="width: 30%"></div>
                                            </div>
                                        </td>
                                        <td> <span class="badge text-bg-primary">30%</span> </td>
                                    </tr>
                                    <tr class="align-middle">
                                        <td>4.</td>
                                        <td>Fix and squish bugs</td>
                                        <td>
                                            <div class="progress progress-xs progress-striped active">
                                                <div class="progress-bar text-bg-success" style="width: 90%"></div>
                                            </div>
                                        </td>
                                        <td> <span class="badge text-bg-success">90%</span> </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div> <!-- /.card-body -->
                        <div class="card-footer clearfix">
                            <ul class="pagination pagination-sm m-0 float-end">
                                <li class="page-item"> <a class="page-link" href="#">«</a> </li>
                                <li class="page-item"> <a class="page-link" href="#">1</a> </li>
                                <li class="page-item"> <a class="page-link" href="#">2</a> </li>
                                <li class="page-item"> <a class="page-link" href="#">3</a> </li>
                                <li class="page-item"> <a class="page-link" href="#">»</a> </li>
                            </ul>
                        </div>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </main> <!--end::App Main--> <!--begin::Footer-->

{include file="../includes/footer.tpl" js1="page-home"}