fetch('social-list.html')
  .then(res => res.text())
  .then(text => {
    let oldelem = document.querySelector("script#replace_with_social-list");
    let newelem = document.createElement("div");
    newelem.innerHTML = text;
    oldelem.parentNode.replaceChild(newelem, oldelem);

    // Add event listeners to each link in the social links list
    let links = document.querySelectorAll(".soc-link");
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

    // Get the current page URL
    const currentPageUrl = window.location.href;

    // Get all links in the social links list
    const socLinks = document.querySelectorAll('.soc-link a');

    // Loop through each link and compare its URL to the
