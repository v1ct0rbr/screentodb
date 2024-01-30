{include file="../includes/header.tpl" }
{include file="../includes/sidemenu.tpl" }


<main class="app-main">
    <!--begin::App Content Header-->
    <div class="app-content">
        <!--begin::Container-->
        {include file="../includes/pagetitle.tpl" }
        <div class="container-fluid">
            <!--begin::Row-->

            {* {include file="../includes/messages.tpl" } *}

            {include file="../includes/messages.tpl" }

            <div class="row g-4">
                <div class="col-12">
                    <form class="form-inline" action="#" method="POST">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h3 class="card-title">Cadastro</h3>
                            </div> <!-- /.card-header -->
                            <div class="card-body">

                                <div class="form-group">
                                    <label for="name">Nome</label>
                                    <input type="text" class="form-control" name="name" id="name"
                                        value="{$category->getName()}" />
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description"
                                        name="description">{$category->getDescription()}</textarea>
                                </div>


                            </div>
                            <div class="card-footer">
                                <button class="btn btn-primary" type="submit">Enviar</button>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="col-12">
                    <div class="card mb-4">
                        <div class="card-header">
                            <h3 class="card-title">Listagem</h3>
                        </div> <!-- /.card-header -->
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>

                                        <th>Nome</th>
                                        <th>Descrição</th>
                                        <th style="width: 40px">opções</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {foreach from=$categories item="cat"}
                                        <tr class="align-middle">
                                            <td>{$cat.name}</td>
                                            <td>{$cat.description}</td>

                                            <td>x</td>
                                        </tr>
                                    {foreachelse}
                                        <tr class="align-middle">
                                            <td colspan="3">Não há registros</td>
                                        </tr>
                                    {/foreach}

                                </tbody>
                            </table>
                        </div> <!-- /.card-body -->
                        {* <div class="card-footer clearfix">
                                <ul class="pagination pagination-sm m-0 float-end">
                                    <li class="page-item"> <a class="page-link" href="#">«</a> </li>
                                    <li class="page-item"> <a class="page-link" href="#">1</a> </li>
                                    <li class="page-item"> <a class="page-link" href="#">2</a> </li>
                                    <li class="page-item"> <a class="page-link" href="#">3</a> </li>
                                    <li class="page-item"> <a class="page-link" href="#">»</a> </li>
                                </ul>
                            </div> *}
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!--end::App Main-->
<!--begin::Footer-->

{include file="../includes/footer.tpl" js1="page-categories"}