var xhttp = new XMLHttpRequest();
fetch('navbar.html')
  .then(res => res.text())
  .then(text => {
    let oldelem = document.querySelector("script#replace_with_navbar");
    let newelem = document.createElement("div");
    newelem.innerHTML = text;
    oldelem.parentNode.replaceChild(newelem, oldelem);
    
    // Get the current page URL
    let currentUrl = window.location.href;
    
    // Loop through each navbar item and check if it matches the current URL
    let navbarItems = document.querySelectorAll('.navbar-nav .nav-link');
    for (let i = 0; i < navbarItems.length; i++) {
      let itemUrl = navbarItems[i].getAttribute('href');
      if (currentUrl.indexOf(itemUrl) !== -1) {
        navbarItems[i].classList.add('active');
        break;
      }
    }
  });