// Define social links as an array of objects, where each object contains a name, URL, and icon class
const socialLinks = [
    { name: "Twitter", url: "#", iconClass: "fab fa-twitter" },
    { name: "LinkedIn", url: "#", iconClass: "fab fa-linkedin" },
    { name: "GitHub", url: "https://github.com/your-username", iconClass: "fab fa-github" },
    { name: "Stack Overflow", url: "#", iconClass: "fab fa-stack-overflow" },
    { name: "CodePen", url: "#", iconClass: "fab fa-codepen" }
  ];
  
  // Get the container element where the social links list will be added
  const socialLinksContainer = document.getElementById("social-links-container");
  
  // Create a <ul> element to hold the social links
  const socialList = document.createElement("ul");
  socialList.classList.add("social-list", "list-inline", "py-2", "mx-auto");
  
  // Loop through the socialLinks array and create a <li> element for each social link
  for (let i = 0; i < socialLinks.length; i++) {
    const socialLink = socialLinks[i];
  
    // Create a <li> element for the social link
    const socialLinkItem = document.createElement("li");
    socialLinkItem.classList.add("list-inline-item");
  
    // Create an <a> element for the social link
    const socialLinkAnchor = document.createElement("a");
    socialLinkAnchor.href = socialLink.url;
    socialLinkAnchor.classList.add("soc-link");
    socialLinkAnchor.setAttribute("target", "_blank");
  
    // Create an <i> element for the social link icon
    const socialLinkIcon = document.createElement("i");
    socialLinkIcon.classList.add(socialLink.iconClass);
  
    // Append the social link icon to the anchor element
    socialLinkAnchor.appendChild(socialLinkIcon);
  
    // Append the anchor element to the list item element
    socialLinkItem.appendChild(socialLinkAnchor);
  
    // Append the list item element to the list element
    socialList.appendChild(socialLinkItem);
  }
  
  // Append the list element to the social links container
  socialLinksContainer.appendChild(socialList);
  