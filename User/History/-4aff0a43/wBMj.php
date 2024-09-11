<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <!-- <link rel="icon" href="%PUBLIC_URL%/favicon1.ico" /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="Philip's Portfolio"
      content="Portfolio content"
    />
    <meta property="og:title" content="Philip Prochazka's Portfolio" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://philipprochazka.cz/" />
    <meta name="description" content="Philip's Personal Portfolio Website" property="og:description">
    <meta name="description" content="/icons/desc.png" property="og:image">
    <meta name="keywords" content="Philip, PortFolio, Resume, Philip's Portfolio, Prochazka's Portfolio" />
    <meta name="author" content="Ashutosh" />
    <meta name="application-name" content="Philip Prochazka's PortFolio" />
<link rel="icon" type="image/png" sizes="16x16" href="/icons/favicon-16x16.png">
    <link rel="stylesheet" href="./scss/Style.scss">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#000000">

    <!--Adsense Advertisement-->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
      (adsbygoogle = window.adsbygoogle || []).push({
        google_ad_client: "",
        enable_page_level_ads: true
      });
    </script>
    <!-- Global site tag (gtag.js) - Google Ads:  --> <script async src="https://www.googletagmanager.com/gtag/js?id="></script> <script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', ''); </script>
    <!--
      manifest.json provides metadata used when your web app is installed on a
      user's mobile device or desktop. See https://developers.google.com/web/fundamentals/web-app-manifest/
    -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id="></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag() { dataLayer.push(arguments); }
      gtag('js', new Date());

      gtag('config', '');
    </script>
    <link rel="manifest" href="%PUBLIC_URL%/manifest.json" />
  </head>
  <body>
    <?php include '/Header/header.php'; ?>
    public function index()
{
    $data = [
        'link' => settings('isSplash') ? '/splash' : 'home',
        'greeting' => greeting(),
        'theme' => [
            'text' => '#ffffff',
            'body' => '#1c1c1c',
            'highlight' => '#b3b3b3',
        ],
    ];

    return view('header', $data);
}

    <main>
      <?php include '/Body/image-section.php'; ?>
      <?php include '/Body/Table.php'; ?>
      <?php include '/body/bullet_point-section.php'; ?>
    </main>

    <?php include './footer/footer.php'; ?>
  </body>
  </html>
