let hackernews_styles =  `
body {
 background-color: #111111;
}
tr,
table,
td {
 background-color: #1e1e1e;
 color: #ffffff;
}

a:link {
 color: #ffffff !important;;
}

a, a.hnuser, a.clicky, a#me, a#logout {
  color: #c9c9c9 !important;
}

a:hover,
a:link:hover {
 color: #f4731d !important;
 ;
}
input,
input:focus,
textarea,
textarea:focus {
 background-color: #1c1c1c;
 color: #dddddd;
 border: 1px solid #f4731d;
 outline: none;
}
input[type=submit] {
 cursor: pointer;
 background-color: #1c1c1c;
 width: 20%;
 padding: 3;
}
input[type=submit]:focus,
input[type=submit]:hover {
 background-color: #f4731d;
 color: #dddddd;
 border: 1px solid #f4731d;
 outline: none;
}
b,
.toptext,
.subtext,
.commhead {
 color: #c9c9c9;
}

.commtext {
  color:#ffffff;
}
.title {
 color: #f4731d;
}
`;

let twitter_styles = `
.css-1dbjc4n.r-g2wdr4.r-14wv3jr.r-1867qdf.r-1phboty.r-rs99b7.r-1ifxtd0.r-1udh08x {
      display: none;
}
`;

let current_url = window.location.href;
let stylesheet = document.createElement("style");
stylesheet.type = "text/css";
if (current_url.indexOf("https://news.ycombinator.com") > -1){
    stylesheet.innerText = hackernews_styles;
    document.head.appendChild(stylesheet);
} else if (current_url.indexOf("https://twitter.com") > -1) {
    stylesheet.innerText = twitter_styles;
    document.head.appendChild(stylesheet);
}
