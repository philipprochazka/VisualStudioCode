var canvas = document.createElement('canvas');
var context = canvas.getContext('2d');

var image = new Image();
image.onload = function() {
  var size = Math.min(image.width, image.height);
  canvas.width = size;
  canvas.height = size;

  // create a circular path
  context.beginPath();
  context.arc(size/2, size/2, size/2, 0, 2*Math.PI);
  context.closePath();
  context.clip();

  // draw the image onto the circular canvas
  context.drawImage(image, (size-image.width)/2, (size-image.height)/2);

  // get the circular image data from the canvas
  var imageData = canvas.toDataURL();
  console.log(imageData);
};
image.src = 'example.jpg';
