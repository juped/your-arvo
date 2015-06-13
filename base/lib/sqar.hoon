~%  %util  +>  ~
|%
++  kids  (list inline)
++  inline
  =+  ^=  inlik
      $%  [%emph p=?]                                   ::  strong?
          [%delt ~]                                     ::  strikethrough
          [%link p=tape q=(unit tape)]
          [%blot p=tape q=(unit tape)]                  ::  image
      ==
  =+  ^=  inlin
      $%  [%$ p=tape]
          [%line ~]
          [%code p=tape]
          [%html p=cord]
      ==
  $&([p=inlik q=kids] inlin)
::
::
++  elem  $&(tops node)
++  tops                                                ::  childful block
  $:  $=  p
      $%  [%bloq ~]
          [%list p=? q=$|(char [p=@u q=char])]          ::  tight, ordered?
          [%item ~]
      ==
      q=(list elem)
  ==
:: ++  mist  |*(a=_,* ,[i=a t=$|(~ (mist a))])             ::  .=(%mist +(%list))
++  node                                                ::  childless block
  $%  [%para p=kids]
      [%hrul ~]
      [%head p=@u q=kids]
      [%code p=(unit ,[p=char q=@u r=tape]) q=wain]     ::  info, contents
      [%html p=wain]
      [%defn ~]                                         ::  empty para
  ==
::
++  sqar
  ~/  %sqar
  |=  @t
  *(list elem)
--