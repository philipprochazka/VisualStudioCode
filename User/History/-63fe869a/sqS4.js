// Define an array of objects containing the data for each social link
const socialLinksData = [
  {
    id: 'twitter-link',
    href: 'https://twitter.com/ProchazkaPhilip',
    iconClass: 'fab fa-twitter fa-fw'
  },
  {
    id: 'linkedin-link',
    href: 'https://www.linkedin.com/in/philip-proch%C3%A1zka-4a48b9124',
    iconClass: 'fab fa-linkedin-in fa-fw'
  },
  {
    id: 'github-link',
    href: 'https://github.com/philipprochazka?tab=repositories',
    iconClass: 'fab fa-github-alt fa-fw'
  },
  {
    id: 'stack-overflow-link',
    href: 'https://stackoverflow.com/users/21684763/philip-proch%c3%a1zka',
    iconClass: 'fab fa-stack-overflow fa-fw'
  },
  {
    id: 'codepen-link',
    href: '#',
    iconClass: 'fab fa-codepen fa-fw'
  }
];

// Get the element to which we want to append the social-links list
const socialListContainer = document.getElementById('social-list-container');

// Create an unordered list element
const socialList = document.createElement('ul');
socialList.classList.add('social-list', 'list-inline', 'py-2', 'mx-auto');

// Loop through the socialLinksData array, creating a list item and link for each
socialLinksData.forEach(socialLinkData => {
  const listItem = document.createElement('li');
  listItem.classList.add('list-inline-item');

  const link = document.createElement('a');
  link.classList.add('soc-link');
  link.href = socialLinkData.href;

  const icon = document.createElement('i');
  icon.classList.add(socialLinkData.iconClass);

  link.appendChild(icon);
  listItem.appendChild(link);
  socialList.appendChild(listItem);
});

// Append the social-links list to the container element
socialListContainer.appendChild(socialList);