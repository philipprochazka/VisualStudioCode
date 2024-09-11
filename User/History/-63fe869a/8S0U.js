// Define social links as an array of objects, where each object contains a name and URL
const socialLinks = [
    { name: "Twitter", url: "#" },
    { name: "LinkedIn", url: "#" },
    { name: "GitHub", url: "#" },
    { name: "Stack Overflow", url: "#" },
    { name: "CodePen", url: "#" }
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
    socialLinkIcon.classList.add("fab", "fa-github-alt", "fa-flip", `fa-${socialLink.name.toLowerCase().replace(/\s+/g, '-')}`, "fa-flip");
  
    // Add the social link icon to the social link anchor
    socialLinkAnchor.appendChild(socialLinkIcon);
  
    // Add the social link anchor to the social link item
    socialLinkItem.appendChild(socialLinkAnchor);
  
    // Add the social link item to the social list
    socialList.appendChild(socialLinkItem);
  }
  
  // Add the social list to the social links container
  socialLinksContainer.appendChild(socialList);