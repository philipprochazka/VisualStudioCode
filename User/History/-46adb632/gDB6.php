<div class="header">
  <div class="logo-container">
    <a href="#"><img src="./Image/logo.png" alt="Logo"></a>
  </div>
  <div class="nav-container">
    <ul>
    <li><a href="#about">About</a></li>
      <li><a href="#resume">Resume</a></li>
      <li><a href="#portfolio">Portfolio</a></li>
      <li><a href="#offerings">Offerings</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </div>
</div>

<style>
  .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 80px;
    background-color: #333;
    color: white;
    padding: 0 20px;
  }
  .logo-container {
    width: 250px;
  }
  .logo-container img {
    max-height: 100%;
    max-width: 100%;
  }
  .nav-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: calc(100% - 250px);
  }
  .nav-container ul {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
  }
  .nav-container li {
    margin: 0 10px;
  }
  .nav-container a {
    color: white;
    text-decoration: none;
    font-weight: bold;
  }
</style>