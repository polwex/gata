/-   *gata
/+  default-agent, dbug
|%
+$  versioned-state
  $%  state-0
  ==
+$  state-0  [%0 =quilt]
+$  card  card:agent:gall
++  chat-subscribe-card
  |=  =ship
  [%pass /chat/updates %agent [ship %channels] %watch /v3/chat/(scot %p ship)/tm-wayfinding-group-chat]
++  run-thread-card
  |=  [call=cord =command =flag:chat text=cord =memo:chat]
  ^-  card
  =/  =bird  [text memo flag vase.command]
  :*  %pass  /result/[call]/(scot %p p.flag)/[q.flag]  %arvo  %k  %fard
      desk.ted.command  name.ted.command  %noun
      !>(bird)
  ==
++  message-card
  |=  [our=ship =action:chat]
  ^-  card
  [%pass /chat/poke %agent [our %channels] %poke %channel-action-1 !>(action)]
++  find-slash
  |=  =memo:chat
  ^-  (unit [tape tape])
  ::  find the first raw text segment
  =/  first=cord
    =/  verses  content.memo
    |-  ?~  verses  !!
      ?:  ?=(%inline -.i.verses)
        =/  inlines  p.i.verses
        |-
          ?~  inlines  !!
          ?@  i.inlines  i.inlines
          $(inlines t.inlines)

      $(verses t.verses)
    
  :: =/  [call=tape text=tape]  (scan (trip first) slash-command-rule)
  :: [(crip call) (crip call)]

  (rust (trip first) slash-command-rule)

::  "/mycommand lorem ipsum" to ["mycommand" "lorem ipsum"]
++  slash-command-rule
  ;~  (glue (star ace))
    ;~  pfix
      fas
      (plus alp)
    ==
    (star next)
  ==
++  message
  |=  [=id:chat =flag:chat =content:chat]
  ^-  action:chat
  =/  =memo:chat  [content id]
  :-  %channel
  :-  [%chat flag]
  :-  %post
  :-  %add
  :-  memo
  :-  /chat
  :-  ~  ~


++  reply-to-content
  |=  =reply
  ^-  content:chat
  ?^  reply  reply
  ?~  reply  !!  ::  nande?
  :~  [%inline :~(reply)]
  ==
++  replace-vase
  |=  [q=quilt call=cord =vase]
  ^-  quilt
  =/  =command  (~(got by q) call)
  (~(put by q) call [ted.command vase])
--
%-  agent:dbug
=|  state-0
=*  state  -
^-  agent:gall
|_  =bowl:gall
+*  this  .
    def   ~(. (default-agent this %.n) bowl)
++  on-init
  ^-  (quip card _this)
  :_  this
  ~[(chat-subscribe-card our.bowl)]
++  on-save
  ^-  vase
  !>  state
++  on-load
  |=  old-state=vase
  ^-  (quip card _this)
  `this(state !<(versioned-state old-state))
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark  !!
      %add
    =/  [call=cord =command]  !<([cord command] vase)
    `this(quilt (~(put by quilt) call command))
  ::
  ::  %add and %set are aliases for each other
      %set
    =/  [call=cord =command]  !<([cord command] vase)
    `this(quilt (~(put by quilt) call command))
  ::
      %remove
    =/  call=cord  !<(cord vase)
    `this(quilt (~(del by quilt) call))
  ==
++  on-watch  on-watch:def
++  on-leave  on-leave:def
++  on-peek   on-peek:def
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ?+  wire  (on-agent:def wire sign)
      [%chat %updates ~]
    ?+    -.sign  (on-agent:def wire sign)
      %watch-ack  `this
        %kick
      :_  this
      ~[(chat-subscribe-card our.bowl)]
    ::
        %fact
        ?+    p.cage.sign  `this
            %channel-response-4 
          =/  =fact:chat  !<(fact:chat q.cage.sign)
          =/  =flag:chat  +.nest.fact
          ?.  ?=(%post -.r-channel.fact)  `this
          ?.  ?=(%set -.r-post.r-channel.fact)  `this
          =/  up  post.r-post.r-channel.fact
          ?.  ?=(%.y -.up)  `this
          =/  =post:chat  +.up
          =/  =essay:chat  +>.post
          =/  =memo:chat  -.essay
          =/  ucall  (find-slash memo)
          ?~  ucall  `this
          =/  call  %-  crip  -.u.ucall
          =/  text  %-  crip  +.u.ucall
          =/  =command  (~(got by quilt) call)
          :_  this
          ~[(run-thread-card call command flag text memo)]
        ==
    ==
  ==
++  on-arvo
  |=  [=wire sign=sign-arvo]
  ^-  (quip card _this)
  ?+  wire  (on-arvo:def wire sign)
      [%result cord cord cord *]
    =/  [%result call=cord ship-cord=cord chat=cord *]  wire
    =/  =ship  (slav %p ship-cord)
    ?+  sign  (on-arvo:def wire sign)
        [%khan %arow %.y %noun *]
      =/  [%khan %arow %.y %noun result=vase]  sign
      =/  =tuna  !<(tuna result)
      :_  this(quilt (replace-vase quilt call vase.tuna))
      :~  %+  message-card  our.bowl
        (message [our.bowl now.bowl] [ship chat] (reply-to-content reply.tuna))
      ==
    ==
  ==
++  on-fail   on-fail:def
--
