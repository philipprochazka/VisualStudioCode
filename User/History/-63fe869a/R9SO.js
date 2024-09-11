// Define social links as an array of objects, where each object contains a name, URL, and icon path
const socialLinks = [
    { name: "Twitter", url: "#" },
    { name: "LinkedIn", url: "#" },
    { name: "GitHub", url: "https://github.com/your-username", iconPath: M186.1 328.7c0 20.9-10.9 55.1-36.7 55.1s-36.7-34.2-36.7-55.1 10.9-55.1 36.7-55.1 36.7 34.2 36.7 55.1zM480 278.2c0 31.9-3.2 65.7-17.5 95-37.9 76.6-142.1 74.8-216.7 74.8-75.8 0-186.2 2.7-225.6-74.8-14.6-29-20.2-63.1-20.2-95 0-41.9 13.9-81.5 41.5-113.6-5.2-15.8-7.7-32.4-7.7-48.8 0-21.5 4.9-32.3 14.6-51.8 45.3 0 74.3 9 108.8 36 29-6.9 58.8-10 88.7-10 27 0 54.2 2.9 80.4 9.2 34-26.7 63-35.2 107.8-35.2 9.8 19.5 14.6 30.3 14.6 51.8 0 16.4-2.6 32.7-7.7 48.2 27.5 32.4 39 72.3 39 114.2zm-64.3 50.5c0-43.9-26.7-82.6-73.5-82.6-18.9 0-37 3.4-56 6-14.9 2.3-29.8 3.2-45." },
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
  
    // Create an <svg> element for the social link icon
    const socialLinkIcon = document.createElementNS("http://www.w3.org/2000/svg", "svg");
    socialLinkIcon.setAttribute("xmlns", "http://www.w3.org/2000/svg");
    socialLinkIcon.setAttribute("viewBox", "0 0 512 512");
    socialLinkIcon.classList.add("svg-inline--fa", `fa-${socialLink.name.toLowerCase
    }