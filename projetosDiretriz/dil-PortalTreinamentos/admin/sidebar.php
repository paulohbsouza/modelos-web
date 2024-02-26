<!-- Sidebar -->

<nav>

    <div class="sidebar">
        <div class="logo-details">
            <i class='material-icons'>info</i>
            <span class="logo_name">Portal de Treinamentos</span>
        </div>


        <ul class="nav-links">
            <li>
                <a href="#">
                    <i class='material-icons'>dashboard</i>
                    <span class="link_name">Dashboard</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Dashboard</a></li>
                </ul>
            </li>

            <li>
                <div class="iocn-link">
                    <a href="#">
                        <i class='material-icons'>school</i>
                        <span class="link_name">Treinamentos</span>
                    </a>
                    <i class='material-icons arrow'>expand_more</i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="#">Treinamentos</a></li>
                    <li><a href="#">HTML & CSS</a></li>
                    <li><a href="#">JavaScript</a></li>
                    <li><a href="#">PHP & MySQL</a></li>
                </ul>
            </li>

            <li>
                <div class="iocn-link">
                    <a href="#">
                        <i class='material-icons'>library_books</i>
                        <span class="link_name">Posts</span>
                    </a>
                    <i class='material-icons arrow'>expand_more</i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="#">Posts</a></li>
                    <li><a href="#">Web Desgin</a></li>
                    <li><a href="#">Login Form</a></li>
                    <li><a href="#">Card Design</a></li>
                </ul>
            </li>

            <li>
                <a href="#">
                    <i class='material-icons'>pie_chart</i>
                    <span class="link_name">Análises</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Análises</a></li>
                </ul>
            </li>

            <li>
                <a href="#">
                    <i class='material-icons'>equalizer</i>
                    <span class="link_name">Gráficos</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Gráficos</a></li>
                </ul>
            </li>

            <li>
                <div class="iocn-link">
                    <a href="#">
                        <i class='material-icons'>extension</i>
                        <span class="link_name">Plugins</span>
                    </a>
                    <i class='material-icons arrow'>expand_more</i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="#">Plugins</a></li>
                    <li><a href="#">UI Face</a></li>
                    <li><a href="#">Pigments</a></li>
                    <li><a href="#">Box Icons</a></li>
                </ul>
            </li>

            <li>
                <a href="#">
                    <i class='material-icons'>explore</i>
                    <span class="link_name">Explorar</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Explorar</a></li>
                </ul>
            </li>

            <li>
                <a href="#">
                    <i class='material-icons'>history</i>
                    <span class="link_name">Histórico</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Histórico</a></li>
                </ul>
            </li>

            <li>
                <a href="#">
                    <i class='material-icons'>settings</i>
                    <span class="link_name">Configurações</span>
                </a>
                <ul class="sub-menu blank">
                    <li><a class="link_name" href="#">Configurações</a></li>
                </ul>
            </li>

            <li>
                <!--
                <div class="profile-details">
                    <div class="profile-content">
                        <img src="img/profile.jpg" alt="profile">
                    </div>
                    <div class="name-job">
                        <div class="profile_name">Karen Shahi</div>
                        <div class="job">Web Desginer</div>
                    </div>
                    <i class='bx bx-log-out'></i>
                </div>-->
            </li>

        </ul>
    </div>
    <!--
    <section class="home-section">
        <div class="home-content">
            <i class='bx bx-menu'></i>
            <span class="text">Drop Drown Sidebar</span>
        </div>
    </section>
-->
    <script>
        let arrow = document.querySelectorAll(".arrow");
        for (let i = 0; i < arrow.length; i++) {
            arrow[i].addEventListener("click", (e) => {
                let arrowParent = e.target.parentElement.parentElement;
                arrowParent.classList.toggle("showMenu");
            });
        }

        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".icon-menu");
        console.log(sidebarBtn);
        sidebarBtn.addEventListener("click", () => {
            sidebar.classList.toggle("close");
        });
    </script>

</nav>