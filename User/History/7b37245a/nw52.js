const fs = require('fs');
const path = require('path');
const { exec } = require('child_process');

function init() {
  // Create required directories
  const directories = ['src', 'public'];
  directories.forEach((dir) => {
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir);
    }
  });

  // Create required files
  const files = [
    { name: 'index.html', content: '<html><head><title>My App</title></head><body><div id="root"></div></body></html>' },
    { name: 'src/index.js', content: 'import "bootstrap/dist/css/bootstrap.min.css";\nimport "fontawesome/css/all.min.css";\nimport "popper.js/dist/popper.min.js";\nimport "bootstrap/dist/js/bootstrap.min.js";\n' },
    { name: '.gitignore', content: 'node_modules\n.DS_Store\n' },
    { name: 'package.json', content: '{\n  "name": "my-app",\n  "version": "1.0.0",\n  "description": "",\n  "main": "src/index.js",\n  "scripts": {\n    "start": "webpack serve --mode development",\n    "build": "webpack --mode production"\n  },\n  "author": "",\n  "license": "ISC",\n  "dependencies": {\n    "bootstrap": "^5.3.0",\n    "fontawesome": "^5.15.4",\n    "popper.js": "^2.10.2"\n  },\n  "devDependencies": {\n    "webpack": "^5.65.0",\n    "webpack-cli": "^4.9.1",\n    "webpack-dev-server": "^4.6.0"\n  }\n}\n' }
  ];
  files.forEach((file) => {
    const filePath = path.join(file.name);
    if (!fs.existsSync(filePath)) {
      fs.writeFileSync(filePath, file.content);
    }
  });

  // Install required dependencies
  exec('npm install', (error, stdout, stderr) => {
    if (error) {
      console.error(`Error: ${error.message}`);
      return;
    }
    if (stderr) {
      console.error(`stderr: ${stderr}`);
      return;
    }
    console.log(`stdout: ${stdout}`);
  });

  console.log('Project initialized!');
}

init();
