<template>
  <header class="header text-center">
    <div class="force-overflow">
      <h1 class="logo pt-lg-4 mb-0">
        <a class="text-decoration-none" href="index.html">Philip Procházka</a>
      </h1>

      <nav class="navbar navbar-expand-lg">
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navigation"
          aria-controls="navigation"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div id="navigation" class="collapse navbar-collapse flex-column">
          <div class="profile-section pt-3 pt-lg-0">
            <img
              class="profile-image mb-3 rounded-circle mx-auto"
              src="assets/images/profile.png"
              alt="Profile image"
            />

            <div class="bio mb-3">
              Hi, my name is Philip Procházka and I'm a junior software
              engineer. Welcome to my personal website!
            </div>
            <!--//bio-->
            <div id="social-links-container">
              <script
                id="replace_with_social-list"
                src="social-list.js"
              ></script>
            </div>
            <!--//social-list-->
            <hr />
          </div>
          <!--//profile-section-->
          <script id="replace_with_navbar" src="navbar.js"></script>

          <div class="my-2">
            <a class="btn btn-primary" href="contact.html" target="_blank"
              ><i class="fas fa-paper-plane me-2"></i>Hire Me</a
            >
          </div>
        </div>
      </nav>
    </div>
    <!--//force-overflow-->
  </header>
</template>

<script>
export default {
  name: 'Navbar',
  data() {
    return {}
  },
  methods: {},
}
</script>

<style>
/* Your CSS styles for the navbar */
</style>