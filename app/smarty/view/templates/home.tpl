
{include file="../includes/header.tpl" }
{include file="../includes/sidemenu.tpl" }


        <main class="app-main"> <!--begin::App Content Header-->
            <div class="app-content"> <!--begin::Container-->
            {include file="../includes/pagetitle.tpl" }
                <div class="container-fluid"> <!--begin::Row-->
              
                
                
                <div class="row g-4">
                        <div class="col-12">
                            <form id="capture-form">
                                    <div class="card card-success card-outline mb-4"> <!--begin::Header-->
                                    <div class="card-header">
                                        <div class="card-title">Dados da captura</div>
                                    </div> <!--end::Header--> <!--begin::Body-->
                                    <div class="card-body">
                                        <div class="input-group mb-3"> <span class="input-group-text" id="basic-addon1">@</span> 
                                        <input type="text" class="form-control" placeholder="Nome de vídeo"  id="video-name"
                                        aria-label="Nome do vídeo" aria-describedby="basic-addon1"> </div>
                                    
                                        
                                        <div class="input-group"> <span class="input-group-text">Descrição</span> 
                                        <textarea id="video-description" class="form-control" aria-label="With textarea"></textarea> </div>
                                    </div> <!--end::Body--> <!--begin::Footer-->
                                    <div class="card-footer"> 
                                        <button type="submit" id="capture-btn" class="btn btn-success"><i class="nav-icon bi bi-record2"></i> Iniciar captura</button> 
                                    </div> <!--end::Footer-->
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main> <!--end::App Main--> <!--begin::Footer-->

{include file="../includes/footer.tpl" js1="page-home"}