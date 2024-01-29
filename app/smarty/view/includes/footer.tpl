

    <footer class="app-footer"> <!--begin::To the end-->
            <div class="float-end d-none d-sm-inline"><a href="https://victorqueiroga.com" target="_blank"> Victor Queiroga</a></div> <!--end::To the end--> <!--begin::Copyright--> <strong>
                Copyright &copy; 2014-2024&nbsp;
                
            </strong>
            All rights reserved.
            <!--end::Copyright-->
        </footer> <!--end::Footer-->
    </div> <!--end::App Wrapper--> <!--begin::Script--> <!--begin::Third Party Plugin(OverlayScrollbars)-->

    <script src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.3.0/browser/overlayscrollbars.browser.es6.min.js" integrity="sha256-H2VM7BKda+v2Z4+DRy69uknwxjyDRhszjXFhsL4gD3w=" crossorigin="anonymous"></script> <!--end::Third Party Plugin(OverlayScrollbars)--><!--begin::Required Plugin(popperjs for Bootstrap 5)-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha256-whL0tQWoY1Ku1iskqPFvmZ+CHsvmRWx/PIoEvIeWh4I=" crossorigin="anonymous"></script> <!--end::Required Plugin(popperjs for Bootstrap 5)--><!--begin::Required Plugin(Bootstrap 5)-->
   
    <script src="/vendor/twbs/bootstrap/dist/js/bootstrap.bundle.min.js"></script> <!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->
    
    <script src="/libs/adminlte/js/adminlte.min.js"></script> <!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->
    {if isset($js1)}<script type="text/javascript" src="{$APP_PATH}/assets/js/{$js1}.js"></script>{/if}
    {if isset($js2)}<script type="text/javascript" src="{$APP_PATH}/assets/js/{$js2}.js"></script>{/if}
    {if isset($js3)}<script type="text/javascript" src="{$APP_PATH}/assets/js/{$js3}.js"></script>{/if}
    <script>
        const SELECTOR_SIDEBAR_WRAPPER = ".sidebar-wrapper";
        const Default = {
            scrollbarTheme: "os-theme-light",
            scrollbarAutoHide: "leave",
            scrollbarClickScroll: true,
        };
        document.addEventListener("DOMContentLoaded", function() {
            const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
            if (
                sidebarWrapper &&
                typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== "undefined"
            ) {
                OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
                    scrollbars: {
                        theme: Default.scrollbarTheme,
                        autoHide: Default.scrollbarAutoHide,
                        clickScroll: Default.scrollbarClickScroll,
                    },
                });
            }
        });
    </script> <!--end::OverlayScrollbars Configure--> <!--begin::Bootstrap Tooltips-->
    <script>
        const tooltipTriggerList = document.querySelectorAll(
            '[data-bs-toggle="tooltip"]',
        );
        const tooltipList = [...tooltipTriggerList].map(
            (tooltipTriggerEl) => new bootstrap.Tooltip(tooltipTriggerEl),
        );
    </script> <!--end::Bootstrap Tooltips--> <!--begin::Bootstrap Toasts-->
    <script>
        const toastTriggerList = document.querySelectorAll(
            '[data-bs-toggle="toast"]',
        );
        toastTriggerList.forEach((btn) => {
            btn.addEventListener("click", (event) => {
                event.preventDefault();
                const toastEle = document.getElementById(
                    btn.getAttribute("data-bs-target"),
                );
                const toastBootstrap = bootstrap.Toast.getOrCreateInstance(toastEle);
                toastBootstrap.show();
            });
        });
    </script> <!--end::Bootstrap Toasts--> <!--end::Script-->

</body>
</html>