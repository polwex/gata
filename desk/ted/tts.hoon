/-  spider, *gata
/+  strandio
::
::  this is common setup for all threads
::  https://developers.urbit.org/reference/arvo/threads/overview
::
=,  strand=strand:spider
=/  m  (strand ,vase)
^-  thread:spider
|=  arg=vase
^-  form:m
::
|^
::  see sur/gato.hoon for type definitions
::
=/  =bird  !<(bird arg)
=/  voice  'yarv'
=/  author=@p  ?@  author.memo.bird  author.memo.bird
  ship.author.memo.bird
=/  mention=inline:chat  [%ship author]
;<  url=inline:chat  bind:m  (request voice text.bird)

%-  pure:m
=/  =reply  :~  :-  %inline  :~(mention '   ' url)
            ==
!>  [reply vase.bird]

++  url  'http://localhost:9100/voice'
++  request  
  |=  [voice=@t text=@t]
  =/  m  (strand ,inline:chat)
  ^-  form:m
  =/  ijon=json  %-  pairs:enjs:format
    :~  :-  %voice  s+voice
        :-  %text   s+text
        :-  %blob   b+.n
    ==
  =/  =request:http
    :*  method=%'POST'
        url=url
        header-list=['Content-Type'^'application/json' ~]
        ^=  body
        %-  some  %-  as-octs:mimes:html
        %-  en:json:html
        ijon
    ==
  ;<  ~  bind:m  (send-request:strandio request)
  ;<  rep=(unit client-response:iris)  bind:m  take-maybe-response:strandio
  ?~  rep  (strand-fail:strandio %idk ~)
  ;<  cord=@t  bind:m  (extract-body:strandio u.rep)
  =/  jon=(unit json)  (de:json:html cord)
  ?~  jon
    (strand-fail:strandio %json-parse-error ~)
  ?.  ?=(%s -.u.jon)
    (strand-fail:strandio %json-parse-error ~)
  =/  s3-url=@t  p.u.jon
  =/  i=inline:chat  [%link s3-url 'click to listen']
  (pure:m i)

--
