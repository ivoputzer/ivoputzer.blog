<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  xmlns:video="http://www.google.com/schemas/sitemap-video/1.1"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" indent="yes" encoding="UTF-8"/>
  <xsl:template match="/">
    <html class="sitemap">
      <head>
        <title>
          Sitemap
          <xsl:if test="sitemap:sitemapindex">Index</xsl:if>
        </title>
        <link rel="shortcut icon" href="//gravatar.com/avatar/5d34a6bf73323076e6c8ddfd10831c90?s=128" />
        <link rel="canonical" href="/sitemap.xsl" />
        <style>
          <![CDATA[
            @font-face {
              font-family: 'Exo';
              font-style: normal;
              font-weight: 900;
              src: local('Exo Black'), local('Exo-Black'), url(https://fonts.gstatic.com/s/exo/v9/4UaDrEtFpBIa8Fm29xLjza_B4g.woff2) format('woff2');
              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            }
            @font-face {
              font-family: 'Merriweather';
              font-style: normal;
              font-weight: 400;
              src: local('Merriweather Regular'), local('Merriweather-Regular'), url(https://fonts.gstatic.com/s/merriweather/v21/u-440qyriQwlOrhSvowK_l5-fCZMdeX3rg.woff2) format('woff2');
              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            }
            @font-face {
              font-family: 'Merriweather Sans';
              font-style: normal;
              font-weight: 400;
              src: local('Merriweather Sans'), local('MerriweatherSans-Regular'), url(https://fonts.gstatic.com/s/merriweathersans/v11/2-c99IRs1JiJN1FRAMjTN5zd9vgsFHX1QjXp8Bte.woff2) format('woff2');
              unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
            }
            * {
  box-sizing: border-box;
}

:root {
  --color-scheme: 'light';
  --bg-color: #fff;
  --bg-color-semitransparent: rgba(255, 255, 255, 0.85);
  --bg-color-secondary: #f7f7f9;
  --text-color: #373a3c;
  --text-color-secondary: #818a91;
  --border-color: #eceeef;
  --brand-color-primary: #ff335f;
  --brand-color-primary-offset: #ff1447;
  --brand-color-secondary: #43a9a3;
  /*
    https://simpleicons.org/
  */
  --color-linkedin: #0077B5;
  --color-twitter: #1DA1F2;
  --color-instagram: #E4405F;
  --color-telegram: #2CA5E0;
  --color-npm: #CB3837;
  --color-rss: #FFA500;
  --color-tor: #7E4798;
  --color-git: #F05032;
  --color-github: #181717;
  --color-brave: #FB542B;
  --color-coinbase: #0667D0;
  --color-bitcoin: #F7931A;
  --color-litecoin: #A6A9AA;
  --color-ethereum: #3C3C3D;
  --color-html5: #E34F26;
  --color-css3: #1572B6;
  --color-js: #F7DF1E;
  --color-python: #3776AB;
  --color-creative-commons: #EF9421;
  --color-reddit: #FF4500;
  --color-gitlab: #FCA121;
  --color-bitbucket: #0052CC;
  --color-trello: #0079BF;
  --color-travis: #3EAAAF;
  --color-stackoverflow: #FE7A16;
  --color-codepen: #000000;
}

@media (prefers-color-scheme:dark) {
  :root {
    --color-scheme: 'dark'
  }
}

:root.dark {
  --bg-color: #1d1f21;
  --bg-color-semitransparent: rgba(33, 33, 33, 0.75);
  --bg-color-secondary: #252526;
  --text-color: #ffffff;
  --text-color-secondary: #818a91;
  --border-color: #2d2d2d;
  --brand-color-primary: #ff5277;
  --brand-color-primary-offset: #ff2957;
  --brand-color-secondary: #43a9a3
}

::-moz-selection {
  background:var(--brand-color-secondary);
  color:#fff
}

::selection {
  background:var(--brand-color-secondary);
  color:#fff
}

::-moz-selection {
  background:var(--brand-color-secondary);
  color:#fff
}

            * {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

h1 {
	font-size: 2rem;
	line-height: 2.5rem;
}

h2 {
	font-size: 1.5rem;
	line-height: 2rem;
}

h3 {
	font-size: 1.25rem;
	line-height: 1.5rem;
}

h4, h5, h6, dl, ol, ul, p, pre {
	font-size: 1.125rem;
	line-height: 1.5rem;
}

h4 {
	font-size: 1.13rem;
}

body {
  font-family: 'Merriweather', serif;
	line-height: 1.5rem;
	font-weight: 400;
}

img {
	width: auto;
	max-width: 100%;
}

body {
  -ms-text-size-adjust:100%;
  -webkit-text-size-adjust:100%;
	font-size: 1.5rem;
}

table {
	width: 100%;
	font-size: 1.125rem;
}

table > thead > tr > th,
table > thead > tr > td,
table > tbody > tr > th,
table > tbody > tr > td,
table > tfoot > tr > th,
table > tfoot > tr > td {
	padding: 12px;
	line-height: 1.2;
	vertical-align: top;
	border-top: 1px solid #333;
}

table > thead > tr > th {
	vertical-align: bottom;
	border-bottom: 2px solid #333;
}

table > caption + thead > tr:first-child > th,
table > caption + thead > tr:first-child > td,
table > colgroup + thead > tr:first-child > th,
table > colgroup + thead > tr:first-child > td,
table > thead:first-child > tr:first-child > th,
table > thead:first-child > tr:first-child > td {
	border-top: 0;
}

table > tbody + tbody {
	border-top: 2px solid #333;
}

a {
  color:var(--brand-color-primary);
  text-decoration:none;
}

a:focus,
a:hover {
  color:var(--brand-color-primary-offset);
}

p {
	font-weight: 300;
	line-height: 1.5;
}

abbr {
	border-bottom: 1px black dotted;
	cursor: help;
}

pre,
code {
	font-family: monospace;
}

code {
	color: #7a7a7a;
}

blockquote {
	padding: 1.33em;
	font-style: italic;
	border-left: 5px solid #7a7a7a;
	color: #555;
}


blockquote em {
	color: #000;
}

blockquote footer {
	font-size: .85rem;
	font-style: normal;
	background-color: #fff;
	color: #7a7a7a;
	border-color: transparent;
}

@media screen and (min-width: 48em) {
	h1 {
		font-size: 3.250rem;
	}
	h2 {
		font-size: 2.298rem;
	}
	h3 {
		font-size: 1.625rem;
	}
	h4 {
		font-size: 1.3rem;
	}
	p, li {
		font-size: 1.25rem;
		line-height: 1.8;
	}
	table {
		font-size: 1.25rem;
	}
}

h1,
h2,
h3,
h4,
h5,
h6 {
	font-family: 'Merriweather Sans', sans-serif;
	font-weight: bold;
	line-height: 1.2;
	margin: 1em 0 0.5em;
}

@media (max-width: 48em) {
	blockquote {
		margin-left: 1rem;
		margin-right: 0;
		padding: 0.5em;
	}
	h1 {
		font-size: 2.827rem;
	}
	h2 {
		font-size: 1.999rem;
	}
	h3 {
		font-size: 1.413rem;
	}
	h4 {
		font-size: 1.3rem;
	}
}

@media screen and (min-width: 64em) {
	h1 {
		font-size: 4.498rem;
  }

	h2 {
		font-size: 2.29rem;
	}
	h3 {
		font-size: 1.9rem;
	}
	h4 {
		font-size: 1.591rem;
	}
}

            a.cta {
  display: inline-block;
  color: inherit;
  position: relative
}

a.cta:focus,
a.cta:hover {
  color: inherit
}

a.cta::after,
a.cta::before {
  content: '';
  display: block;
  height: .5em;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: -1
}

a.cta::before {
  background-color: var(--border-color)
}

a.cta::after {
  background-color: var(--brand-color-primary);
  -webkit-transform: scaleX(0);
  transform: scaleX(0);
  -webkit-transform-origin: 0 50%;
  transform-origin: 0 50%;
  -webkit-transition: -webkit-transform .3s cubic-bezier(.86, 0, .07, 1);
  transition: -webkit-transform .3s cubic-bezier(.86, 0, .07, 1);
  transition: transform .3s cubic-bezier(.86, 0, .07, 1);
  transition: transform .3s cubic-bezier(.86, 0, .07, 1), -webkit-transform .3s cubic-bezier(.86, 0, .07, 1)
}

a.cta:hover::after {
  -webkit-transform: scaleX(1);
  transform: scaleX(1)
}

            /*
  jsut style definitions for sematic tags

  :root
  ::selection

  html
  body

  nav

  header
  footer

  main
  main header
  main footer
  main article
  main article header
  main article footer

  article
  article header
  article footer


*/

html {
  margin: 0;
  padding: 0;
}

body {
  display: flex;
  flex-direction: column;

  width: 100vw;
  height: 100%;
  min-height: 100vh;
  min-height: -webkit-fill-available;

  margin: 0 auto;
  padding: 0 2rem;
  max-width: 1024px;

  color: var(--text-color);
}

main {
  flex: 1;
}

figure, img {
  width: 100%;
  margin: 0;
  padding: 0;
}

/********************************************** FOOTER ************************************************/

body > footer {
  margin: 5rem -2rem 0 -2rem;
}

body > footer ul {
  display: flex;
  list-style-type: none;
  padding: 0;
  margin: 0;
  justify-content:space-between;

}

body > footer li {
  flex: 1;
  margin: 0 .5rem;
  height: 7.5rem;
}

body > footer li:hover {
  height: 8rem;

}

body > footer a {
  padding: 1rem .75rem 0 .75rem;
  display: block;
  margin: 0 auto;
  height: 100%;
}

body > footer svg {
  fill: white;
  display: block;
}

body > footer li.sitemap { background: var(--color-rss) }
body > footer li.rss { background: var(--color-rss) }
body > footer li.github { background: var(--color-github) }
body > footer li.twitter { background: var(--color-twitter) }
body > footer li.instagram { background: var(--color-instagram) }
body > footer li.npm { background: var(--color-npm) }
body > footer li.linkedin { background: var(--color-linkedin) }
body > footer li.telegram { background: var(--color-telegram) }
body > footer li.stackoverflow { background: var(--color-stackoverflow) }
body > footer li.codepen { background: var(--color-codepen) }
body > footer li.coinbase { background: var(--color-coinbase) }
body > footer li.brave { background: var(--color-brave) }

/********************************************** ARTICLE ***********************************************/

article strong em {
  display: inline-block;
  position: relative;
}

article strong em {
  font-style: inherit;
}

article strong em::before {
	content: '';
	display: block;
	height: .5em;
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
  z-index: -1;
  background-color: var(--brand-color-primary);
}

/********************************************* NAVIGATION *********************************************/

nav {
  display: flex;
  align-items:center;
  font-family: 'Exo', sans-serif;
  padding: 2rem 0;
}

nav figure {
  flex: 1;
  margin: 0;
  font-size: 2.75rem;
}

nav small {
  font-size: 1rem;
}

nav ul {
  -moz-padding-start: 0;
  -webkit-padding-start: 0;
  list-style-type: none;
}

nav li {
  display: inline-block;
  position: relative;
}

nav li::after {
  display: block;
  position: absolute;
  content: '';
  height: 5px;
  bottom: -5px;
  background-color: var(--border-color);
  left:1.25rem;
  right:1.25rem;
  transform:scaleX(0);
  transform-origin:0 50%;
  transition: transform .3s cubic-bezier(.86,0,.07,1);
}

nav li:last-child::after {
  right: 0;
}

nav li:hover::after {
  transform:scaleX(1)
}

nav li.active::after {
  background-color:var(--brand-color-primary)!important;
  transform:none;
}

nav li a {
  display:flex;
  z-index:1;
  padding:.75rem 1.25rem;
  white-space:nowrap;
  line-height:1;
  font-size: 1.25rem;
  text-transform:uppercase;
  text-decoration: none; color:var(--text-color);
  transition:color .2s linear;
}

nav li:last-child a {
  padding-right: 0;
}

nav li a:focus,
nav li a:hover {
  color:var(--text-color)
}

@media screen and (orientation: portrait) {
  nav {
    padding: 0;
  }
  .no-portrait {
    display: none;
  }

  footer li {
    margin: 0 !important;
  }
}

/* EFFECTS */

.fade-in {
  transform:translate3d(0,0,0);
  backface-visibility:hidden;
  perspective:1000;
  animation:fade-in .5s ease;
}


@media (prefers-reduced-motion:reduce){
  * {
    animation-duration:0s!important;
    transition-duration:0s!important;
  }
}

@keyframes fade-in {
  0% {
    opacity:0;
    transform:translateY(20px)
  }
  100% {
    opacity:1;
    transform:translateY(0)
  }
}

main article {
  padding-bottom: 4rem;
}

main article footer {
  display: flex;
  justify-content: space-between;
  margin: 4rem 0 0 0;
  font-family: 'Merriweather Sans',sans-serif;
}

main article footer :first-child {
  flex: 1;
}

.publication-date,
.reading-time {
  font-size: 1rem;
  align-self: flex-end;
  margin-left: 2rem;
}

.publication-date time,
.reading-time span {
  background: var(--brand-color-primary);
  color: #fff;
  padding: .2rem 1.1rem;
}

            
          ]]>
        </style>
      </head>
      <body>
        <header>
          <nav>
  <figure>
    <span class="no-portrait">@ivoputzer<small>(.blog)</small></span>
  </figure>
  <ul>
    <li class=""><a href="/whoami/">whoami</a></li>
    <li class="active"><a href="/">articles</a></li>
  </ul>
</nav>

          <div>
            <h1>Sitemap</h1>
            <xsl:if test="sitemap:sitemapindex">
              <span>Index</span>
            </xsl:if>
            <xsl:if test="sitemap:urlset/sitemap:url/image:image">
              <span>Images</span>
            </xsl:if>
            <xsl:if test="sitemap:urlset/sitemap:url/video:video">
              <span>Video</span>
            </xsl:if>
            <xsl:if test="sitemap:urlset/sitemap:url/xhtml:link">
              <span>Xhtml</span>
            </xsl:if>
          </div>
          <h3>
            <xsl:choose>
              <xsl:when test="sitemap:sitemapindex">
                This index contains
                <strong>
                  <xsl:value-of select="count(sitemap:sitemapindex/sitemap:sitemap)"/>
                </strong> sitemaps.
              </xsl:when>
              <xsl:otherwise>
                This index contains
                <strong>
                  <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
                </strong>
                URLs.
              </xsl:otherwise>
            </xsl:choose>
          </h3>
        </header>
        <xsl:apply-templates/>
        
<footer>
  <ul>
    <li class="twitter">
      <a href="https://twitter.com/ivoputzer">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Twitter icon</title><path d="M23.954 4.569c-.885.389-1.83.654-2.825.775 1.014-.611 1.794-1.574 2.163-2.723-.951.555-2.005.959-3.127 1.184-.896-.959-2.173-1.559-3.591-1.559-2.717 0-4.92 2.203-4.92 4.917 0 .39.045.765.127 1.124C7.691 8.094 4.066 6.13 1.64 3.161c-.427.722-.666 1.561-.666 2.475 0 1.71.87 3.213 2.188 4.096-.807-.026-1.566-.248-2.228-.616v.061c0 2.385 1.693 4.374 3.946 4.827-.413.111-.849.171-1.296.171-.314 0-.615-.03-.916-.086.631 1.953 2.445 3.377 4.604 3.417-1.68 1.319-3.809 2.105-6.102 2.105-.39 0-.779-.023-1.17-.067 2.189 1.394 4.768 2.209 7.557 2.209 9.054 0 13.999-7.496 13.999-13.986 0-.209 0-.42-.015-.63.961-.689 1.8-1.56 2.46-2.548l-.047-.02z"/></svg>
      </a>
    </li>
    <li class="github">
      <a href="https://github.com/ivoputzer">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>GitHub icon</title><path d="M12 .297c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.07 3.633 17.7 3.633 17.7c-1.087-.744.084-.729.084-.729 1.205.084 1.838 1.236 1.838 1.236 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.399 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.096.81 2.22 0 1.606-.015 2.896-.015 3.286 0 .315.21.69.825.57C20.565 22.092 24 17.592 24 12.297c0-6.627-5.373-12-12-12"/></svg>
      </a>
    </li>
    <li class="npm">
      <a class="bigger" href="https://www.npmjs.com/~ivoputzer">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>NPM icon</title><path d="M0 7.334v8h6.666v1.332H12v-1.332h12v-8H0zm6.666 6.664H5.334v-4H3.999v4H1.335V8.667h5.331v5.331zm4 0v1.336H8.001V8.667h5.334v5.332h-2.669v-.001zm12.001 0h-1.33v-4h-1.336v4h-1.335v-4h-1.33v4h-2.671V8.667h8.002v5.331zM10.665 10H12v2.667h-1.335V10z"/></svg>
      </a>
    </li>
    <li class="instagram">
      <a href="https://www.instagram.com/ivoputzer">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Instagram icon</title><path d="M12 0C8.74 0 8.333.015 7.053.072 5.775.132 4.905.333 4.14.63c-.789.306-1.459.717-2.126 1.384S.935 3.35.63 4.14C.333 4.905.131 5.775.072 7.053.012 8.333 0 8.74 0 12s.015 3.667.072 4.947c.06 1.277.261 2.148.558 2.913.306.788.717 1.459 1.384 2.126.667.666 1.336 1.079 2.126 1.384.766.296 1.636.499 2.913.558C8.333 23.988 8.74 24 12 24s3.667-.015 4.947-.072c1.277-.06 2.148-.262 2.913-.558.788-.306 1.459-.718 2.126-1.384.666-.667 1.079-1.335 1.384-2.126.296-.765.499-1.636.558-2.913.06-1.28.072-1.687.072-4.947s-.015-3.667-.072-4.947c-.06-1.277-.262-2.149-.558-2.913-.306-.789-.718-1.459-1.384-2.126C21.319 1.347 20.651.935 19.86.63c-.765-.297-1.636-.499-2.913-.558C15.667.012 15.26 0 12 0zm0 2.16c3.203 0 3.585.016 4.85.071 1.17.055 1.805.249 2.227.415.562.217.96.477 1.382.896.419.42.679.819.896 1.381.164.422.36 1.057.413 2.227.057 1.266.07 1.646.07 4.85s-.015 3.585-.074 4.85c-.061 1.17-.256 1.805-.421 2.227-.224.562-.479.96-.899 1.382-.419.419-.824.679-1.38.896-.42.164-1.065.36-2.235.413-1.274.057-1.649.07-4.859.07-3.211 0-3.586-.015-4.859-.074-1.171-.061-1.816-.256-2.236-.421-.569-.224-.96-.479-1.379-.899-.421-.419-.69-.824-.9-1.38-.165-.42-.359-1.065-.42-2.235-.045-1.26-.061-1.649-.061-4.844 0-3.196.016-3.586.061-4.861.061-1.17.255-1.814.42-2.234.21-.57.479-.96.9-1.381.419-.419.81-.689 1.379-.898.42-.166 1.051-.361 2.221-.421 1.275-.045 1.65-.06 4.859-.06l.045.03zm0 3.678c-3.405 0-6.162 2.76-6.162 6.162 0 3.405 2.76 6.162 6.162 6.162 3.405 0 6.162-2.76 6.162-6.162 0-3.405-2.76-6.162-6.162-6.162zM12 16c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4zm7.846-10.405c0 .795-.646 1.44-1.44 1.44-.795 0-1.44-.646-1.44-1.44 0-.794.646-1.439 1.44-1.439.793-.001 1.44.645 1.44 1.439z"/></svg>
      </a>
    </li>
    <li class="linkedin">
      <a href="https://www.linkedin.com/in/ivoputzer">
        <svg role="img" viewBox="0 0 24 24"
  xmlns="http://www.w3.org/2000/svg">
  <title>LinkedIn icon</title>
  <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452z"/>
</svg>

      </a>
    </li>
    <li class="telegram">
      <a href="https://t.me/ivoputzer">
        <svg role="img"
  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
  <title>Telegram icon</title>
  <path d="M23.91 3.79L20.3 20.84c-.25 1.21-.98 1.5-2 .94l-5.5-4.07-2.66 2.57c-.3.3-.55.56-1.1.56-.72 0-.6-.27-.84-.95L6.3 13.7l-5.45-1.7c-1.18-.35-1.19-1.16.26-1.75l21.26-8.2c.97-.43 1.9.24 1.53 1.73z"/>
</svg>

      </a>
    </li>
    <li class="stackoverflow">
      <a href="https://stackoverflow.com/u/1086697">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Stack Overflow icon</title><path d="M18.986 21.865v-6.404h2.134V24H1.844v-8.539h2.13v6.404h15.012zM6.111 19.731H16.85v-2.137H6.111v2.137zm.259-4.852l10.48 2.189.451-2.07-10.478-2.187-.453 2.068zm1.359-5.056l9.705 4.53.903-1.95-9.706-4.53-.902 1.936v.014zm2.715-4.785l8.217 6.855 1.359-1.62-8.216-6.853-1.35 1.617-.01.001zM15.751 0l-1.746 1.294 6.405 8.604 1.746-1.294L15.749 0h.002z"/></svg>
      </a>
    </li>
    <li class="codepen">
      <a href="https://codepen.io/ivoputzer">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>CodePen icon</title><path d="M24 8.182l-.018-.087-.017-.05c-.01-.024-.018-.05-.03-.075-.003-.018-.015-.034-.02-.05l-.035-.067-.03-.05-.044-.06-.046-.045-.06-.045-.046-.03-.06-.044-.044-.04-.015-.02L12.58.19c-.347-.232-.796-.232-1.142 0L.453 7.502l-.015.015-.044.035-.06.05-.038.04-.05.056-.037.045-.05.06c-.02.017-.03.03-.03.046l-.05.06-.02.06c-.02.01-.02.04-.03.07l-.01.05C0 8.12 0 8.15 0 8.18v7.497c0 .044.003.09.01.135l.01.046c.005.03.01.06.02.086l.015.05c.01.027.016.053.027.075l.022.05c0 .01.015.04.03.06l.03.04c.015.01.03.04.045.06l.03.04.04.04c.01.013.01.03.03.03l.06.042.04.03.01.014 10.97 7.33c.164.12.375.163.57.163s.39-.06.57-.18l10.99-7.28.014-.01.046-.037.06-.043.048-.036.052-.058.033-.045.04-.06.03-.05.03-.07.016-.052.03-.077.015-.045.03-.08v-7.5c0-.05 0-.095-.016-.14l-.014-.045.044.003zm-11.99 6.28l-3.65-2.44 3.65-2.442 3.65 2.44-3.65 2.44zm-1.034-6.674l-4.473 2.99L2.89 8.362l8.086-5.39V7.79zm-6.33 4.233l-2.582 1.73V10.3l2.582 1.726zm1.857 1.25l4.473 2.99v4.82L2.89 15.69l3.618-2.417v-.004zm6.537 2.99l4.474-2.98 3.613 2.42-8.087 5.39v-4.82zm6.33-4.23l2.583-1.72v3.456l-2.583-1.73zm-1.855-1.24L13.042 7.8V2.97l8.085 5.39-3.612 2.415v.003z"/></svg>
      </a>
    </li>
    
    <li class="coinbase">
      <a class="bigger" href="https://www.coinbase.com/join/reibeg_4">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Coinbase icon</title><path d="M2.391 13.861c.089.195.204.37.341.524a1.975 1.975 0 0 1-.963.235C.744 14.62 0 13.944 0 12.866c0-1.086.782-1.762 1.769-1.762.351 0 .628.076.908.225-.131.16-.238.342-.32.541a1.388 1.388 0 0 0-.52-.098c-.607 0-1.078.388-1.078 1.094 0 .668.456 1.094 1.109 1.094.187 0 .36-.034.523-.099zm2.062-2.757c1.01 0 1.739.714 1.739 1.762 0 1.04-.729 1.754-1.739 1.754-1.002 0-1.731-.714-1.731-1.754 0-1.048.729-1.762 1.731-1.762zm0 .645c-.562 0-.972.433-.972 1.117 0 .676.41 1.109.972 1.109.577 0 .98-.433.98-1.109 0-.684-.403-1.117-.98-1.117zm2.217 2.795V11.18h.751v3.364H6.67zm-.099-4.397a.472.472 0 0 1 .942 0 .48.48 0 0 1-.471.478.48.48 0 0 1-.471-.478zm1.506 1.246a4.49 4.49 0 0 1 1.541-.289c.858 0 1.405.326 1.405 1.276v2.164h-.744v-2.096c0-.486-.304-.661-.721-.661a2.59 2.59 0 0 0-.729.099v2.658h-.752v-3.151zm3.575-2.013h.752v1.891c.159-.084.471-.167.766-.167.972 0 1.701.623 1.701 1.701 0 1.086-.721 1.815-1.966 1.815-.486 0-.911-.098-1.253-.22V9.38zm.752 4.527c.144.045.334.068.524.068.69 0 1.184-.38 1.184-1.155 0-.653-.463-1.04-1.032-1.04a1.41 1.41 0 0 0-.676.159v1.968zm4.638-1.618c0-.365-.273-.532-.645-.532a1.9 1.9 0 0 0-.972.273v-.653a2.241 2.241 0 0 1 1.093-.273c.737 0 1.26.304 1.26 1.147v2.225a5.026 5.026 0 0 1-1.153.137c-.873 0-1.511-.266-1.511-1.026 0-.683.584-1.017 1.556-1.017h.372v-.281zm0 .782h-.319c-.524 0-.865.152-.865.494 0 .349.319.486.774.486.114 0 .274-.016.41-.038v-.942zm1.283.562c.311.235.683.38 1.025.38.334 0 .554-.114.554-.38 0-.274-.197-.372-.63-.486-.698-.16-.995-.441-.995-1.025 0-.684.517-1.018 1.2-1.018.38 0 .683.083.964.258v.691c-.296-.212-.584-.342-.941-.342-.327 0-.501.16-.501.38s.144.334.531.441c.767.167 1.101.455 1.101 1.063 0 .706-.539 1.025-1.268 1.025-.395 0-.789-.106-1.04-.273v-.714zm3.337-.6v.015c.045.6.562.927 1.085.927.463 0 .798-.107 1.131-.327v.661c-.303.213-.751.311-1.184.311-1.047 0-1.761-.668-1.761-1.731 0-1.071.698-1.785 1.625-1.785.979 0 1.442.63 1.442 1.549v.38h-2.338zm1.632-.486c-.015-.524-.273-.813-.759-.813-.433 0-.752.304-.85.813h1.609z"/></svg>
      </a>
    </li>
    <li class="brave">
      <a href="https://brave.com/ivo485">
        <svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Brave icon</title><path d="M21.618 6.028l.623 1.786a.5.5 0 0 1 .011.289l-.025.097-.072.274-.257.979-.781 2.972c-.613 2.337-1.015 3.876-1.112 4.259-.527 2.087-.945 2.812-2.296 3.766-1.184.836-3.653 2.514-4.128 2.811a4.76 4.76 0 0 0-.162.107l-.187.128a4.07 4.07 0 0 1-.573.34c-.225.105-.44.164-.659.164s-.434-.059-.659-.164a4.07 4.07 0 0 1-.573-.34l-.187-.128a6.998 6.998 0 0 0-.162-.107c-.475-.298-2.944-1.975-4.128-2.811-1.351-.954-1.769-1.679-2.296-3.766-.097-.383-.499-1.922-1.107-4.242l-.785-2.99-.257-.979-.072-.274-.025-.097a.5.5 0 0 1 .011-.289l.623-1.786-.467-1.152a.495.495 0 0 1 .096-.523l.122-.13c.097-.103.207-.22.329-.347.346-.363.71-.738 1.077-1.105.351-.352.823-.542 1.374-.607a4.566 4.566 0 0 1 1.388.067L8.113.167a.491.491 0 0 1 .37-.168h7.038c.142 0 .276.061.37.168l1.811 2.063a4.565 4.565 0 0 1 1.388-.067c.552.065 1.023.254 1.374.607a78.307 78.307 0 0 1 1.495 1.548c.163.175.2.379.128.557l-.467 1.152zm-.992.149a.494.494 0 0 1 .009-.349l.418-1.031-.226-.238a66.931 66.931 0 0 0-1.062-1.09c-.174-.174-.442-.282-.791-.323a3.626 3.626 0 0 0-1.033.046c-.08.014-.153.029-.216.044l-.069.017a.49.49 0 0 1-.502-.15L15.297.988H8.704L6.847 3.103a.494.494 0 0 1-.502.15 3.871 3.871 0 0 0-.285-.061 3.663 3.663 0 0 0-1.033-.046c-.349.041-.618.149-.791.323a71.363 71.363 0 0 0-1.288 1.328l.418 1.031a.5.5 0 0 1 .009.349l-.634 1.82.059.225.257.979.781 2.973a879.38 879.38 0 0 1 1.114 4.268c.474 1.878.776 2.401 1.908 3.201 1.17.827 3.627 2.495 4.083 2.782.057.036.117.075.192.127l.187.128c.191.129.318.207.436.262.105.049.187.071.243.071s.137-.022.243-.071c.118-.055.246-.133.436-.262l.187-.128c.076-.051.135-.091.192-.127.456-.286 2.913-1.955 4.083-2.782 1.132-.8 1.434-1.323 1.908-3.201.098-.388.499-1.925 1.11-4.251l.785-2.99.257-.979.059-.225-.634-1.82zm-3.665-1.953s2.578 3.128 2.578 3.796-.324.845-.65 1.192l-1.933 2.06c-.183.195-.563.49-.34 1.022s.554 1.209.187 1.895c-.367.686-.997 1.145-1.4 1.069s-1.35-.573-1.698-.799-1.452-1.141-1.452-1.49c0-.35 1.141-.977 1.352-1.12s1.172-.695 1.192-.911c.02-.217.012-.28-.272-.816s-.795-1.25-.71-1.725c.085-.475.909-.722 1.497-.945s1.72-.644 1.862-.709c.141-.066.105-.128-.324-.169s-1.644-.203-2.192-.049-1.485.387-1.56.51c-.076.124-.143.128-.065.555s.479 2.475.518 2.839c.039.364.115.604-.276.694s-1.049.245-1.275.245-.884-.156-1.275-.245c-.391-.09-.315-.33-.276-.694s.44-2.412.518-2.839c.078-.427.011-.431-.065-.555s-1.012-.357-1.56-.51-1.764.009-2.192.049c-.428.041-.465.103-.324.169s1.274.486 1.862.709c.588.223 1.412.47 1.497.945s-.426 1.19-.71 1.725c-.284.535-.291.599-.272.816s.981.769 1.192.911c.211.143 1.352.77 1.352 1.12s-1.104 1.263-1.452 1.49-1.295.724-1.698.799c-.403.076-1.033-.382-1.4-1.069s-.037-1.363.187-1.895-.157-.827-.34-1.022l-1.933-2.06c-.326-.347-.65-.524-.65-1.192 0-.668 2.578-3.796 2.578-3.796s2.175.417 2.468.417c.293 0 .929-.245 1.515-.442S12 4.001 12 4.001s.391.001.978.198 1.222.442 1.515.442c.293 0 2.468-.417 2.468-.417zm-1.932 11.964c.16.1.062.289-.083.392s-2.098 1.621-2.288 1.789c-.19.168-.468.445-.658.445s-.468-.277-.658-.445c-.19-.168-2.143-1.686-2.288-1.789s-.243-.292-.083-.392c.16-.1.659-.353 1.348-.711s1.547-.662 1.681-.662.992.304 1.681.662c.689.358 1.188.611 1.347.711z"/></svg>
      </a>
    </li>
  </ul>
</footer>

      </body>
    </html>
  </xsl:template>
  <xsl:template match="sitemap:sitemapindex">
    <div>
      <div>
        <table cellspacing="0">
          <thead>
            <tr>
              <th>#</th>
              <th class="text-left">URL</th>
              <th>Last Modified</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="sitemap:sitemap">
              <tr>
                <xsl:variable name="loc">
                  <xsl:value-of select="sitemap:loc"/>
                </xsl:variable>
                <xsl:variable name="pno">
                  <xsl:value-of select="position()"/>
                </xsl:variable>
                <td>
                  <xsl:value-of select="$pno"/>
                </td>
                <td>
                  <a href="{$loc}">
                    <xsl:value-of select="sitemap:loc"/>
                  </a>
                </td>
                <xsl:if test="sitemap:lastmod">
                  <td>
                    <xsl:value-of select="concat(substring(sitemap:lastmod, 0, 11), concat(' ', substring(sitemap:lastmod, 12, 5)), concat(' ', substring(sitemap:lastmod, 20, 6)))"/>
                  </td>
                </xsl:if>
                <xsl:apply-templates/>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="sitemap:urlset">
    <div>
      <div>
        <table cellspacing="0">
          <thead>
            <tr>
              <th></th>
              <th>URL</th>
              <xsl:if test="sitemap:url/sitemap:changefreq">
                <th>Change&#160;Freq.</th>
              </xsl:if>
              <xsl:if test="sitemap:url/sitemap:priority">
                <th>Priority</th>
              </xsl:if>
              <xsl:if test="sitemap:url/sitemap:lastmod">
                <th>Last Modified</th>
              </xsl:if>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="sitemap:url">
              <tr>
                <xsl:variable name="loc">
                  <xsl:value-of select="sitemap:loc"/>
                </xsl:variable>
                <xsl:variable name="pno">
                  <xsl:value-of select="position()"/>
                </xsl:variable>
                <td>
                  <xsl:value-of select="$pno"/>
                </td>
                <td>
                  <p>
                    <a href="{$loc}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </p>
                  <xsl:apply-templates select="xhtml:*"/>
                  <xsl:apply-templates select="image:*"/>
                  <xsl:apply-templates select="video:*"/>
                </td>
                <xsl:apply-templates select="sitemap:changefreq"/>
                <xsl:apply-templates select="sitemap:priority"/>
                <xsl:if test="sitemap:lastmod">
                  <td>
                    <xsl:value-of select="concat(substring(sitemap:lastmod, 0, 11), concat(' ', substring(sitemap:lastmod, 12, 5)))"/>
                  </td>
                </xsl:if>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="sitemap:loc|sitemap:lastmod|image:loc|image:caption|video:*"></xsl:template>
  <xsl:template match="sitemap:changefreq|sitemap:priority">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>
  <xsl:template match="xhtml:link">
    <xsl:variable name="altloc">
      <xsl:value-of select="@href"/>
    </xsl:variable>
    <p>
      <strong>Xhtml: </strong>
      <a href="{$altloc}">
        <xsl:value-of select="@href"/>
      </a>
      <xsl:if test="@hreflang">
        <small>
          <xsl:value-of select="@hreflang"/>
        </small>
      </xsl:if>
      <xsl:if test="@rel">
        <small>
          <xsl:value-of select="@rel"/>
        </small>
      </xsl:if>
      <xsl:if test="@media">
        <small>
          <xsl:value-of select="@media"/>
        </small>
      </xsl:if>
    </p>
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="image:image">
    <xsl:variable name="loc">
      <xsl:value-of select="image:loc"/>
    </xsl:variable>
    <p>
      <strong>Image: </strong>
      <a href="{$loc}">
        <xsl:value-of select="image:loc"/>
      </a>
      <xsl:if test="image:caption">
        <span>
          <xsl:value-of select="image:caption"/>
        </span>
      </xsl:if>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  <xsl:template match="video:video">
    <xsl:variable name="loc">
      <xsl:choose>
        <xsl:when test="video:player_loc != ''">
          <xsl:value-of select="video:player_loc"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="video:content_loc"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="thumb_loc">
      <xsl:value-of select="video:thumbnail_loc"/>
    </xsl:variable>
    <p>
      <strong>Video: </strong>
      <a href="{$loc}">
        <xsl:choose>
          <xsl:when test="video:player_loc != ''">
            <xsl:value-of select="video:player_loc"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="video:content_loc"/>
          </xsl:otherwise>
        </xsl:choose>
      </a>
      <a href="{$thumb_loc}">thumb</a>
      <xsl:if test="video:title">
        <span>
          <xsl:value-of select="video:title"/>
        </span>
      </xsl:if>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
</xsl:stylesheet>
