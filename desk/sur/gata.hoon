/-  channels=groups-channels, story=groups-story, gchat=groups-chat, gv=groups-groups-ver
|%
::  each command is a thread with a vase to store state or configuration such as API keys
::
::  if your thread is in the %foo desk at /ted/ping/pong/hoon, this would be
::  [%foo %ping-pong]
+$  ted  [desk=term name=term]
+$  command  [=ted =vase]
+$  quilt  (map call=cord command)
::  your thread is passed a bird when it runs
::  text is the first plaintext element from the triggering message, minus the "/foo " command
::  memo is the raw chat message
::  vase is taken from the quilt
+$  bird  [text=cord =memo:channels =flag:chat =vase]
::  your thread should return a tuna
::  reply is the message you're sending
::  flag is where to send the reply. you can get it from memo.
::  you can update your command's state or config by returning a different vase
+$  tuna  [=reply =vase]
::  you can return either a cord or a full formatted chat message
+$  reply  $@(cord story:story)

:: groups shit
++  chat
  |%
  +$  id  id:gchat
  +$  flag  (pair ship term)
  +$  action  a-channels:channels
  +$  fact    r-channels:channels  ::  r for response wtf
  +$  post   post:channels
  +$  essay  essay:channels
  +$  memo    memo:channels
  +$  content  story:story
  +$  verse    verse:story
  +$  inline   inline:story
--
--
:: {"json":{"nest":"chat/~hostyr-docteg-mothep/urbit","response":{"post":{"id":"170141184507838611197726795333709594624","r-post":{"set":{"revision":"0","seal":{"id":"170141184507838611197726795333709594624","replies":{},"mod-at":"170141184507838611197726795333709594624","reacts":{},"seq":14838,"meta":{"replyCount":0,"lastReply":null,"lastRepliers":[]}},"essay":{"author":"~docteg-mothep","sent":1771935637820,"kind":"/chat","blob":null,"content":[{"inline":[". ",{"break":null}]}],"meta":{"image":"","title":"","cover":"","description":""}},"type":"post"}}}}},"id":1,"mark":"channel-response-3","response":"diff"}


:: {"json":{"nest":"chat/~hostyr-docteg-mothep/urbit","reference":{"post":{"seal":{"id":"170141184507800920222263157551888596992","replies":{},"reacts":{},"meta":{"replyCount":0,"lastReply":null,"lastRepliers":[]}},"essay":{"author":"~mallet-rilmul","kind-data":{"chat":null},"sent":1769892405918,"content":[{"inline":["Speak of, y’all send me an album pick you want to subject humanity to. Otherwise we are looking at a week of Scandinavian death metal ",{"break":null}]}]},"type":"post"}}},"id":29,"mark":"channel-said","response":"diff"}

:: {"json":{"nest":"chat/~docteg-mothep/dev","response":{"post":{"id":"170141184507838613330179811518755897344","r-post":{"set":{"revision":"0","seal":{"id":"170141184507838613330179811518755897344","replies":{},"mod-at":"170141184507838613330179811518755897344","reacts":{},"seq":66,"meta":{"replyCount":0,"lastReply":null,"lastRepliers":[]}},"essay":{"author":"~docteg-mothep","sent":1771935754098,"kind":"/chat","blob":null,"content":[{"inline":["yoyo ",{"break":null}]}],"meta":{"image":"","title":"","cover":"","description":""}},"type":"post"}}}}},"id":1,"mark":"channel-response-3","response":"diff"}
:: [
::     {
::         "id": 37,
::         "action": "poke",
::         "ship": "docteg-mothep",
::         "app": "channels",
::         "mark": "channel-action-1",
::         "json": {
::             "channel": {
::                 "nest": "chat/~docteg-mothep/dev",
::                 "action": {
::                     "post": {
::                         "add": {
::                             "content": [
::                                 {
::                                     "inline": [
::                                         "yoyo ",
::                                         {
::                                             "break": null
::                                         }
::                                     ]
::                                 }
::                             ],
::                             "sent": 1771935754098,
::                             "kind": "/chat",
::                             "author": "~docteg-mothep",
::                             "blob": null,
::                             "meta": {
::                                 "title": "",
::                                 "image": "",
::                                 "description": "",
::                                 "cover": ""
::                             }
::                         }
::                     }
::                 }
::             }
::         }
::     }
:: ]
