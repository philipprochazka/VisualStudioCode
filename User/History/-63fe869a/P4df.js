const socialLinks = [
    { name: "Twitter", url: "#" },
    { name: "LinkedIn", url: "#" },
    { name: "GitHub", url: "#" },
    { name: "Stack Overflow", url: "#" },
    { name: "CodePen", url: "#" },
    { name: "Facebook", url: "#" }
    ];
  
  const socialLinksContainer = document.getElementById("social-links-container");
  
  const socialList = document.createElement("ul");
  socialList.classList.add("social-list", "list-inline", "py-2", "mx-auto");
  
  for (let i = 0; i < socialLinks.length; i++) {
    const socialLink = socialLinks[i];
  
    const socialLinkItem = document.createElement("li");
    socialLinkItem.classList.add("list-inline-item");
  
    const socialLinkAnchor = document.createElement("a");
    socialLinkAnchor.href = socialLink.url;
    socialLinkAnchor.classList.add("soc-link");
    socialLinkAnchor.setAttribute("target", "_blank");
  
    const socialLinkIcon = document.createElement("i");
    let iconClass = `fa-${socialLink.name.toLowerCase().replace(/\s+/g, '-')}`;
    if (iconClass === 'fa-github') {
      iconClass += '-alt';
    } else if (iconClass === 'fa-linkedin') {
      iconClass += '-in';
    }
} else if (iconClass === 'fa-facebook') {
    iconClass += '-f';
  }
    socialLinkIcon.classList.add("fab", "fa-alt", "fa-flip", iconClass, "fa-fw");
  
    socialLinkAnchor.appendChild(socialLinkIcon);
  
    socialLinkItem.appendChild(socialLinkAnchor);
  
    socialList.appendChild(socialLinkItem);
  }
  
  socialLinksContainer.appendChild(socialList);
  