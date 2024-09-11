// Header section
const header = document.createElement('header');

const logo = document.createElement('img');
logo.src = 'path/to/logo.png';
logo.alt = 'Website Logo';
header.appendChild(logo);

const categories = document.createElement('nav');
const categoriesList = document.createElement('ul');
const categoriesItems = ['About', 'Resume', 'Portfolio', 'Offerings', 'Contact'];

categoriesItems.forEach(item => {
  const listItem = document.createElement('li');
  const link = document.createElement('a');
  link.href = `#${item.toLowerCase()}`;
  link.textContent = item;
  listItem.appendChild(link);
  categoriesList.appendChild(listItem);
});

categories.appendChild(categoriesList);
header.appendChild(categories);

// Main section
const main = document.createElement('main');

const imageSection = document.createElement('section');
const image = document.createElement('img');
image.src = 'path/to/image.png';
image.alt = 'Image Description';
imageSection.appendChild(image);
main.appendChild(imageSection);

const bulletPointsSection = document.createElement('section');
const bulletPoints = document.createElement('ul');
const bulletPointItems = ['Offering 1', 'Offering 2', 'Offering 3'];

bulletPointItems.forEach(item => {
  const listItem = document.createElement('li');
  listItem.textContent = item;
  bulletPoints.appendChild(listItem);
});

bulletPointsSection.appendChild(bulletPoints);
main.appendChild(bulletPointsSection);

// Footer section
const footer = document.createElement('footer');

const column1 = document.createElement('div');
const column1List = document.createElement('ul');
const column1Items = ['Contact', 'Social Media', 'Blog'];

column1Items.forEach(item => {
  const listItem = document.createElement('li');
  listItem.textContent = item;
  column1List.appendChild(listItem);
});

column1.appendChild(column1List);
footer.appendChild(column1);

const column2 = document.createElement('div');
const column2List = document.createElement('ul');
const column2Items = ['Portfolio 1', 'Portfolio 2', 'Portfolio 3'];

column2Items.forEach(item => {
  const listItem = document.createElement('li');
  listItem.textContent = item;
  column2List.appendChild(listItem);
});

column2.appendChild(column2List);
footer.appendChild(column2);

const column3 = document.createElement('div');
const column3List = document.createElement('ul');
const column3Items = ['Offering 4', 'Offering 5', 'Offering 6'];

column3Items.forEach(item => {
  const listItem = document.createElement('li');
  listItem.textContent = item;
  column3List.appendChild(listItem);
});

column3.appendChild(column3List);
footer.appendChild(column3);

// Styling
header.style.backgroundColor = 'black';
logo.style.width = '100px';
logo.style.height = '100px';
categoriesList.style.display = 'flex';
categoriesList.style.listStyle = 'none';
categoriesList.style.margin = '0';
categoriesList.style.padding = '0';
categoriesList.style.justifyContent = 'space-between';
categoriesList.style.alignItems = 'center';
categoriesList.style.width = '50%';

main.style.display = 'flex';
main.style.flexDirection = 'column';
main.style.alignItems = 'center';
image.style.width = '100%';
bulletPoints.style.listStyle = 'none';
bulletPoints.style.margin = '0';
bulletPoints.style.padding = '0';

footer.style.display = 'flex';
footer.style.justifyContent = 'space-between';
footer.style.alignItems = 'flex-start';

column1List.style.listStyle = 'none';
column1List.style.margin = '0';
column1List.style.padding = '0';

column2List.style.listStyle = 'none';
column
