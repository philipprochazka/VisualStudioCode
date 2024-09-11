fetch('social-list.html')
  .then(res => res.text())
  .then(text => {
    let oldelem = document.querySelector("script#replace_with_social-list");
    let newelem = document.createElement("div");
    newelem.innerHTML = text;
    oldelem.parentNode.replaceChild(newelem,oldelem);

    // Add event listeners to each link in the navigation menu
    let links = document.querySelectorAll(".soc-link");
    links.forEach(link => {
      link.addEventListener("mouseenter", function() {
        this.classList.add("active");
      });
      link.addEventListener("mouseleave", function() {
        this.classList.remove("active");
      });
    });

    // Get the current page URL
    const currentPageUrl = window.location.href;

    // Get all links in the navigation menu
    const navLinks = document.querySelectorAll('.soc-link a');

    // Loop through each link and compare its URL to the current page URL
    navLinks.forEach(link => {
      if (link.href === currentPageUrl) {
        // Add a CSS class to the link if its URL matches the current page URL
        link.classList.add('active');
      } else {
        // Remove the CSS class from the link if its URL does not match the current page URL
        link.classList.remove('active');
      }
    });
  });