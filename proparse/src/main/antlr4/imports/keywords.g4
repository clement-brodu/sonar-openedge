// Generated file - Do not manually edit

parser grammar keywords;

options {
  tokenVocab=BaseTokenTypes;
}

argFunction:
  (
    AACBIT
  | AAMSG
  | ABSOLUTE
  | ADDINTERVAL
  | ALIAS
  | ASC
  | ASCENDING
  | AVG
  | BASE64DECODE
  | BASE64ENCODE
  | BOX
  | BUFFERGROUPID
  | BUFFERGROUPNAME
  | BUFFERPARTITIONID
  | BUFFERTENANTID
  | BUFFERTENANTNAME
  | CANDO
  | CANQUERY
  | CANSET
  | CAPS
  | CHR
  | CODEPAGECONVERT
  | COLLATE
  | COMPARE
  | COMPARES
  | CONNECTED
  | COUNT
  | COUNTOF
  | CURRENTRESULTROW
  | DATE
  | DATETIME
  | DATETIMETZ
  | DAY
  | DBCODEPAGE
  | DBCOLLATION
  | DBPARAM
  | DBREMOTEHOST
  | DBRESTRICTIONS
  | DBTASKID
  | DBTYPE
  | DBVERSION
  | DECIMAL
  | DECRYPT
  | DYNAMICCAST
  | DYNAMICENUM
  | DYNAMICNEXTVALUE
  | DYNAMICPROPERTY
  | ENCODE
  | ENCRYPT
  | ENTRY
  | ETIME
  | EXP
  | EXTENT
  | FILL
  | FIRST
  | FIRSTOF
  | GENERATEPBEKEY
  | GETBITS
  | GETBYTE
  | GETBYTEORDER
  | GETBYTES
  | GETCODEPAGE
  | GETCODEPAGES
  | GETCOLLATIONS
  | GETDOUBLE
  | GETFLOAT
  | GETINT64
  | GETLICENSE
  | GETLONG
  | GETPOINTERVALUE
  | GETSHORT
  | GETSIZE
  | GETSTRING
  | GETUNSIGNEDLONG
  | GETUNSIGNEDSHORT
  | HANDLE
  | HEXDECODE
  | HEXENCODE
  | INDEX
  | INT64
  | INTEGER
  | INTERVAL
  | ISCODEPAGEFIXED
  | ISCOLUMNCODEPAGE
  | ISDBMULTITENANT
  | ISLEADBYTE
  | ISODATE
  | KBLABEL
  | KEYCODE
  | KEYFUNCTION
  | KEYLABEL
  | KEYWORD
  | KEYWORDALL
  | LAST
  | LASTOF
  | LC
  | LDBNAME
  | LEFTTRIM
  | LENGTH
  | LIBRARY
  | LISTEVENTS
  | LISTQUERYATTRS
  | LISTSETATTRS
  | LISTWIDGETS
  | LOADPICTURE
  | LOG
  | LOGICAL
  | LOOKUP
  | MAXIMUM
  | MD5DIGEST
  | MEMBER
  | MESSAGEDIGEST
  | MINIMUM
  | MONTH
  | MTIME
  | NORMALIZE
  | NUMENTRIES
  | NUMRESULTS
  | OSGETENV
  | PDBNAME
  | PROGRAMNAME
  | PROVERSION
  | QUERYOFFEND
  | QUOTER
  | RANDOM
  | RAW
  | REPLACE
  | RGBVALUE
  | RIGHTTRIM
  | RINDEX
  | ROUND
  | SDBNAME
  | SEARCH
  | SETDBCLIENT
  | SETEFFECTIVETENANT
  | SETUSERID
  | SHA1DIGEST
  | SQRT
  | SSLSERVERNAME
  | STRING
  | SUBSTITUTE
  | SUBSTRING
  | SUM
  | TENANTNAMETOID
  | TIMEZONE
  | TOROWID
  | TRIM
  | TRUNCATE
  | UNBOX
  | USER
  | USERID
  | VALIDEVENT
  | VALIDHANDLE
  | VALIDOBJECT
  | WEEKDAY
  | WIDGETHANDLE
  | YEAR
  )
  functionArgs
;

recordFunction:
  (
    AMBIGUOUS
  | AVAILABLE
  | CURRENTCHANGED
  | DATASOURCEMODIFIED
  | ERROR
  | LOCKED
  | NEW
  | RECID
  | RECORDLENGTH
  | REJECTED
  | ROWID
  | ROWSTATE
  )
  ( LEFTPAREN record RIGHTPAREN | record )
;

optionalArgFunction:
  (
    AUDITENABLED
  | GETDBCLIENT
  | GETEFFECTIVETENANTID
  | GETEFFECTIVETENANTNAME
  | GUID
  | SUPER
  | TENANTID
  | TENANTNAME
  )
  optionalFunctionArgs
;

noArgFunction:
  AACONTROL
| AAPCONTROL
| AASERIAL
| CURRENTDATE
| CURRENTLANGUAGE
| CURSOR
| DATASERVERS
| DBNAME
| ETIME
| FRAMECOL
| FRAMEDB
| FRAMEDOWN
| FRAMEFIELD
| FRAMEFILE
| FRAMEINDEX
| FRAMELINE
| FRAMENAME
| FRAMEROW
| FRAMEVALUE
| GENERATEPBESALT
| GENERATERANDOMKEY
| GENERATEUUID
| GETCODEPAGES
| GETDBCLIENT
| GOPENDING
| GUID
| ISATTRSPACE
| LASTKEY
| LINECOUNTER
| MACHINECLASS
| MESSAGELINES
| MTIME
| NOW
| NUMALIASES
| NUMDBS
| OPSYS
| OSDRIVES
| OSERROR
| PAGENUMBER
| PAGESIZE
| PROCESSARCHITECTURE
| PROCHANDLE
| PROCSTATUS
| PROGRESS
| PROMSGS
| PROPATH
| PROVERSION
| RETRY
| RETURNVALUE
| SCREENLINES
| TERMINAL
| TIME
| TIMEZONE
| TODAY
| TRANSACTION
| USER
| USERID
;

// SUPER is excluded from this list as this keyword can be used in various cases
// Having it here breaks the SLL prediction mode, so ANTLR has to switch to the
// slower LL prediction mode
systemHandleName:
  AAMEMORY
