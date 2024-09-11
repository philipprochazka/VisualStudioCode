hi I have an list of font awesome icons mixed with bootstrap styling acting as a social-links list they are centered to a row
     padding-top: 0.5rem !important;
    padding-bottom: 0.5rem !important;
     margin-right: auto !important;
    margin-left: auto !important; 
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
the are hardcoded html and css I want to replace it with a separate html/js file I am having trouble passing the js.
so here is at least my html code please try a JS response for calling them 

<ul class="social-list list-inline py-2 mx-auto">
  <li class="list-inline-item">
    <a id="twitter-link" class="soc-link" href="https://twitter.com/ProchazkaPhilip">
      <i class="fab fa-twitter fa-fw"></i
    ></a>
  </li>
  <li class="list-inline-item">
    <a id="linkedin-link" class="soc-link" href="https://www.linkedin.com/in/philip-proch%C3%A1zka-4a48b9124"></a>
    <i class="fab fa-linkedin-in fa-fw"></i
    ></a>
  </li>
  <li class="list-inline-item">
    <a id="github-link" class="soc-link" href="https://github.com/philipprochazka?tab=repositories"
      ><i class="fab fa-github-alt fa-fw"></i
    ></a>
  </li>
  <li class="list-inline-item">
    <a id="stack-overflow-link" class="soc-link" href="https://stackoverflow.com/users/21684763/philip-proch%c3%a1zka"><i class="fab fa-stack-overflow fa-fw"></i></a>
  </li>
  <li class="list-inline-item">
    <a id="codepen-link" class="soc-link" href="#"><i class="fab fa-codepen fa-fw"></i></a>
  </li>
</ul>
<!--//social-list-->

.py-2 {
    padding-top: 0.5rem !important;
    padding-bottom: 0.5rem !important;
}
.mx-auto {
    margin-right: auto !important;
    margin-left: auto !important;
}
.list-inline {
    padding-left: 0;
    list-style: none;
}
ol, ul, dl {
    margin-top: 0;
    margin-bottom: 1rem;
}
ol, ul, dl {
    margin-top: 0;
    margin-bottom: 1rem;
}
*, *::before, *::after {
    box-sizing: border-box;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}



<li class="list-inline-item"><a href="#"><svg class="svg-inline--fa fa-linkedin-in fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.3 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.6 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.3 61.9 111.3 142.3V448z"></path></svg><!-- <i class="fab fa-linkedin-in fa-fw"></i> Font Awesome fontawesome.com --></a></li>

<li class="list-inline-item"><a href="#"><svg class="svg-inline--fa fa-github-alt fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="github-alt" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 512" data-fa-i2svg=""><path fill="currentColor" d="M186.1 328.7c0 20.9-10.9 55.1-36.7 55.1s-36.7-34.2-36.7-55.1 10.9-55.1 36.7-55.1 36.7 34.2 36.7 55.1zM480 278.2c0 31.9-3.2 65.7-17.5 95-37.9 76.6-142.1 74.8-216.7 74.8-75.8 0-186.2 2.7-225.6-74.8-14.6-29-20.2-63.1-20.2-95 0-41.9 13.9-81.5 41.5-113.6-5.2-15.8-7.7-32.4-7.7-48.8 0-21.5 4.9-32.3 14.6-51.8 45.3 0 74.3 9 108.8 36 29-6.9 58.8-10 88.7-10 27 0 54.2 2.9 80.4 9.2 34-26.7 63-35.2 107.8-35.2 9.8 19.5 14.6 30.3 14.6 51.8 0 16.4-2.6 32.7-7.7 48.2 27.5 32.4 39 72.3 39 114.2zm-64.3 50.5c0-43.9-26.7-82.6-73.5-82.6-18.9 0-37 3.4-56 6-14.9 2.3-29.8 3.2-45.1 3.2-15.2 0-30.1-.9-45.1-3.2-18.7-2.6-37-6-56-6-46.8 0-73.5 38.7-73.5 82.6 0 87.8 80.4 101.3 150.4 101.3h48.2c70.3 0 150.6-13.4 150.6-101.3zm-82.6-55.1c-25.8 0-36.7 34.2-36.7 55.1s10.9 55.1 36.7 55.1 36.7-34.2 36.7-55.1-10.9-55.1-36.7-55.1z"></path></svg><!-- <i class="fab fa-github-alt fa-fw"></i> Font Awesome fontawesome.com --></a></li>

<li class="list-inline-item"><a href="#"><svg class="svg-inline--fa fa-stack-overflow fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="stack-overflow" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" data-fa-i2svg=""><path fill="currentColor" d="M290.7 311L95 269.7 86.8 309l195.7 41zm51-87L188.2 95.7l-25.5 30.8 153.5 128.3zm-31.2 39.7L129.2 179l-16.7 36.5L293.7 300zM262 32l-32 24 119.3 160.3 32-24zm20.5 328h-200v39.7h200zm39.7 80H42.7V320h-40v160h359.5V320h-40z"></path></svg><!-- <i class="fab fa-stack-overflow fa-fw"></i> Font Awesome fontawesome.com --></a></li>

<li class="list-inline-item"><a href="#"><svg class="svg-inline--fa fa-codepen fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="codepen" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" data-fa-i2svg=""><path fill="currentColor" d="M502.3 159.7l-234-156c-7.987-4.915-16.51-4.96-24.57 0l-234 156C3.714 163.7 0 170.8 0 177.1v155.1c0 7.143 3.714 14.29 9.715 18.29l234 156c7.987 4.915 16.51 4.96 24.57 0l234-156c6-3.999 9.715-11.14 9.715-18.29V177.1c-.001-7.142-3.715-14.29-9.716-18.28zM278 63.13l172.3 114.9-76.86 51.43L278 165.7V63.13zm-44 0v102.6l-95.43 63.72-76.86-51.43L234 63.13zM44 219.1l55.14 36.86L44 292.8v-73.71zm190 229.7L61.71 333.1l76.86-51.43L234 346.3v102.6zm22-140.9l-77.71-52 77.71-52 77.71 52-77.71 52zm22 140.9V346.3l95.43-63.72 76.86 51.43L278 448.8zm190-156l-55.14-36.86L468 219.1v73.71z"></path></svg><!-- <i class="fab fa-codepen fa-fw"></i> Font Awesome fontawesome.com --></a></li>