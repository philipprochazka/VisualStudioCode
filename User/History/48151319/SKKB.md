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

<svg class="svg-inline--fa fa-linkedin-in fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.3 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.6 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.3 61.9 111.3 142.3V448z"></path></svg>

<li class="list-inline-item"><a href="#"><svg class="svg-inline--fa fa-linkedin-in fa-fw" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="linkedin-in" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M100.3 448H7.4V148.9h92.88zM53.79 108.1C24.09 108.1 0 83.5 0 53.8a53.79 53.79 0 0 1 107.6 0c0 29.7-24.1 54.3-53.79 54.3zM447.9 448h-92.68V302.4c0-34.7-.7-79.2-48.29-79.2-48.29 0-55.69 37.7-55.69 76.7V448h-92.78V148.9h89.08v40.8h1.3c12.4-23.5 42.69-48.3 87.88-48.3 94 0 111.3 61.9 111.3 142.3V448z"></path></svg><!-- <i class="fab fa-linkedin-in fa-fw"></i> Font Awesome fontawesome.com --></a></li>