| ACTIVEFORM
| ACTIVEWINDOW
| AUDITCONTROL
| AUDITPOLICY
| CLIPBOARD
| CODEBASELOCATOR
| COLORTABLE
| COMPILER
| COMSELF
| CURRENTWINDOW
| DEBUGGER
| DEFAULTWINDOW
| DSLOGMANAGER
| ERRORSTATUS
| FILEINFORMATION
| FOCUS
| FONTTABLE
| LASTEVENT
| LOGMANAGER
| MOUSE
| PROFILER
| RCODEINFORMATION
| SECURITYPOLICY
| SELF
| SESSION
| SOURCEPROCEDURE
| TARGETPROCEDURE
| TEXTCURSOR
| THISOBJECT
| THISPROCEDURE
| WEBCONTEXT
;

unreservedkeyword:
  AACBIT
| AACONTROL
| AALIST
| AAMEMORY
| AAMSG
| AAPCONTROL
| AASERIAL
| AATRACE
| ABORT
| ABSOLUTE
| ABSTRACT
| ACCELERATOR
| ACCEPTCHANGES
| ACCEPTROWCHANGES
| ACROSS
| ACTIVE
| ACTOR
| ADDBUFFER
| ADDCALCCOLUMN
| ADDCOLUMNSFROM
| ADDEVENTSPROCEDURE
| ADDFIELDSFROM
| ADDFIRST
| ADDHEADERENTRY
| ADDINDEXFIELD
| ADDINTERVAL
| ADDLAST
| ADDLIKECOLUMN
| ADDLIKEFIELD
| ADDLIKEINDEX
| ADDNEWFIELD
| ADDNEWINDEX
| ADDPARENTIDRELATION
| ADDRELATION
| ADDSCHEMALOCATION
| ADDSOURCEBUFFER
| ADDSUPERPROCEDURE
| ADMDATA
| ADVISE
| AFTERBUFFER
| AFTERROWID
| AFTERTABLE
| AGGREGATE
| ALERTBOX
| ALLOWCOLUMNSEARCHING
| ALLOWPREVDESERIALIZATION
| ALLOWREPLICATION
| ALTERNATEKEY
| ALWAYSONTOP
| ANALYZE
| ANSIONLY
| ANYKEY
| ANYPRINTABLE
| ANYWHERE
| APPEND
| APPENDCHILD
| APPENDLINE
| APPLALERTBOXES
| APPLCONTEXTID
| APPLICATION
| APPLYCALLBACK
| APPSERVERINFO
| APPSERVERPASSWORD
| APPSERVERUSERID
| ARRAYMESSAGE
| ASCURSOR
| ASKOVERWRITE
| ASSEMBLY
| ASYNCREQUESTCOUNT
| ASYNCREQUESTHANDLE
| ATTACH
| ATTACHDATASOURCE
| ATTACHEDPAIRLIST
| ATTACHMENT
| ATTRIBUTENAMES
| ATTRIBUTETYPE
| AUDITENABLED
| AUDITEVENTCONTEXT
| AUTHENTICATIONFAILED
| AUTOCOMPLETION
| AUTODELETE
| AUTODELETEXML
| AUTOENDKEY
| AUTOGO
| AUTOINDENT
| AUTOMATIC
| AUTORESIZE
| AUTOSYNCHRONIZE
| AUTOVALIDATE
| AUTOZAP
| AVAILABLEFORMATS
| AVERAGE
| AVG
| BACKSPACE
| BACKTAB
| BACKWARDS
| BASE64
| BASE64DECODE
| BASE64ENCODE
| BASEADE
| BASEKEY
| BASICLOGGING
| BATCH
| BATCHMODE
| BATCHSIZE
| BEFOREBUFFER
| BEFOREROWID
| BEFORETABLE
| BEGINEVENTGROUP
| BGCOLOR
| BIGINT
| BINARY
| BIND
| BINDWHERE
| BLOB
| BLOCK
| BLOCKITERATIONDISPLAY
| BLOCKLEVEL
| BORDERBOTTOM
| BORDERBOTTOMCHARS
| BORDERBOTTOMPIXELS
| BORDERLEFT
| BORDERLEFTCHARS
| BORDERLEFTPIXELS
| BORDERRIGHT
| BORDERRIGHTCHARS
| BORDERRIGHTPIXELS
| BORDERTOP
| BORDERTOPCHARS
| BORDERTOPPIXELS
| BOTH
| BOTTOM
| BOTTOMCOLUMN
| BOX
| BOXSELECTABLE
| BREAKLINE
| BROWSE
| BROWSECOLUMNDATATYPES
| BROWSECOLUMNFORMATS
| BROWSECOLUMNLABELS
| BROWSEHEADER
| BUFFER
| BUFFERCHARS
| BUFFERCREATE
| BUFFERDELETE
| BUFFERFIELD
| BUFFERGROUPID
| BUFFERGROUPNAME
| BUFFERHANDLE
| BUFFERLINES
| BUFFERNAME
| BUFFERPARTITIONID
| BUFFERRELEASE
| BUFFERTENANTID
| BUFFERTENANTNAME
| BUFFERVALIDATE
| BUFFERVALUE
| BUTTON
| BUTTONS
| BYREFERENCE
| BYTE
| BYTESREAD
| BYTESWRITTEN
| BYVALUE
| CACHE
| CACHESIZE
| CALLNAME
| CALLTYPE
| CANCELBREAK
| CANCELBUTTON
| CANCELLED
| CANCELPICK
| CANCELREQUESTS
| CANCELREQUESTSAFTER
| CANCREATE
| CANDELETE
| CANDODOMAINSUPPORT
| CANQUERY
| CANREAD
| CANSET
| CANWRITE
| CAPS
| CAREFULPAINT
| CATCH
| CDECL
| CHAINED
| CHARACTER
| CHARACTERLENGTH
| CHARSET
| CHECKED
| CHECKMEMSTOMP
| CHILDBUFFER
| CHILDNUM
| CHOICES
| CHOOSE
| CLASS
| CLASSTYPE
| CLEARAPPLCONTEXT
| CLEARLOG
| CLEARSELECTION
| CLEARSORTARROWS
| CLIENTCONNECTIONID
| CLIENTPRINCIPAL
| CLIENTTTY
| CLIENTTYPE
| CLIENTWORKSTATION
| CLOB
| CLONENODE
| CLOSE
| CLOSELOG
| CODE
| CODEPAGE
| CODEPAGECONVERT
| COLLATE
| COLOF
| COLONALIGNED
| COLORTABLE
| COLUMN
| COLUMNBGCOLOR
| COLUMNCODEPAGE
| COLUMNDCOLOR
| COLUMNFGCOLOR
| COLUMNFONT
| COLUMNLABELBGCOLOR
| COLUMNLABELDCOLOR
| COLUMNLABELFGCOLOR
| COLUMNLABELFONT
| COLUMNLABELHEIGHTCHARS
| COLUMNLABELHEIGHTPIXELS
| COLUMNMOVABLE
| COLUMNOF
| COLUMNPFCOLOR
| COLUMNREADONLY
| COLUMNRESIZABLE
| COLUMNS
| COLUMNSCROLLING
| COMBOBOX
| COMHANDLE
| COMMAND
| COMPARE
| COMPARES
| COMPILE
| COMPLETE
| CONFIGNAME
| CONNECT
| CONSTRAINED
| CONSTRUCTOR
| CONTAINEREVENT
| CONTAINS
| CONTENTS
| CONTEXT
| CONTEXTHELP
| CONTEXTHELPFILE
| CONTEXTHELPID
| CONTEXTPOPUP
| CONTROLBOX
| CONTROLCONTAINER
| CONTROLFRAME
| CONVERT
| CONVERT3DCOLORS
| CONVERTTOOFFSET
| COPY
| COPYDATASET
| COPYSAXATTRIBUTES
| COPYTEMPTABLE
| COUNT
| COVERAGE
| CPCASE
| CPCOLL
| CPINTERNAL
| CPLOG
| CPPRINT
| CPRCODEIN
| CPRCODEOUT
| CPTERM
| CRCVALUE
| CREATELIKE
| CREATELIKESEQUENTIAL
| CREATENODE
| CREATENODENAMESPACE
| CREATEONADD
| CREATERESULTLISTENTRY
| CREATETESTFILE
| CURRENCY
| CURRENTCOLUMN
| CURRENTENVIRONMENT
| CURRENTITERATION
| CURRENTQUERY
| CURRENTREQUESTINFO
| CURRENTRESPONSEINFO
| CURRENTRESULTROW
| CURRENTROWMODIFIED
| CURRENTVALUE
| CURSORCHAR
| CURSORDOWN
| CURSORLEFT
| CURSORLINE
| CURSOROFFSET
| CURSORRIGHT
| CURSORUP
| CUT
| DATABIND
| DATAENTRYRETURN
| DATAREFRESHLINE
| DATAREFRESHPAGE
| DATARELATION
| DATASOURCE
| DATASOURCECOMPLETEMAP
| DATASOURCEMODIFIED
| DATASOURCEROWID
| DATATYPE
| DATE
| DATEFORMAT
| DATETIME
| DATETIMETZ
| DAY
| DBCONTEXT
| DBIMS
| DBLIST
| DBREFERENCES
| DCOLOR
| DDEERROR
| DDEID
| DDEITEM
| DDENAME
| DDENOTIFY
| DDETOPIC
| DEBUG
| DEBUGALERT
| DEBUGSETTENANT
| DECIMAL
| DECLARENAMESPACE
| DECRYPT
| DEFAULTACTION
| DEFAULTBUFFERHANDLE
| DEFAULTBUTTON
| DEFAULTCOMMIT
| DEFAULTEXTENSION
| DEFAULTPOPUP
| DEFAULTSTRING
| DEFAULTVALUE
| DEFERLOBFETCH
| DEFINED
| DEFINEUSEREVENTMANAGER
| DEL
| DELEGATE
| DELETECHAR
| DELETECHARACTER
| DELETECOLUMN
| DELETECURRENTROW
| DELETEENDLINE
| DELETEFIELD
| DELETEHEADERENTRY
| DELETELINE
| DELETENODE
| DELETERESULTLISTENTRY
| DELETESELECTEDROW
| DELETESELECTEDROWS
| DELETEWORD
| DESCRIPTION
| DESELECT
| DESELECTEXTEND
| DESELECTFOCUSEDROW
| DESELECTION
| DESELECTIONEXTEND
| DESELECTROWS
| DESELECTSELECTEDROW
| DESTRUCTOR
| DETACH
| DETACHDATASOURCE
| DIALOGBOX
| DIALOGHELP
| DIR
| DIRECTORY
| DISABLEAUTOZAP
| DISABLECONNECTIONS
| DISABLED
| DISABLEDUMPTRIGGERS
| DISABLELOADTRIGGERS
| DISMISSMENU
| DISPLAYMESSAGE
| DISPLAYTIMEZONE
| DISPLAYTYPE
| DOMAINDESCRIPTION
| DOMAINNAME
| DOMAINTYPE
| DOSEND
| DOTNETCLRLOADED
| DOUBLE
| DRAGENABLED
| DROPDOWN
| DROPDOWNLIST
| DROPFILENOTIFY
| DROPTARGET
| DUMP
| DUMPLOGGINGNOW
| DYNAMIC
| DYNAMICCURRENTVALUE
| DYNAMICNEXTVALUE
| ECHO
| EDGECHARS
| EDGEPIXELS
| EDITCANPASTE
| EDITCANUNDO
| EDITCLEAR
| EDITCOPY
| EDITCUT
| EDITOR
| EDITORBACKTAB
| EDITORTAB
| EDITPASTE
| EDITUNDO
| EMPTY
| EMPTYDATASET
| EMPTYSELECTION
| EMPTYTEMPTABLE
| ENABLECONNECTIONS
| ENABLED
| ENABLEDFIELDS
| ENCODEDOMAINACCESSCODE
| ENCODING
| ENCRYPT
| ENCRYPTAUDITMACKEY
| ENCRYPTIONSALT
| ENDBOXSELECTION
| ENDDOCUMENT
| ENDELEMENT
| ENDERROR
| ENDEVENTGROUP
| ENDFILEDROP
| ENDKEY
| ENDMOVE
| ENDRESIZE
| ENDROWRESIZE
| ENDSEARCH
| ENDUSERPROMPT
| ENTERED
| ENTERMENUBAR
| ENTITYEXPANSIONLIMIT
| ENTRYTYPESLIST
| ENUM
| EQ
| ERROR
| ERRORCODE
| ERRORCOLUMN
| ERROROBJECT
| ERROROBJECTDETAIL
| ERRORROW
| ERRORSTACKTRACE
| ERRORSTRING
| EVENT
| EVENTGROUPID
| EVENTHANDLER
| EVENTHANDLERCONTEXT
| EVENTHANDLEROBJECT
| EVENTPROCEDURECONTEXT
| EVENTS
| EVENTTYPE
| EXCLUSIVEID
| EXECUTE
| EXECUTIONLOG
| EXIT
| EXITCODE
| EXP
| EXPAND
| EXPANDABLE
| EXPIRE
| EXPLICIT
| EXPORTPRINCIPAL
| EXTENDED
| EXTENT
| EXTERNAL
| EXTRACT
| FETCHSELECTEDROW
| FGCOLOR
| FILE
| FILEACCESSDATE
| FILEACCESSTIME
| FILECREATEDATE
| FILECREATETIME
| FILEMODDATE
| FILEMODTIME
| FILEOFFSET
| FILESIZE
| FILETYPE
| FILLED
| FILLIN
| FILLMODE
| FILLWHERESTRING
| FILTERS
| FINAL
| FINALLY
| FINDBYROWID
| FINDCURRENT
| FINDER
| FINDFIRST
| FINDLAST
| FINDNEXT
| FINDPREVIOUS
| FINDUNIQUE
| FIREHOSECURSOR
| FIRSTASYNCREQUEST
| FIRSTBUFFER
| FIRSTCHILD
| FIRSTCOLUMN
| FIRSTDATASET
| FIRSTDATASOURCE
| FIRSTFORM
| FIRSTOBJECT
| FIRSTPROCEDURE
| FIRSTQUERY
| FIRSTSERVER
| FIRSTSERVERSOCKET
| FIRSTSOCKET
| FIRSTTABITEM
| FITLASTCOLUMN
| FIXCHAR
| FIXCODEPAGE
| FIXEDONLY
| FLAGS
| FLATBUTTON
| FLOAT
| FOCUSEDROW
| FOCUSEDROWSELECTED
| FOCUSIN
| FONTBASEDLAYOUT
| FONTTABLE
| FORCEFILE
| FOREGROUND
| FOREIGNKEYHIDDEN
| FORMATTED
| FORMINPUT
| FORMLONGINPUT
| FORWARDONLY
| FORWARDS
| FRAGMENT
| FRAMESPACING
| FRAMEX
| FRAMEY
| FREQUENCY
| FROMCURRENT
| FULLHEIGHT
| FULLHEIGHTCHARS
| FULLHEIGHTPIXELS
| FULLPATHNAME
| FULLWIDTHCHARS
| FULLWIDTHPIXELS
| FUNCTION
| GE
| GENERATEMD5
| GENERATEPBEKEY
| GENERATEPBESALT
| GENERATERANDOMKEY
| GENERATEUUID
| GET
| GETATTRIBUTE
| GETATTRIBUTENODE
| GETBINARYDATA
| GETBITS
| GETBLUEVALUE
| GETBROWSECOLUMN
| GETBUFFERHANDLE
| GETBYTE
| GETBYTEORDER
| GETBYTES
| GETBYTESAVAILABLE
| GETCALLBACKPROCCONTEXT
| GETCALLBACKPROCNAME
| GETCGILIST
| GETCGILONGVALUE
| GETCGIVALUE
| GETCHANGES
| GETCHILD
| GETCHILDRELATION
| GETCLASS
| GETCLIENT
| GETCONFIGVALUE
| GETCURRENT
| GETDATASETBUFFER
| GETDBCLIENT
| GETDIR
| GETDOCUMENTELEMENT
| GETDOUBLE
| GETDROPPEDFILE
| GETDYNAMIC
| GETEFFECTIVETENANTID
| GETEFFECTIVETENANTNAME
| GETFILE
| GETFIRST
| GETFLOAT
| GETGREENVALUE
| GETHEADERENTRY
| GETINDEXBYNAMESPACENAME
| GETINDEXBYQNAME
| GETINT64
| GETITERATION
| GETLAST
| GETLICENSE
| GETLOCALNAMEBYINDEX
| GETLONG
| GETMESSAGE
| GETNEXT
| GETNODE
| GETNUMBER
| GETPARENT
| GETPOINTERVALUE
| GETPREV
| GETPRINTERS
| GETPROPERTY
| GETQNAMEBYINDEX
| GETREDVALUE
| GETRELATION
| GETREPOSITIONEDROW
| GETRGBVALUE
| GETSAFEUSER
| GETSELECTEDWIDGET
| GETSERIALIZED
| GETSHORT
| GETSIGNATURE
| GETSIZE
| GETSOCKETOPTION
| GETSOURCEBUFFER
| GETSTRING
| GETTABITEM
| GETTEXTHEIGHT
| GETTEXTHEIGHTCHARS
| GETTEXTHEIGHTPIXELS
| GETTEXTWIDTH
| GETTEXTWIDTHCHARS
| GETTEXTWIDTHPIXELS
| GETTOPBUFFER
| GETTYPEBYINDEX
| GETTYPEBYNAMESPACENAME
| GETTYPEBYQNAME
| GETUNSIGNEDLONG
| GETUNSIGNEDSHORT
| GETURIBYINDEX
| GETVALUEBYINDEX
| GETVALUEBYNAMESPACENAME
| GETVALUEBYQNAME
| GETWAITSTATE
| GO
| GOTO
| GRANTARCHIVE
| GRAYED
| GRIDFACTORHORIZONTAL
| GRIDFACTORVERTICAL
| GRIDSET
| GRIDSNAP
| GRIDUNITHEIGHT
| GRIDUNITHEIGHTCHARS
| GRIDUNITHEIGHTPIXELS
| GRIDUNITWIDTH
| GRIDUNITWIDTHCHARS
| GRIDUNITWIDTHPIXELS
| GRIDVISIBLE
| GROUPBOX
| GTHAN
| GUID
| HANDLE
| HANDLER
| HASLOBS
| HASRECORDS
| HEIGHT
| HEIGHTCHARS
| HEIGHTPIXELS
| HELPCONTEXT
| HELPFILENAME
| HELPTOPIC
| HEXDECODE
| HEXENCODE
| HIDDEN
| HINT
| HOME
| HORIZEND
| HORIZHOME
| HORIZONTAL
| HORIZSCROLLDRAG
| HTMLCHARSET
| HTMLENDOFLINE
| HTMLENDOFPAGE
| HTMLFRAMEBEGIN
| HTMLFRAMEEND
| HTMLHEADERBEGIN
| HTMLHEADEREND
| HTMLTITLEBEGIN
| HTMLTITLEEND
| HWND
| ICFPARAMETER
| ICON
| IGNORECURRENTMODIFIED
| IMAGE
| IMAGEDOWN
| IMAGEINSENSITIVE
| IMAGESIZE
| IMAGESIZECHARS
| IMAGESIZEPIXELS
| IMAGEUP
| IMMEDIATEDISPLAY
| IMPLEMENTS
| IMPORTNODE
| IMPORTPRINCIPAL
| INCREMENTEXCLUSIVEID
| INDEXEDREPOSITION
| INDEXHINT
| INDEXINFORMATION
| INFORMATION
| INHANDLE
| INHERITBGCOLOR
| INHERITCOLORMODE
| INHERITFGCOLOR
| INHERITS
| INITIAL
| INITIALDIR
| INITIALFILTER
| INITIALIZE
| INITIALIZEDOCUMENTTYPE
| INITIATE
| INNER
| INNERCHARS
| INNERLINES
| INPUTVALUE
| INSERTATTRIBUTE
| INSERTBACKTAB
| INSERTBEFORE
| INSERTCOLUMN
| INSERTFIELD
| INSERTFIELDDATA
| INSERTFIELDLABEL
| INSERTFILE
| INSERTMODE
| INSERTROW
| INSERTSTRING
| INSERTTAB
| INSTANTIATINGPROCEDURE
| INT64
| INTEGER
| INTERFACE
| INTERNALENTRIES
| INTERVAL
| INVOKE
| ISCLASS
| ISCODEPAGEFIXED
| ISCOLUMNCODEPAGE
| ISDBMULTITENANT
| ISJSON
| ISLEADBYTE
| ISMULTITENANT
| ISODATE
| ISOPEN
| ISPARAMETERSET
| ISPARTITIONED
| ISROWSELECTED
| ISSELECTED
| ISXML
| ITEM
| ITEMSPERROW
| ITERATIONCHANGED
| IUNKNOWN
| JOINBYSQLDB
| JOINONSELECT
| KEEPCONNECTIONOPEN
| KEEPFRAMEZORDER
| KEEPMESSAGES
| KEEPSECURITYCACHE
| KEEPTABORDER
| KEY
| KEYCACHEJOIN
| KEYCODE
| KEYFUNCTION
| KEYLABEL
| KEYWORDALL
| LABELBGCOLOR
| LABELDCOLOR
| LABELFGCOLOR
| LABELFONT
| LABELPFCOLOR
| LABELS
| LABELSHAVECOLONS
| LANDSCAPE
| LANGUAGES
| LARGE
| LARGETOSMALL
| LASTASYNCREQUEST
| LASTBATCH
| LASTCHILD
| LASTFORM
| LASTOBJECT
| LASTPROCEDURE
| LASTSERVER
| LASTSERVERSOCKET
| LASTSOCKET
| LASTTABITEM
| LC
| LE
| LEADING
| LEFT
| LEFTALIGNED
| LEFTEND
| LEFTTRIM
| LENGTH
| LIBRARYCALLINGCONVENTION
| LINE
| LINEDOWN
| LINELEFT
| LINERIGHT
| LINEUP
| LISTEVENTS
| LISTINGS
| LISTITEMPAIRS
| LISTITEMS
| LISTPROPERTYNAMES
| LISTQUERYATTRS
| LISTSETATTRS
| LISTWIDGETS
| LITERALQUESTION
| LOAD
| LOADDOMAINS
| LOADFROM
| LOADICON
| LOADIMAGE
| LOADIMAGEDOWN
| LOADIMAGEINSENSITIVE
| LOADIMAGEUP
| LOADMOUSEPOINTER
| LOADPICTURE
| LOADRESULTINTO
| LOADSMALLICON
| LOBDIR
| LOCALHOST
| LOCALNAME
| LOCALPORT
| LOCALVERSIONINFO
| LOCATORCOLUMNNUMBER
| LOCATORLINENUMBER
| LOCATORPUBLICID
| LOCATORSYSTEMID
| LOCATORTYPE
| LOCKREGISTRATION
| LOG
| LOGAUDITEVENT
| LOGENTRYTYPES
| LOGFILENAME
| LOGGINGLEVEL
| LOGICAL
| LOGID
| LOGINEXPIRATIONTIMESTAMP
| LOGINHOST
| LOGINSTATE
| LOGOUT
| LOGTHRESHOLD
| LONG
| LONGCHAR
| LONGCHARTONODEVALUE
| LOOKAHEAD
| LTHAN
| MAINMENU
| MANDATORY
| MANUALHIGHLIGHT
| MARGINEXTRA
| MARGINHEIGHT
| MARGINHEIGHTCHARS
| MARGINHEIGHTPIXELS
| MARGINWIDTH
| MARGINWIDTHCHARS
| MARGINWIDTHPIXELS
| MARKNEW
| MARKROWSTATE
| MATCHES
| MAXBUTTON
| MAXCHARS
| MAXDATAGUESS
| MAXHEIGHT
| MAXHEIGHTCHARS
| MAXHEIGHTPIXELS
| MAXIMIZE
| MAXIMUM
| MAXIMUMLEVEL
| MAXROWS
| MAXSIZE
| MAXVALUE
| MAXWIDTH
| MAXWIDTHCHARS
| MAXWIDTHPIXELS
| MD5DIGEST
| MD5VALUE
| MEMPTR
| MEMPTRTONODEVALUE
| MENU
| MENUBAR
| MENUDROP
| MENUITEM
| MENUKEY
| MENUMOUSE
| MERGEBYFIELD
| MERGECHANGES
| MERGEROWCHANGES
| MESSAGEAREA
| MESSAGEAREAFONT
| MESSAGEAREAMSG
| MESSAGEDIGEST
| MESSAGELINE
| METHOD
| MINBUTTON
| MINCOLUMNWIDTHCHARS
| MINCOLUMNWIDTHPIXELS
| MINHEIGHT
| MINHEIGHTCHARS
| MINHEIGHTPIXELS
| MINIMUM
| MINSCHEMAMARSHALL
| MINSIZE
| MINVALUE
| MINWIDTH
| MINWIDTHCHARS
| MINWIDTHPIXELS
| MODIFIED
| MODULO
| MONTH
| MOUSEPOINTER
| MOVABLE
| MOVE
| MOVEAFTERTABITEM
| MOVEBEFORETABITEM
| MOVECOLUMN
| MOVETOBOTTOM
| MOVETOEOF
| MOVETOTOP
| MTIME
| MULTICOMPILE
| MULTIPLE
| MULTIPLEKEY
| MULTITASKINGINTERVAL
| MUSTEXIST
| MUSTUNDERSTAND
| NAME
| NAMESPACEPREFIX
| NAMESPACEURI
| NATIVE
| NE
| NEEDSAPPSERVERPROMPT
| NEEDSPROMPT
| NESTED
| NEWINSTANCE
| NEWLINE
| NEWROW
| NEXTCOLUMN
| NEXTERROR
| NEXTFRAME
| NEXTROWID
| NEXTSIBLING
| NEXTTABITEM
| NEXTVALUE
| NEXTWORD
| NOAPPLY
| NOARRAYMESSAGE
| NOASSIGN
| NOAUTOTRIM
| NOAUTOVALIDATE
| NOBINDWHERE
| NOBOX
| NOCOLUMNSCROLLING
| NOCONSOLE
| NOCONVERT
| NOCONVERT3DCOLORS
| NOCURRENTVALUE
| NODEBUG
| NODETYPE
| NODEVALUE
| NODEVALUETOLONGCHAR
| NODEVALUETOMEMPTR
| NODRAG
| NOECHO
| NOEMPTYSPACE
| NOFIREHOSECURSOR
| NOFOCUS
| NOINDEXHINT
| NOINHERITBGCOLOR
| NOINHERITFGCOLOR
| NOJOINBYSQLDB
| NOKEYCACHEJOIN
| NOLOOKAHEAD
| NONAMESPACESCHEMALOCATION
| NONE
| NONSERIALIZABLE
| NOQUERYORDERADDED
| NOQUERYUNIQUEADDED
| NORMAL
| NORMALIZE
| NOROWMARKERS
| NOSCHEMAMARSHALL
| NOSCROLLBARVERTICAL
| NOSCROLLING
| NOSEPARATECONNECTION
| NOSEPARATORS
| NOTABSTOP
| NOTACTIVE
| NOUNDERLINE
| NOWORDWRAP
| NUMBUFFERS
| NUMBUTTONS
| NUMCHILDRELATIONS
| NUMCHILDREN
| NUMCOLUMNS
| NUMCOPIES
| NUMDROPPEDFILES
| NUMERIC
| NUMERICDECIMALPOINT
| NUMERICFORMAT
| NUMERICSEPARATOR
| NUMFIELDS
| NUMFORMATS
| NUMHEADERENTRIES
| NUMITEMS
| NUMITERATIONS
| NUMLINES
| NUMLOCKEDCOLUMNS
| NUMLOGFILES
| NUMMESSAGES
| NUMPARAMETERS
| NUMREFERENCES
| NUMRELATIONS
| NUMREPLACED
| NUMRESULTS
| NUMSELECTED
| NUMSELECTEDROWS
| NUMSELECTEDWIDGETS
| NUMSOURCEBUFFERS
| NUMTABS
| NUMTOPBUFFERS
| NUMTORETAIN
| NUMVISIBLECOLUMNS
| OBJECT
| OCTETLENGTH
| OFFEND
| OFFHOME
| OK
| OKCANCEL
| OLEINVOKELOCALE
| OLENAMESLOCALE
| ONFRAMEBORDER
| ONLY
| OPENLINEABOVE
| OPTIONS
| OPTIONSFILE
| ORDER
| ORDEREDJOIN
| ORDINAL
| ORIENTATION
| ORIGINHANDLE
| ORIGINROWID
| OSGETENV
| OUTER
| OUTERJOIN
| OUTOFDATA
| OVERRIDE
| OWNER
| OWNERDOCUMENT
| PACKAGEPRIVATE
| PACKAGEPROTECTED
| PAGED
| PAGEDOWN
| PAGELEFT
| PAGERIGHT
| PAGERIGHTTEXT
| PAGESIZE
| PAGEUP
| PAGEWIDTH
| PARENT
| PARENTBUFFER
| PARENTFIELDSAFTER
| PARENTFIELDSBEFORE
| PARENTIDFIELD
| PARENTIDRELATION
| PARENTRELATION
| PARENTWINDOWCLOSE
| PARSESTATUS
| PARTIALKEY
| PASCAL
| PASTE
| PATHNAME
| PBEHASHALGORITHM
| PBEKEYROUNDS
| PERFORMANCE
| PERSISTENTCACHEDISABLED
| PERSISTENTPROCEDURE
| PFCOLOR
| PICK
| PICKAREA
| PICKBOTH
| PINNABLE
| PIXELSPERCOLUMN
| PIXELSPERROW
| POPUPMENU
| POPUPONLY
| PORTRAIT
| POSITION
| PRECISION
| PREFERDATASET
| PREPARED
| PREPARESTRING
| PRESELECT
| PREV
| PREVCOLUMN
| PREVFRAME
| PREVSIBLING
| PREVTABITEM
| PREVWORD
| PRIMARY
| PRIMARYPASSPHRASE
| PRINTER
| PRINTERCONTROLHANDLE
| PRINTERHDC
| PRINTERNAME
| PRINTERPORT
| PRINTERSETUP
| PRIVATE
| PRIVATEDATA
| PROCEDURE
| PROCEDURECOMPLETE
| PROCEDURENAME
| PROCEDURETYPE
| PROCESSARCHITECTURE
| PROCTEXT
| PROCTEXTBUFFER
| PROFILEFILE
| PROFILING
| PROGRESSSOURCE
| PROPERTY
| PROTECTED
| PROXY
| PROXYPASSWORD
| PROXYUSERID
| PUBLIC
| PUBLICID
| PUBLISHEDEVENTS
| PUTBITS
| PUTBYTES
| PUTDOUBLE
| PUTFLOAT
| PUTINT64
| PUTLONG
| PUTSHORT
| PUTSTRING
| PUTUNSIGNEDLONG
| PUTUNSIGNEDSHORT
| QUALIFIEDUSERID
| QUERYCLOSE
| QUERYOFFEND
| QUERYOPEN
| QUERYPREPARE
| QUESTION
| QUOTER
| RADIOBUTTONS
| RADIOSET
| RANDOM
| RAW
| RAWTRANSFER
| READ
| READFILE
| READJSON
| READONLY
| READRESPONSE
| READXML
| READXMLSCHEMA
| REAL
| RECALL
| RECURSIVE
| REFERENCEONLY
| REFRESH
| REFRESHABLE
| REFRESHAUDITPOLICY
| REGISTERDOMAIN
| REINSTATE
| REJECTCHANGES
| REJECTED
| REJECTROWCHANGES
| RELATIONFIELDS
| RELATIONSACTIVE
| REMOTE
| REMOTEHOST
| REMOTEPORT
| REMOVEATTRIBUTE
| REMOVECHILD
| REMOVEEVENTSPROCEDURE
| REMOVESUPERPROCEDURE
| REPLACE
| REPLACECHILD
| REPLACESELECTIONTEXT
| REPLICATIONCREATE
| REPLICATIONDELETE
| REPLICATIONWRITE
| REPORTS
| REPOSITIONBACKWARDS
| REPOSITIONFORWARDS
| REPOSITIONMODE
| REPOSITIONPARENTRELATION
| REPOSITIONTOROW
| REPOSITIONTOROWID
| REQUEST
| REQUESTINFO
| RESET
| RESIZABLE
| RESIZE
| RESPONSEINFO
| RESTARTROW
| RESTARTROWID
| RESULT
| RESUMEDISPLAY
| RETAINSHAPE
| RETRYCANCEL
| RETURNINSERTED
| RETURNS
| RETURNTOSTARTDIR
| RETURNVALUEDATATYPE
| RETURNVALUEDLLTYPE
| REVERSEFROM
| RGBVALUE
| RIGHT
| RIGHTALIGNED
| RIGHTEND
| RIGHTTRIM
| ROLE
| ROLES
| ROUND
| ROUNDED
| ROUTINELEVEL
| ROW
| ROWDISPLAY
| ROWENTRY
| ROWHEIGHTCHARS
| ROWHEIGHTPIXELS
| ROWID
| ROWLEAVE
| ROWMARKERS
| ROWOF
| ROWRESIZABLE
| ROWSTATE
| RULE
| RULEROW
| RULEY
| RUNPROCEDURE
| SAVEAS
| SAVECACHE
| SAVEFILE
| SAVEROWCHANGES
| SAVEWHERESTRING
| SAXATTRIBUTES
| SAXPARSE
| SAXPARSEFIRST
| SAXPARSENEXT
| SAXREADER
| SAXWRITER
| SAXXML
| SCHEMACHANGE
| SCHEMALOCATION
| SCHEMAMARSHAL
| SCHEMAPATH
| SCREENVALUE
| SCROLLABLE
| SCROLLBARDRAG
| SCROLLBARHORIZONTAL
| SCROLLBARS
| SCROLLBARVERTICAL
| SCROLLEDROWPOSITION
| SCROLLHORIZONTAL
| SCROLLING
| SCROLLLEFT
| SCROLLMODE
| SCROLLNOTIFY
| SCROLLRIGHT
| SCROLLTOCURRENTROW
| SCROLLTOITEM
| SCROLLTOSELECTEDROW
| SCROLLVERTICAL
| SEAL
| SEALTIMESTAMP
| SECTION
| SELECTABLE
| SELECTALL
| SELECTED
| SELECTEDITEMS
| SELECTEXTEND
| SELECTFOCUSEDROW
| SELECTION
| SELECTIONEND
| SELECTIONEXTEND
| SELECTIONLIST
| SELECTIONSTART
| SELECTIONTEXT
| SELECTNEXTROW
| SELECTONJOIN
| SELECTPREVROW
| SELECTREPOSITIONEDROW
| SELECTROW
| SEND
| SENDSQLSTATEMENT
| SENSITIVE
| SEPARATECONNECTION
| SEPARATORFGCOLOR
| SEPARATORS
| SERIALIZABLE
| SERIALIZEHIDDEN
| SERIALIZENAME
| SERIALIZEROW
| SERVER
| SERVERCONNECTIONBOUND
| SERVERCONNECTIONBOUNDREQUEST
| SERVERCONNECTIONCONTEXT
| SERVERCONNECTIONID
| SERVEROPERATINGMODE
| SERVERSOCKET
| SESSIONEND
| SESSIONID
| SETACTOR
| SETAPPLCONTEXT
| SETATTRIBUTE
| SETATTRIBUTENODE
| SETBLUEVALUE
| SETBREAK
| SETBUFFERS
| SETBYTEORDER
| SETCALLBACK
| SETCALLBACKPROCEDURE
| SETCELLFOCUS
| SETCLIENT
| SETCOMMIT
| SETCONNECTPROCEDURE
| SETCONTENTS
| SETCURRENTVALUE
| SETDBCLIENT
| SETDBLOGGING
| SETDYNAMIC
| SETEFFECTIVETENANT
| SETEVENTMANAGEROPTION
| SETGREENVALUE
| SETINPUTSOURCE
| SETMUSTUNDERSTAND
| SETNODE
| SETNUMERICFORMAT
| SETOPTION
| SETOUTPUTDESTINATION
| SETPARAMETER
| SETPOINTERVALUE
| SETPROPERTY
| SETREADRESPONSEPROCEDURE
| SETREDVALUE
| SETREPOSITIONEDROW
| SETRGBVALUE
| SETROLE
| SETROLLBACK
| SETSAFEUSER
| SETSELECTION
| SETSERIALIZED
| SETSIZE
| SETSOCKETOPTION
| SETSORTARROW
| SETSTATE
| SETTINGS
| SETWAITSTATE
| SHA1DIGEST
| SHORT
| SHOWINTASKBAR
| SIDELABEL
| SIDELABELHANDLE
| SIDELABELS
| SIGNATURE
| SIGNATUREVALUE
| SILENT
| SIMPLE
| SINGLE
| SINGLECHARACTER
| SINGLETON
| SIZE
| SIZECHARS
| SIZEPIXELS
| SKIPDELETEDRECORD
| SKIPSCHEMACHECK
| SLIDER
| SMALLICON
| SMALLINT
| SMALLTITLE
| SOAPFAULT
| SOAPFAULTACTOR
| SOAPFAULTCODE
| SOAPFAULTDETAIL
| SOAPFAULTMISUNDERSTOODHEADER
| SOAPFAULTNODE
| SOAPFAULTROLE
| SOAPFAULTSTRING
| SOAPFAULTSUBCODE
| SOAPHEADER
| SOAPHEADERENTRYREF
| SOAPVERSION
| SOCKET
| SORT
| SORTASCENDING
| SORTNUMBER
| SOURCE
| SQL
| SQRT
| SSLSERVERNAME
| STANDALONE
| START
| STARTBOXSELECTION
| STARTDOCUMENT
| STARTELEMENT
| STARTEXTENDBOXSELECTION
| STARTING
| STARTMEMCHECK
| STARTMOVE
| STARTRESIZE
| STARTROWRESIZE
| STARTSEARCH
| STARTUPPARAMETERS
| STATEDETAIL
| STATIC
| STATISTICS
| STATUSAREA
| STATUSAREAFONT
| STATUSAREAMSG
| STATUSBAR
| STDCALL
| STOP
| STOPDISPLAY
| STOPMEMCHECK
| STOPOBJECT
| STOPPARSING
| STOPPED
| STOREDPROCEDURE
| STRETCHTOFIT
| STRICT
| STRICTENTITYRESOLUTION
| STRING
| STRINGVALUE
| SUBAVERAGE
| SUBCOUNT
| SUBMAXIMUM
| SUBMENU
| SUBMENUHELP
| SUBMINIMUM
| SUBSTITUTE
| SUBSTRING
| SUBTOTAL
| SUBTYPE
| SUM
| SUMMARY
| SUPERPROCEDURES
| SUPPRESSNAMESPACEPROCESSING
| SUPPRESSWARNINGS
| SUPPRESSWARNINGSLIST
| SUSPEND
| SYMMETRICENCRYPTIONAAD
| SYMMETRICENCRYPTIONALGORITHM
| SYMMETRICENCRYPTIONIV
| SYMMETRICENCRYPTIONKEY
| SYMMETRICSUPPORT
| SYNCHRONIZE
| SYSTEMALERTBOXES
| SYSTEMHELP
| SYSTEMID
| TAB
| TABLECRCLIST
| TABLELIST
| TABLENUMBER
| TABLESCAN
| TABPOSITION
| TABSTOP
| TARGET
| TEMPDIRECTORY
| TEMPTABLE
| TEMPTABLEPREPARE
| TENANT
| TENANTID
| TENANTNAME
| TENANTNAMETOID
| TERMINATE
| TEXTSELECTED
| THREADSAFE
| THREED
| THROUGH
| THROW
| TICMARKS
| TIMESOURCE
| TIMESTAMP
| TIMEZONE
| TITLEBGCOLOR
| TITLEDCOLOR
| TITLEFGCOLOR
| TITLEFONT
| TOGGLEBOX
| TOOLBAR
| TOOLTIP
| TOOLTIPS
| TOP
| TOPCOLUMN
| TOPIC
| TOPNAVQUERY
| TOROWID
| TOTAL
| TRACEFILTER
| TRACING
| TRACKINGCHANGES
| TRAILING
| TRANSACTIONMODE
| TRANSINITPROCEDURE
| TRANSPARENT
| TRUNCATE
| TTCODEPAGE
| TYPE
| TYPEOF
| UNBOX
| UNBUFFERED
| UNDOTHROWSCOPE
| UNIQUEID
| UNIQUEMATCH
| UNIXEND
| UNLOAD
| UNSIGNEDBYTE
| UNSIGNEDINT64
| UNSIGNEDINTEGER
| UNSIGNEDLONG
| UNSIGNEDSHORT
| UPDATEATTRIBUTE
| URL
| URLDECODE
| URLENCODE
| URLPASSWORD
| URLUSERID
| USE
| USEDICTEXPS
| USEFILENAME
| USERDATA
| USERID2
| USETEXT
| USEWIDGETPOOL
| UTCOFFSET
| V6DISPLAY
| VALIDATE
| VALIDATEDOMAINACCESSCODE
| VALIDATEEXPRESSION
| VALIDATEMESSAGE
| VALIDATESEAL
| VALIDATEXML
| VALIDATIONENABLED
| VALIDEVENT
| VALIDHANDLE
| VALIDOBJECT
| VALUECHANGED
| VARIABLE
| VERBOSE
| VERSION
| VERTICAL
| VIEWFIRSTCOLUMNONREOPEN
| VIRTUALHEIGHT
| VIRTUALHEIGHTCHARS
| VIRTUALHEIGHTPIXELS
| VIRTUALWIDTH
| VIRTUALWIDTHCHARS
| VIRTUALWIDTHPIXELS
| VISIBLE
| VOID
| WAIT
| WARNING
| WCADMINAPP
| WEBNOTIFY
| WEEKDAY
| WHERESTRING
| WIDGET
| WIDGETENTER
| WIDGETHANDLE
| WIDGETID
| WIDGETLEAVE
| WIDGETPOOL
| WIDTH
| WIDTHCHARS
| WIDTHPIXELS
| WINDOWCLOSE
| WINDOWNAME
| WINDOWRESIZED
| WINDOWRESTORED
| WINDOWSTATE
| WINDOWSYSTEM
| WORDINDEX
| WORDWRAP
| WORKAREAHEIGHTPIXELS
| WORKAREAWIDTHPIXELS
| WORKAREAX
| WORKAREAY
| WRITECDATA
| WRITECHARACTERS
| WRITECOMMENT
| WRITEDATA
| WRITEDATAELEMENT
| WRITEEMPTYELEMENT
| WRITEENTITYREF
| WRITEEXTERNALDTD
| WRITEFRAGMENT
| WRITEJSON
| WRITEMESSAGE
| WRITEPROCESSINGINSTRUCTION
| WRITESTATUS
| WRITEXML
| WRITEXMLSCHEMA
| X
| XDOCUMENT
| XMLDATATYPE
| XMLENTITYEXPANSIONLIMIT
| XMLNODENAME
| XMLNODETYPE
| XMLSCHEMAPATH
| XMLSTRICTENTITYRESOLUTION
| XMLSUPPRESSNAMESPACEPROCESSING
| XNODEREF
| XOF
| Y
| YEAR
| YEAROFFSET
| YESNO
| YESNOCANCEL
| YOF
;
