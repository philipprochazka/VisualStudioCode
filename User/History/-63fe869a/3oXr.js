fetch('social-list.html')
  .then(res => res.text())
  .then(text => {
    let socialList = document.querySelector('.social-list');
    socialList.innerHTML = text;

    // Add event listeners to each link in the social list
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

    // Get all links in the social list
    const socLinks = document.querySelectorAll('.soc-link a');

    // Loop through each link and compare its URL to the current page URL
    socLinks.forEach(link => {
      if (link.href === currentPageUrl) {
        // Add a CSS class to the link if its URL matches the current page URL
        link.classList.add('active');
      } else {
        // Remove the CSS class from the link if its URL does not match the current page URL
        link.classList.remove('active');
      }
    });
  });