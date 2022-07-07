const toggle = document.getElementById('toggle');
const navbar = document.getElementById('navbar');
const footer = document.getElementById('footer');
const navbarhd = document.getElementById('navbarhd');
const dashbg = document.getElementById('dashbg');
const dashcardbrdr = document.getElementById('dashcardbrdr');
const dashcardbrdr2 = document.getElementById('dashbrdr2');
const dashcard = document.getElementById('dashcard');
const dashcard2 = document.getElementById('dashcard2');
const reghd = document.getElementById('reghd');
const sidebar = document.getElementById('sidebar');
const span1 = document.getElementById('span1');
const span2 = document.getElementById('span2');
const menuicon1 = document.getElementById('menuicon1');
const menuicon2 = document.getElementById('menuicon2');
const body = document.body;
const bgcolor = "#343a40";
const themecolor = "#fea500";



toggle.addEventListener('input', e => {
    const isChecked = e.target.checked;
    console.log("me in");
    if (isChecked) {
        navbar.className = "navbar navbar-expand-lg px-4 py-2 bg-dark shadow";
        footer.className = "footer bg-dark shadow align-self-end py-3 px-xl-5 w-100";
        navbarhd.style = "color:#fea500;margin-right: 64px;";
        dashbg.style = "background-color: black"
        dashcardbrdr.style = "border: 4px solid #fea500;padding: 0;border-radius: 19px 19px 0 0; "
        dashcardbrdr2.style = "border: 4px solid #fea500;padding: 0;border-radius: 19px 19px 0 0;"
        dashcard.style = "background-color:#343a40; color:white"
        dashcard2.style = "background-color:#343a40; "
        reghd.style = "color:#fea500;"
        sidebar.style = "background-color:#343a40; color:#fea500"
        span1.style = "color: white"
        span2.style = "color: white"
        menuicon1.style = "color: white"
        menuicon2.style = "color: white"

    } else {
        //body.classList.remove('dark-theme');
        navbar.className = "navbar navbar-expand-lg px-4 py-2 bg-light shadow";
        footer.className = "footer bg-light shadow align-self-end py-3 px-xl-5 w-100";
        navbarhd.style = "color:black";
        dashbg.style = "background-color:#f8f9fb"
        dashcardbrdr.style = "border: 4px solid #fea500;padding: 0;border-radius: 19px 19px 0 0;"
        dashcardbrdr2.style = "border: 4px solid #fea500;padding: 0;border-radius: 19px 19px 0 0;"
        dashcard.style = "background-color:white; color:black"
        dashcard2.style = "background-color:white; "
        reghd.style = "color:black;"
        sidebar.style = "background-color:white; color:black"
        span1.style = "color: black"
        span2.style = "color: black"
        menuicon1.style = "color: black"
        menuicon2.style = "color: black"
    }
});