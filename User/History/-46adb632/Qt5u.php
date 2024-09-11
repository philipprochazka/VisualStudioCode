<div class="header">
  <div class="logo-container">
    <a href="#"><img src="logo.png" alt="Logo"></a>
  </div>
  <div class="nav-container">
    <ul>
      <li><a href="#">Nav 1</a></li>
      <li><a href="#">Nav 2</a></li>
      <li><a href="#">Nav 3</a></li>
      <li><a href="#">Nav 4</a></li>
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