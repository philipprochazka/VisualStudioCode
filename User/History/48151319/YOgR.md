hi I have an list of font awesome icons mixed with bootstrap styling acting as a social-links list they are centered to a row
     padding-top: 0.5rem !important;
    padding-bottom: 0.5rem !important;     margin-right: auto !important;
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