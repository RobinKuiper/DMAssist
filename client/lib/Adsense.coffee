@Adsense =
  add: (target, code) ->
    $.getScript "http://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", ->
      ads = '<ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-2044382203546332" data-ad-slot="'+code+'" data-ad-format="auto"></ins>'
      $(target).html(ads)
      [].forEach.call document.querySelectorAll('.adsbygoogle'), ->
        (adsbygoogle = window.adsbygoogle || []).push({});