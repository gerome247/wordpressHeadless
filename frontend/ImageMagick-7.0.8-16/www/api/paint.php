



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" >
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" >
  <title>MagickCore, C API: Paint on an Image @ ImageMagick</title>
  <meta name="application-name" content="ImageMagick">
  <meta name="description" content="Use ImageMagick® to create, edit, compose, convert bitmap images. With ImageMagick you can resize your image, crop it, change its shades and colors, add captions, among other operations.">
  <meta name="application-url" content="https://imagemagick.org">
  <meta name="generator" content="PHP">
  <meta name="keywords" content="magickcore, c, api:, paint, on, an, image, ImageMagick, PerlMagick, image processing, image, photo, software, Magick++, OpenMP, convert">
  <meta name="rating" content="GENERAL">
  <meta name="robots" content="INDEX, FOLLOW">
  <meta name="generator" content="ImageMagick Studio LLC">
  <meta name="author" content="ImageMagick Studio LLC">
  <meta name="revisit-after" content="2 DAYS">
  <meta name="resource-type" content="document">
  <meta name="copyright" content="Copyright (c) 1999-2017 ImageMagick Studio LLC">
  <meta name="distribution" content="Global">
  <meta name="magick-serial" content="P131-S030410-R485315270133-P82224-A6668-G1245-1">
  <meta name="google-site-verification" content="_bMOCDpkx9ZAzBwb2kF3PRHbfUUdFj2uO8Jd1AXArz4">
  <link href="https://imagemagick.org/api/paint.php" rel="canonical">
  <link href="https://imagemagick.org/image/wand.png" rel="icon">
  <link href="https://imagemagick.org/image/wand.ico" rel="shortcut icon">
  <link href="https://imagemagick.org/assets/magick-css.php" rel="stylesheet">
</head>
<body>
  <header>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="https://imagemagick.org/"><img class="d-block" id="icon" alt="ImageMagick" width="32" height="32" src="https://imagemagick.org/image/wand.ico"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="navbar-collapse collapse" id="navbarsExampleDefault" style="">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/script/download.php">Download</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/script/command-line-tools.php">Tools</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/script/command-line-processing.php">Command-line</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/script/resources.php">Resources</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="https://imagemagick.org/script/develop.php">Develop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" target="_blank" href="https://imagemagick.org/discourse-server/">Community</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="../script/search.php">
      <input class="form-control mr-sm-2" type="text" name="q" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="sa">Search</button>
    </form>
    </div>
  </nav>
  <div class="container">
   <script async="async" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>    <ins class="adsbygoogle"
         style="display:block"
         data-ad-client="ca-pub-3129977114552745"
         data-ad-slot="6345125851"
         data-ad-format="auto"></ins>
    <script>
      (adsbygoogle = window.adsbygoogle || []).push({});
    </script>

  </div>
  </header>
  <main class="container">
    <div class="magick-template">
<div class="magick-header">
<p class="text-center"><a href="paint.php#FloodfillPaintImage">FloodfillPaintImage</a> &bull; <a href="paint.php#OilPaintImage">OilPaintImage</a> &bull; <a href="paint.php#OpaquePaintImage">OpaquePaintImage</a> &bull; <a href="paint.php#TransparentPaintImage">TransparentPaintImage</a> &bull; <a href="paint.php#TransparentPaintImageChroma">TransparentPaintImageChroma</a></p>

<h2><a href="https://imagemagick.org/api/MagickCore/paint_8c.html" id="FloodfillPaintImage">FloodfillPaintImage</a></h2>

<p>FloodfillPaintImage() changes the color value of any pixel that matches target and is an immediate neighbor.  If the method FillToBorderMethod is specified, the color value is changed for any neighbor pixel that does not match the bordercolor member of image.</p>

<p>By default target must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount.  The fuzz member of image defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color for the purposes of the floodfill.</p>

<p>The format of the FloodfillPaintImage method is:</p>

<pre class="text">
MagickBooleanType FloodfillPaintImage(Image *image,
  const DrawInfo *draw_info,const PixelInfo target,
  const ssize_t x_offset,const ssize_t y_offset,
  const MagickBooleanType invert,ExceptionInfo *exception)
</pre>

<p>A description of each parameter follows:</p>

<dd>
</dd>

<dd> </dd>
<dl class="dl-horizontal">
<dt>image</dt>
<dd>the image. </dd>

<dd> </dd>
<dt>draw_info</dt>
<dd>the draw info. </dd>

<dd> </dd>
<dt>target</dt>
<dd>the RGB value of the target color. </dd>

<dd> </dd>
<dt>x_offset,y_offset</dt>
<dd>the starting location of the operation. </dd>

<dd> </dd>
<dt>invert</dt>
<dd>paint any pixel that does not match the target color. </dd>

<dd> </dd>
<dt>exception</dt>
<dd>return any errors or warnings in this structure. </dd>

<dd>  </dd>
</dl>
<h2><a href="https://imagemagick.org/api/MagickCore/paint_8c.html" id="OilPaintImage">OilPaintImage</a></h2>

<p>OilPaintImage() applies a special effect filter that simulates an oil painting.  Each pixel is replaced by the most frequent color occurring in a circular region defined by radius.</p>

<p>The format of the OilPaintImage method is:</p>

<pre class="text">
Image *OilPaintImage(const Image *image,const double radius,
  const double sigma,ExceptionInfo *exception)
</pre>

<p>A description of each parameter follows:</p>

<dd>
</dd>

<dd> </dd>
<dl class="dl-horizontal">
<dt>image</dt>
<dd>the image. </dd>

<dd> </dd>
<dt>radius</dt>
<dd>the radius of the circular neighborhood. </dd>

<dd> </dd>
<dt>sigma</dt>
<dd>the standard deviation of the Gaussian, in pixels. </dd>

