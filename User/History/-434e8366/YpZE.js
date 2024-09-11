<script>
// Load profile section contents into the "profile-section" div
var xhttp = new XMLHttpRequest();
xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    document.getElementById("profile-section").innerHTML = this.responseText;
  }
};
xhttp.open("GET", "profile-section.html", true);
xhttp.send();
</script>