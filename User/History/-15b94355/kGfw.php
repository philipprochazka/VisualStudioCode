<header class="header">
    <a href="{{ $link }}" class="logo">
      <span style="color: {{ $theme['text'] }}"> &lt;</span>
      <span class="logo-name" style="color: {{ $theme['text'] }}">{{ $greeting['logo_name'] }}</span>
      <span style="color: {{ $theme['text'] }}">&gt;</span>
    </a>
    <input class="menu-btn" type="checkbox" id="menu-btn" />
    <label class="menu-icon" for="menu-btn">
      <span class="navicon"></span>
    </label>
    <ul class="menu" style="background-color: {{ $theme['body'] }}">
      <li>
        <a href="/home" class="{{ Request::is('home*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Home
        </a>
      </li>
      <li>
        <a href="/education" class="{{ Request::is('education*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Education
        </a>
      </li>
      <li>
        <a href="/experience" class="{{ Request::is('experience*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Experience
        </a>
      </li>
      <li>
        <a href="/projects" class="{{ Request::is('projects*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Projects
        </a>
      </li>
      <li>
        <a href="/offerings" class="{{ Request::is('offerings*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Offerings
        </a>
      </li>
      <li>
        <a href="/contact" class="{{ Request::is('contact*') ? 'active' : '' }}" style="color: {{ $theme['text'] }};">
          Contact Me
        </a>
      </li>
    </ul>
  </header>
  