<dd> </dd>
<dt>exception</dt>
<dd>return any errors or warnings in this structure. </dd>

<dd>  </dd>
</dl>
<h2><a href="https://imagemagick.org/api/MagickCore/paint_8c.html" id="OpaquePaintImage">OpaquePaintImage</a></h2>

<p>OpaquePaintImage() changes any pixel that matches color with the color defined by fill argument.</p>

<p>By default color must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount.  Fuzz defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color.</p>

<p>The format of the OpaquePaintImage method is:</p>

<pre class="text">
MagickBooleanType OpaquePaintImage(Image *image,const PixelInfo *target,
  const PixelInfo *fill,const MagickBooleanType invert,
  ExceptionInfo *exception)
</pre>

<p>A description of each parameter follows:</p>

<dd>
</dd>

<dd> </dd>
<dl class="dl-horizontal">
<dt>image</dt>
<dd>the image. </dd>

<dd> </dd>
<dt>target</dt>
<dd>the RGB value of the target color. </dd>

<dd> </dd>
<dt>fill</dt>
<dd>the replacement color. </dd>

<dd> </dd>
<dt>invert</dt>
<dd>paint any pixel that does not match the target color. </dd>

<dd> </dd>
<dt>exception</dt>
<dd>return any errors or warnings in this structure. </dd>

<dd>  </dd>
</dl>
<h2><a href="https://imagemagick.org/api/MagickCore/paint_8c.html" id="TransparentPaintImage">TransparentPaintImage</a></h2>

<p>TransparentPaintImage() changes the opacity value associated with any pixel that matches color to the value defined by opacity.</p>

<p>By default color must match a particular pixel color exactly.  However, in many cases two colors may differ by a small amount.  Fuzz defines how much tolerance is acceptable to consider two colors as the same.  For example, set fuzz to 10 and the color red at intensities of 100 and 102 respectively are now interpreted as the same color.</p>

<p>The format of the TransparentPaintImage method is:</p>

<pre class="text">
MagickBooleanType TransparentPaintImage(Image *image,
  const PixelInfo *target,const Quantum opacity,
  const MagickBooleanType invert,ExceptionInfo *exception)
</pre>

<p>A description of each parameter follows:</p>

<dd>
</dd>

<dd> </dd>
<dl class="dl-horizontal">
<dt>image</dt>
<dd>the image. </dd>

<dd> </dd>
<dt>target</dt>
<dd>the target color. </dd>

<dd> </dd>
<dt>opacity</dt>
<dd>the replacement opacity value. </dd>

<dd> </dd>
<dt>invert</dt>
<dd>paint any pixel that does not match the target color. </dd>

<dd> </dd>
<dt>exception</dt>
<dd>return any errors or warnings in this structure. </dd>

<dd>  </dd>
</dl>
<h2><a href="https://imagemagick.org/api/MagickCore/paint_8c.html" id="TransparentPaintImageChroma">TransparentPaintImageChroma</a></h2>

<p>TransparentPaintImageChroma() changes the opacity value associated with any pixel that matches color to the value defined by opacity.</p>

<p>As there is one fuzz value for the all the channels, TransparentPaintImage() is not suitable for the operations like chroma, where the tolerance for similarity of two color component (RGB) can be different. Thus we define this method to take two target pixels (one low and one high) and all the pixels of an image which are lying between these two pixels are made transparent.</p>

<p>The format of the TransparentPaintImageChroma method is:</p>

<pre class="text">
MagickBooleanType TransparentPaintImageChroma(Image *image,
  const PixelInfo *low,const PixelInfo *high,const Quantum opacity,
  const MagickBooleanType invert,ExceptionInfo *exception)
</pre>

<p>A description of each parameter follows:</p>

<dd>
</dd>

<dd> </dd>
<dl class="dl-horizontal">
<dt>image</dt>
<dd>the image. </dd>

<dd> </dd>
<dt>low</dt>
<dd>the low target color. </dd>

<dd> </dd>
<dt>high</dt>
<dd>the high target color. </dd>

<dd> </dd>
<dt>opacity</dt>
<dd>the replacement opacity value. </dd>

<dd> </dd>
<dt>invert</dt>
<dd>paint any pixel that does not match the target color. </dd>

<dd> </dd>
<dt>exception</dt>
<dd>return any errors or warnings in this structure. </dd>

<dd>  </dd>
</dl>
</div>
    </div>
  </main><!-- /.container -->
  <footer class="magick-footer">
    <p><a href="https://imagemagick.org/script/security-policy.php">Security</a> •
    <a href="https://imagemagick.org/script/architecture.php">Architecture</a> •
    <a href="https://imagemagick.org/script/links.php">Related</a> •
     <a href="https://imagemagick.org/script/sitemap.php">Sitemap</a>
    &nbsp; &nbsp;
    <a href="paint.php#"><img class="d-inline" id="wand" alt="And Now a Touch of Magick" width="16" height="16" src="https://imagemagick.org/image/wand.ico"/></a>
    &nbsp; &nbsp;
    <a href="http://pgp.mit.edu/pks/lookup?op=get&amp;search=0x89AB63D48277377A">Public Key</a> •
    <a href="https://imagemagick.org/script/support.php">Donate</a> •
    <a href="https://imagemagick.org/script/contact.php">Contact Us</a>
    <br/>
        <small>© 1999-2019 ImageMagick Studio LLC</small></p>
  </footer>

  <!-- Javascript assets -->
  <script src="https://imagemagick.org/assets/magick-js.php" crossorigin="anonymous"></script>
  <script>window.jQuery || document.write('<script src="https://imagemagick.org/assets/jquery.min.js"><\/script>')</script>
</body>
</html>
<!-- Magick Cache 8th September 2018 09:26 -->