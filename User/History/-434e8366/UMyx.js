fetch('navbar.html')
  .then(res => res.text())
  .then(text => {
    let oldelem = document.querySelector("script#replace_with_navbar");
    let newelem = document.createElement("div");
    newelem.innerHTML = text;
    oldelem.parentNode.replaceChild(newelem,oldelem);

    // Add event listeners to each link in the navigation menu
    let links = document.querySelectorAll(".nav-link");
    links.forEach(link => {
      link.addEventListener("click", function() {
        // Remove the active class from all links
        links.forEach(link => {
          link.classList.remove("active");
        });

        // Add the active class to the clicked link
        this.classList.add("active");
      });
    });
  });