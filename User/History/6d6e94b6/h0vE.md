
Is it possible to automatically crop a image post-insert on a website using css or javascript ??
read: ./image-crop.md
and can it also be cropped into a circle ? 
Yes, it is possible to crop an image into a circle using CSS or JavaScript.

In CSS, you can use the border-radius property to make an element's corners rounded, and setting the value to 50% will make the element circular. You can apply this property to an image element to make it circular.

Here's an example CSS code:
---------------------------------------------------------------------------------
img {
  width: 300px;
  height: 300px;
  border-radius: 50%;
  object-fit: cover;
}
---------------------------------------------------------------------------------
This code will create a circular image with a size of 300x300 pixels, and the object-fit: cover; property will crop the image to fit the container while maintaining its aspect ratio.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

In JavaScript, you can use the canvas element to crop an image into a circle. The basic idea is to create a canvas element with the desired dimensions and use the arc method to draw a circular path, then use the clip method to clip the canvas to the circular path. Finally, use the drawImage method to draw the original image onto the circular canvas.

Here's an example JavaScript code:
---------------------------------------------------------------------------------

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
