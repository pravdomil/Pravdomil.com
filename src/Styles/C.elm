module Styles.C exposing (..)

{-| To get more CSS class safety, we extract all classes from our stylesheets.
To get fresh classes run following script in the browser.
<https://gist.github.com/pravdomil/be27dcdb284b5fe25d50919f90420964>
-}

import Html.Attributes exposing (..)


fa =
    class "fa"


faLg =
    class "fa-lg"


fa2x =
    class "fa-2x"


fa3x =
    class "fa-3x"


fa4x =
    class "fa-4x"


fa5x =
    class "fa-5x"


faFw =
    class "fa-fw"


faUl =
    class "fa-ul"


faLi =
    class "fa-li"


faBorder =
    class "fa-border"


faPullLeft =
    class "fa-pull-left"


faPullRight =
    class "fa-pull-right"


pullRight =
    class "pull-right"


pullLeft =
    class "pull-left"


faSpin =
    class "fa-spin"


faPulse =
    class "fa-pulse"


faRotate90 =
    class "fa-rotate-90"


faRotate180 =
    class "fa-rotate-180"


faRotate270 =
    class "fa-rotate-270"


faFlipHorizontal =
    class "fa-flip-horizontal"


faFlipVertical =
    class "fa-flip-vertical"


faStack =
    class "fa-stack"


faStack1x =
    class "fa-stack-1x"


faStack2x =
    class "fa-stack-2x"


faInverse =
    class "fa-inverse"


faGlass =
    class "fa-glass"


faMusic =
    class "fa-music"


faSearch =
    class "fa-search"


faEnvelopeO =
    class "fa-envelope-o"


faHeart =
    class "fa-heart"


faStar =
    class "fa-star"


faStarO =
    class "fa-star-o"


faUser =
    class "fa-user"


faFilm =
    class "fa-film"


faThLarge =
    class "fa-th-large"


faTh =
    class "fa-th"


faThList =
    class "fa-th-list"


faCheck =
    class "fa-check"


faRemove =
    class "fa-remove"


faClose =
    class "fa-close"


faTimes =
    class "fa-times"


faSearchPlus =
    class "fa-search-plus"


faSearchMinus =
    class "fa-search-minus"


faPowerOff =
    class "fa-power-off"


faSignal =
    class "fa-signal"


faGear =
    class "fa-gear"


faCog =
    class "fa-cog"


faTrashO =
    class "fa-trash-o"


faHome =
    class "fa-home"


faFileO =
    class "fa-file-o"


faClockO =
    class "fa-clock-o"


faRoad =
    class "fa-road"


faDownload =
    class "fa-download"


faArrowCircleODown =
    class "fa-arrow-circle-o-down"


faArrowCircleOUp =
    class "fa-arrow-circle-o-up"


faInbox =
    class "fa-inbox"


faPlayCircleO =
    class "fa-play-circle-o"


faRotateRight =
    class "fa-rotate-right"


faRepeat =
    class "fa-repeat"


faRefresh =
    class "fa-refresh"


faListAlt =
    class "fa-list-alt"


faLock =
    class "fa-lock"


faFlag =
    class "fa-flag"


faHeadphones =
    class "fa-headphones"


faVolumeOff =
    class "fa-volume-off"


faVolumeDown =
    class "fa-volume-down"


faVolumeUp =
    class "fa-volume-up"


faQrcode =
    class "fa-qrcode"


faBarcode =
    class "fa-barcode"


faTag =
    class "fa-tag"


faTags =
    class "fa-tags"


faBook =
    class "fa-book"


faBookmark =
    class "fa-bookmark"


faPrint =
    class "fa-print"


faCamera =
    class "fa-camera"


faFont =
    class "fa-font"


faBold =
    class "fa-bold"


faItalic =
    class "fa-italic"


faTextHeight =
    class "fa-text-height"


faTextWidth =
    class "fa-text-width"


faAlignLeft =
    class "fa-align-left"


faAlignCenter =
    class "fa-align-center"


faAlignRight =
    class "fa-align-right"


faAlignJustify =
    class "fa-align-justify"


faList =
    class "fa-list"


faDedent =
    class "fa-dedent"


faOutdent =
    class "fa-outdent"


faIndent =
    class "fa-indent"


faVideoCamera =
    class "fa-video-camera"


faPhoto =
    class "fa-photo"


faImage =
    class "fa-image"


faPictureO =
    class "fa-picture-o"


faPencil =
    class "fa-pencil"


faMapMarker =
    class "fa-map-marker"


faAdjust =
    class "fa-adjust"


faTint =
    class "fa-tint"


faEdit =
    class "fa-edit"


faPencilSquareO =
    class "fa-pencil-square-o"


faShareSquareO =
    class "fa-share-square-o"


faCheckSquareO =
    class "fa-check-square-o"


faArrows =
    class "fa-arrows"


faStepBackward =
    class "fa-step-backward"


faFastBackward =
    class "fa-fast-backward"


faBackward =
    class "fa-backward"


faPlay =
    class "fa-play"


faPause =
    class "fa-pause"


faStop =
    class "fa-stop"


faForward =
    class "fa-forward"


faFastForward =
    class "fa-fast-forward"


faStepForward =
    class "fa-step-forward"


faEject =
    class "fa-eject"


faChevronLeft =
    class "fa-chevron-left"


faChevronRight =
    class "fa-chevron-right"


faPlusCircle =
    class "fa-plus-circle"


faMinusCircle =
    class "fa-minus-circle"


faTimesCircle =
    class "fa-times-circle"


faCheckCircle =
    class "fa-check-circle"


faQuestionCircle =
    class "fa-question-circle"


faInfoCircle =
    class "fa-info-circle"


faCrosshairs =
    class "fa-crosshairs"


faTimesCircleO =
    class "fa-times-circle-o"


faCheckCircleO =
    class "fa-check-circle-o"


faBan =
    class "fa-ban"


faArrowLeft =
    class "fa-arrow-left"


faArrowRight =
    class "fa-arrow-right"


faArrowUp =
    class "fa-arrow-up"


faArrowDown =
    class "fa-arrow-down"


faMailForward =
    class "fa-mail-forward"


faShare =
    class "fa-share"


faExpand =
    class "fa-expand"


faCompress =
    class "fa-compress"


faPlus =
    class "fa-plus"


faMinus =
    class "fa-minus"


faAsterisk =
    class "fa-asterisk"


faExclamationCircle =
    class "fa-exclamation-circle"


faGift =
    class "fa-gift"


faLeaf =
    class "fa-leaf"


faFire =
    class "fa-fire"


faEye =
    class "fa-eye"


faEyeSlash =
    class "fa-eye-slash"


faWarning =
    class "fa-warning"


faExclamationTriangle =
    class "fa-exclamation-triangle"


faPlane =
    class "fa-plane"


faCalendar =
    class "fa-calendar"


faRandom =
    class "fa-random"


faComment =
    class "fa-comment"


faMagnet =
    class "fa-magnet"


faChevronUp =
    class "fa-chevron-up"


faChevronDown =
    class "fa-chevron-down"


faRetweet =
    class "fa-retweet"


faShoppingCart =
    class "fa-shopping-cart"


faFolder =
    class "fa-folder"


faFolderOpen =
    class "fa-folder-open"


faArrowsV =
    class "fa-arrows-v"


faArrowsH =
    class "fa-arrows-h"


faBarChartO =
    class "fa-bar-chart-o"


faBarChart =
    class "fa-bar-chart"


faTwitterSquare =
    class "fa-twitter-square"


faFacebookSquare =
    class "fa-facebook-square"


faCameraRetro =
    class "fa-camera-retro"


faKey =
    class "fa-key"


faGears =
    class "fa-gears"


faCogs =
    class "fa-cogs"


faComments =
    class "fa-comments"


faThumbsOUp =
    class "fa-thumbs-o-up"


faThumbsODown =
    class "fa-thumbs-o-down"


faStarHalf =
    class "fa-star-half"


faHeartO =
    class "fa-heart-o"


faSignOut =
    class "fa-sign-out"


faLinkedinSquare =
    class "fa-linkedin-square"


faThumbTack =
    class "fa-thumb-tack"


faExternalLink =
    class "fa-external-link"


faSignIn =
    class "fa-sign-in"


faTrophy =
    class "fa-trophy"


faGithubSquare =
    class "fa-github-square"


faUpload =
    class "fa-upload"


faLemonO =
    class "fa-lemon-o"


faPhone =
    class "fa-phone"


faSquareO =
    class "fa-square-o"


faBookmarkO =
    class "fa-bookmark-o"


faPhoneSquare =
    class "fa-phone-square"


faTwitter =
    class "fa-twitter"


faFacebookF =
    class "fa-facebook-f"


faFacebook =
    class "fa-facebook"


faGithub =
    class "fa-github"


faUnlock =
    class "fa-unlock"


faCreditCard =
    class "fa-credit-card"


faFeed =
    class "fa-feed"


faRss =
    class "fa-rss"


faHddO =
    class "fa-hdd-o"


faBullhorn =
    class "fa-bullhorn"


faBell =
    class "fa-bell"


faCertificate =
    class "fa-certificate"


faHandORight =
    class "fa-hand-o-right"


faHandOLeft =
    class "fa-hand-o-left"


faHandOUp =
    class "fa-hand-o-up"


faHandODown =
    class "fa-hand-o-down"


faArrowCircleLeft =
    class "fa-arrow-circle-left"


faArrowCircleRight =
    class "fa-arrow-circle-right"


faArrowCircleUp =
    class "fa-arrow-circle-up"


faArrowCircleDown =
    class "fa-arrow-circle-down"


faGlobe =
    class "fa-globe"


faWrench =
    class "fa-wrench"


faTasks =
    class "fa-tasks"


faFilter =
    class "fa-filter"


faBriefcase =
    class "fa-briefcase"


faArrowsAlt =
    class "fa-arrows-alt"


faGroup =
    class "fa-group"


faUsers =
    class "fa-users"


faChain =
    class "fa-chain"


faLink =
    class "fa-link"


faCloud =
    class "fa-cloud"


faFlask =
    class "fa-flask"


faCut =
    class "fa-cut"


faScissors =
    class "fa-scissors"


faCopy =
    class "fa-copy"


faFilesO =
    class "fa-files-o"


faPaperclip =
    class "fa-paperclip"


faSave =
    class "fa-save"


faFloppyO =
    class "fa-floppy-o"


faSquare =
    class "fa-square"


faNavicon =
    class "fa-navicon"


faReorder =
    class "fa-reorder"


faBars =
    class "fa-bars"


faListUl =
    class "fa-list-ul"


faListOl =
    class "fa-list-ol"


faStrikethrough =
    class "fa-strikethrough"


faUnderline =
    class "fa-underline"


faTable =
    class "fa-table"


faMagic =
    class "fa-magic"


faTruck =
    class "fa-truck"


faPinterest =
    class "fa-pinterest"


faPinterestSquare =
    class "fa-pinterest-square"


faGooglePlusSquare =
    class "fa-google-plus-square"


faGooglePlus =
    class "fa-google-plus"


faMoney =
    class "fa-money"


faCaretDown =
    class "fa-caret-down"


faCaretUp =
    class "fa-caret-up"


faCaretLeft =
    class "fa-caret-left"


faCaretRight =
    class "fa-caret-right"


faColumns =
    class "fa-columns"


faUnsorted =
    class "fa-unsorted"


faSort =
    class "fa-sort"


faSortDown =
    class "fa-sort-down"


faSortDesc =
    class "fa-sort-desc"


faSortUp =
    class "fa-sort-up"


faSortAsc =
    class "fa-sort-asc"


faEnvelope =
    class "fa-envelope"


faLinkedin =
    class "fa-linkedin"


faRotateLeft =
    class "fa-rotate-left"


faUndo =
    class "fa-undo"


faLegal =
    class "fa-legal"


faGavel =
    class "fa-gavel"


faDashboard =
    class "fa-dashboard"


faTachometer =
    class "fa-tachometer"


faCommentO =
    class "fa-comment-o"


faCommentsO =
    class "fa-comments-o"


faFlash =
    class "fa-flash"


faBolt =
    class "fa-bolt"


faSitemap =
    class "fa-sitemap"


faUmbrella =
    class "fa-umbrella"


faPaste =
    class "fa-paste"


faClipboard =
    class "fa-clipboard"


faLightbulbO =
    class "fa-lightbulb-o"


faExchange =
    class "fa-exchange"


faCloudDownload =
    class "fa-cloud-download"


faCloudUpload =
    class "fa-cloud-upload"


faUserMd =
    class "fa-user-md"


faStethoscope =
    class "fa-stethoscope"


faSuitcase =
    class "fa-suitcase"


faBellO =
    class "fa-bell-o"


faCoffee =
    class "fa-coffee"


faCutlery =
    class "fa-cutlery"


faFileTextO =
    class "fa-file-text-o"


faBuildingO =
    class "fa-building-o"


faHospitalO =
    class "fa-hospital-o"


faAmbulance =
    class "fa-ambulance"


faMedkit =
    class "fa-medkit"


faFighterJet =
    class "fa-fighter-jet"


faBeer =
    class "fa-beer"


faHSquare =
    class "fa-h-square"


faPlusSquare =
    class "fa-plus-square"


faAngleDoubleLeft =
    class "fa-angle-double-left"


faAngleDoubleRight =
    class "fa-angle-double-right"


faAngleDoubleUp =
    class "fa-angle-double-up"


faAngleDoubleDown =
    class "fa-angle-double-down"


faAngleLeft =
    class "fa-angle-left"


faAngleRight =
    class "fa-angle-right"


faAngleUp =
    class "fa-angle-up"


faAngleDown =
    class "fa-angle-down"


faDesktop =
    class "fa-desktop"


faLaptop =
    class "fa-laptop"


faTablet =
    class "fa-tablet"


faMobilePhone =
    class "fa-mobile-phone"


faMobile =
    class "fa-mobile"


faCircleO =
    class "fa-circle-o"


faQuoteLeft =
    class "fa-quote-left"


faQuoteRight =
    class "fa-quote-right"


faSpinner =
    class "fa-spinner"


faCircle =
    class "fa-circle"


faMailReply =
    class "fa-mail-reply"


faReply =
    class "fa-reply"


faGithubAlt =
    class "fa-github-alt"


faFolderO =
    class "fa-folder-o"


faFolderOpenO =
    class "fa-folder-open-o"


faSmileO =
    class "fa-smile-o"


faFrownO =
    class "fa-frown-o"


faMehO =
    class "fa-meh-o"


faGamepad =
    class "fa-gamepad"


faKeyboardO =
    class "fa-keyboard-o"


faFlagO =
    class "fa-flag-o"


faFlagCheckered =
    class "fa-flag-checkered"


faTerminal =
    class "fa-terminal"


faCode =
    class "fa-code"


faMailReplyAll =
    class "fa-mail-reply-all"


faReplyAll =
    class "fa-reply-all"


faStarHalfEmpty =
    class "fa-star-half-empty"


faStarHalfFull =
    class "fa-star-half-full"


faStarHalfO =
    class "fa-star-half-o"


faLocationArrow =
    class "fa-location-arrow"


faCrop =
    class "fa-crop"


faCodeFork =
    class "fa-code-fork"


faUnlink =
    class "fa-unlink"


faChainBroken =
    class "fa-chain-broken"


faQuestion =
    class "fa-question"


faInfo =
    class "fa-info"


faExclamation =
    class "fa-exclamation"


faSuperscript =
    class "fa-superscript"


faSubscript =
    class "fa-subscript"


faEraser =
    class "fa-eraser"


faPuzzlePiece =
    class "fa-puzzle-piece"


faMicrophone =
    class "fa-microphone"


faMicrophoneSlash =
    class "fa-microphone-slash"


faShield =
    class "fa-shield"


faCalendarO =
    class "fa-calendar-o"


faFireExtinguisher =
    class "fa-fire-extinguisher"


faRocket =
    class "fa-rocket"


faMaxcdn =
    class "fa-maxcdn"


faChevronCircleLeft =
    class "fa-chevron-circle-left"


faChevronCircleRight =
    class "fa-chevron-circle-right"


faChevronCircleUp =
    class "fa-chevron-circle-up"


faChevronCircleDown =
    class "fa-chevron-circle-down"


faHtml5 =
    class "fa-html5"


faCss3 =
    class "fa-css3"


faAnchor =
    class "fa-anchor"


faUnlockAlt =
    class "fa-unlock-alt"


faBullseye =
    class "fa-bullseye"


faEllipsisH =
    class "fa-ellipsis-h"


faEllipsisV =
    class "fa-ellipsis-v"


faRssSquare =
    class "fa-rss-square"


faPlayCircle =
    class "fa-play-circle"


faTicket =
    class "fa-ticket"


faMinusSquare =
    class "fa-minus-square"


faMinusSquareO =
    class "fa-minus-square-o"


faLevelUp =
    class "fa-level-up"


faLevelDown =
    class "fa-level-down"


faCheckSquare =
    class "fa-check-square"


faPencilSquare =
    class "fa-pencil-square"


faExternalLinkSquare =
    class "fa-external-link-square"


faShareSquare =
    class "fa-share-square"


faCompass =
    class "fa-compass"


faToggleDown =
    class "fa-toggle-down"


faCaretSquareODown =
    class "fa-caret-square-o-down"


faToggleUp =
    class "fa-toggle-up"


faCaretSquareOUp =
    class "fa-caret-square-o-up"


faToggleRight =
    class "fa-toggle-right"


faCaretSquareORight =
    class "fa-caret-square-o-right"


faEuro =
    class "fa-euro"


faEur =
    class "fa-eur"


faGbp =
    class "fa-gbp"


faDollar =
    class "fa-dollar"


faUsd =
    class "fa-usd"


faRupee =
    class "fa-rupee"


faInr =
    class "fa-inr"


faCny =
    class "fa-cny"


faRmb =
    class "fa-rmb"


faYen =
    class "fa-yen"


faJpy =
    class "fa-jpy"


faRuble =
    class "fa-ruble"


faRouble =
    class "fa-rouble"


faRub =
    class "fa-rub"


faWon =
    class "fa-won"


faKrw =
    class "fa-krw"


faBitcoin =
    class "fa-bitcoin"


faBtc =
    class "fa-btc"


faFile =
    class "fa-file"


faFileText =
    class "fa-file-text"


faSortAlphaAsc =
    class "fa-sort-alpha-asc"


faSortAlphaDesc =
    class "fa-sort-alpha-desc"


faSortAmountAsc =
    class "fa-sort-amount-asc"


faSortAmountDesc =
    class "fa-sort-amount-desc"


faSortNumericAsc =
    class "fa-sort-numeric-asc"


faSortNumericDesc =
    class "fa-sort-numeric-desc"


faThumbsUp =
    class "fa-thumbs-up"


faThumbsDown =
    class "fa-thumbs-down"


faYoutubeSquare =
    class "fa-youtube-square"


faYoutube =
    class "fa-youtube"


faXing =
    class "fa-xing"


faXingSquare =
    class "fa-xing-square"


faYoutubePlay =
    class "fa-youtube-play"


faDropbox =
    class "fa-dropbox"


faStackOverflow =
    class "fa-stack-overflow"


faInstagram =
    class "fa-instagram"


faFlickr =
    class "fa-flickr"


faAdn =
    class "fa-adn"


faBitbucket =
    class "fa-bitbucket"


faBitbucketSquare =
    class "fa-bitbucket-square"


faTumblr =
    class "fa-tumblr"


faTumblrSquare =
    class "fa-tumblr-square"


faLongArrowDown =
    class "fa-long-arrow-down"


faLongArrowUp =
    class "fa-long-arrow-up"


faLongArrowLeft =
    class "fa-long-arrow-left"


faLongArrowRight =
    class "fa-long-arrow-right"


faApple =
    class "fa-apple"


faWindows =
    class "fa-windows"


faAndroid =
    class "fa-android"


faLinux =
    class "fa-linux"


faDribbble =
    class "fa-dribbble"


faSkype =
    class "fa-skype"


faFoursquare =
    class "fa-foursquare"


faTrello =
    class "fa-trello"


faFemale =
    class "fa-female"


faMale =
    class "fa-male"


faGittip =
    class "fa-gittip"


faGratipay =
    class "fa-gratipay"


faSunO =
    class "fa-sun-o"


faMoonO =
    class "fa-moon-o"


faArchive =
    class "fa-archive"


faBug =
    class "fa-bug"


faVk =
    class "fa-vk"


faWeibo =
    class "fa-weibo"


faRenren =
    class "fa-renren"


faPagelines =
    class "fa-pagelines"


faStackExchange =
    class "fa-stack-exchange"


faArrowCircleORight =
    class "fa-arrow-circle-o-right"


faArrowCircleOLeft =
    class "fa-arrow-circle-o-left"


faToggleLeft =
    class "fa-toggle-left"


faCaretSquareOLeft =
    class "fa-caret-square-o-left"


faDotCircleO =
    class "fa-dot-circle-o"


faWheelchair =
    class "fa-wheelchair"


faVimeoSquare =
    class "fa-vimeo-square"


faTurkishLira =
    class "fa-turkish-lira"


faTry =
    class "fa-try"


faPlusSquareO =
    class "fa-plus-square-o"


faSpaceShuttle =
    class "fa-space-shuttle"


faSlack =
    class "fa-slack"


faEnvelopeSquare =
    class "fa-envelope-square"


faWordpress =
    class "fa-wordpress"


faOpenid =
    class "fa-openid"


faInstitution =
    class "fa-institution"


faBank =
    class "fa-bank"


faUniversity =
    class "fa-university"


faMortarBoard =
    class "fa-mortar-board"


faGraduationCap =
    class "fa-graduation-cap"


faYahoo =
    class "fa-yahoo"


faGoogle =
    class "fa-google"


faReddit =
    class "fa-reddit"


faRedditSquare =
    class "fa-reddit-square"


faStumbleuponCircle =
    class "fa-stumbleupon-circle"


faStumbleupon =
    class "fa-stumbleupon"


faDelicious =
    class "fa-delicious"


faDigg =
    class "fa-digg"


faPiedPiperPp =
    class "fa-pied-piper-pp"


faPiedPiperAlt =
    class "fa-pied-piper-alt"


faDrupal =
    class "fa-drupal"


faJoomla =
    class "fa-joomla"


faLanguage =
    class "fa-language"


faFax =
    class "fa-fax"


faBuilding =
    class "fa-building"


faChild =
    class "fa-child"


faPaw =
    class "fa-paw"


faSpoon =
    class "fa-spoon"


faCube =
    class "fa-cube"


faCubes =
    class "fa-cubes"


faBehance =
    class "fa-behance"


faBehanceSquare =
    class "fa-behance-square"


faSteam =
    class "fa-steam"


faSteamSquare =
    class "fa-steam-square"


faRecycle =
    class "fa-recycle"


faAutomobile =
    class "fa-automobile"


faCar =
    class "fa-car"


faCab =
    class "fa-cab"


faTaxi =
    class "fa-taxi"


faTree =
    class "fa-tree"


faSpotify =
    class "fa-spotify"


faDeviantart =
    class "fa-deviantart"


faSoundcloud =
    class "fa-soundcloud"


faDatabase =
    class "fa-database"


faFilePdfO =
    class "fa-file-pdf-o"


faFileWordO =
    class "fa-file-word-o"


faFileExcelO =
    class "fa-file-excel-o"


faFilePowerpointO =
    class "fa-file-powerpoint-o"


faFilePhotoO =
    class "fa-file-photo-o"


faFilePictureO =
    class "fa-file-picture-o"


faFileImageO =
    class "fa-file-image-o"


faFileZipO =
    class "fa-file-zip-o"


faFileArchiveO =
    class "fa-file-archive-o"


faFileSoundO =
    class "fa-file-sound-o"


faFileAudioO =
    class "fa-file-audio-o"


faFileMovieO =
    class "fa-file-movie-o"


faFileVideoO =
    class "fa-file-video-o"


faFileCodeO =
    class "fa-file-code-o"


faVine =
    class "fa-vine"


faCodepen =
    class "fa-codepen"


faJsfiddle =
    class "fa-jsfiddle"


faLifeBouy =
    class "fa-life-bouy"


faLifeBuoy =
    class "fa-life-buoy"


faLifeSaver =
    class "fa-life-saver"


faSupport =
    class "fa-support"


faLifeRing =
    class "fa-life-ring"


faCircleONotch =
    class "fa-circle-o-notch"


faRa =
    class "fa-ra"


faResistance =
    class "fa-resistance"


faRebel =
    class "fa-rebel"


faGe =
    class "fa-ge"


faEmpire =
    class "fa-empire"


faGitSquare =
    class "fa-git-square"


faGit =
    class "fa-git"


faYCombinatorSquare =
    class "fa-y-combinator-square"


faYcSquare =
    class "fa-yc-square"


faHackerNews =
    class "fa-hacker-news"


faTencentWeibo =
    class "fa-tencent-weibo"


faQq =
    class "fa-qq"


faWechat =
    class "fa-wechat"


faWeixin =
    class "fa-weixin"


faSend =
    class "fa-send"


faPaperPlane =
    class "fa-paper-plane"


faSendO =
    class "fa-send-o"


faPaperPlaneO =
    class "fa-paper-plane-o"


faHistory =
    class "fa-history"


faCircleThin =
    class "fa-circle-thin"


faHeader =
    class "fa-header"


faParagraph =
    class "fa-paragraph"


faSliders =
    class "fa-sliders"


faShareAlt =
    class "fa-share-alt"


faShareAltSquare =
    class "fa-share-alt-square"


faBomb =
    class "fa-bomb"


faSoccerBallO =
    class "fa-soccer-ball-o"


faFutbolO =
    class "fa-futbol-o"


faTty =
    class "fa-tty"


faBinoculars =
    class "fa-binoculars"


faPlug =
    class "fa-plug"


faSlideshare =
    class "fa-slideshare"


faTwitch =
    class "fa-twitch"


faYelp =
    class "fa-yelp"


faNewspaperO =
    class "fa-newspaper-o"


faWifi =
    class "fa-wifi"


faCalculator =
    class "fa-calculator"


faPaypal =
    class "fa-paypal"


faGoogleWallet =
    class "fa-google-wallet"


faCcVisa =
    class "fa-cc-visa"


faCcMastercard =
    class "fa-cc-mastercard"


faCcDiscover =
    class "fa-cc-discover"


faCcAmex =
    class "fa-cc-amex"


faCcPaypal =
    class "fa-cc-paypal"


faCcStripe =
    class "fa-cc-stripe"


faBellSlash =
    class "fa-bell-slash"


faBellSlashO =
    class "fa-bell-slash-o"


faTrash =
    class "fa-trash"


faCopyright =
    class "fa-copyright"


faAt =
    class "fa-at"


faEyedropper =
    class "fa-eyedropper"


faPaintBrush =
    class "fa-paint-brush"


faBirthdayCake =
    class "fa-birthday-cake"


faAreaChart =
    class "fa-area-chart"


faPieChart =
    class "fa-pie-chart"


faLineChart =
    class "fa-line-chart"


faLastfm =
    class "fa-lastfm"


faLastfmSquare =
    class "fa-lastfm-square"


faToggleOff =
    class "fa-toggle-off"


faToggleOn =
    class "fa-toggle-on"


faBicycle =
    class "fa-bicycle"


faBus =
    class "fa-bus"


faIoxhost =
    class "fa-ioxhost"


faAngellist =
    class "fa-angellist"


faCc =
    class "fa-cc"


faShekel =
    class "fa-shekel"


faSheqel =
    class "fa-sheqel"


faIls =
    class "fa-ils"


faMeanpath =
    class "fa-meanpath"


faBuysellads =
    class "fa-buysellads"


faConnectdevelop =
    class "fa-connectdevelop"


faDashcube =
    class "fa-dashcube"


faForumbee =
    class "fa-forumbee"


faLeanpub =
    class "fa-leanpub"


faSellsy =
    class "fa-sellsy"


faShirtsinbulk =
    class "fa-shirtsinbulk"


faSimplybuilt =
    class "fa-simplybuilt"


faSkyatlas =
    class "fa-skyatlas"


faCartPlus =
    class "fa-cart-plus"


faCartArrowDown =
    class "fa-cart-arrow-down"


faDiamond =
    class "fa-diamond"


faShip =
    class "fa-ship"


faUserSecret =
    class "fa-user-secret"


faMotorcycle =
    class "fa-motorcycle"


faStreetView =
    class "fa-street-view"


faHeartbeat =
    class "fa-heartbeat"


faVenus =
    class "fa-venus"


faMars =
    class "fa-mars"


faMercury =
    class "fa-mercury"


faIntersex =
    class "fa-intersex"


faTransgender =
    class "fa-transgender"


faTransgenderAlt =
    class "fa-transgender-alt"


faVenusDouble =
    class "fa-venus-double"


faMarsDouble =
    class "fa-mars-double"


faVenusMars =
    class "fa-venus-mars"


faMarsStroke =
    class "fa-mars-stroke"


faMarsStrokeV =
    class "fa-mars-stroke-v"


faMarsStrokeH =
    class "fa-mars-stroke-h"


faNeuter =
    class "fa-neuter"


faGenderless =
    class "fa-genderless"


faFacebookOfficial =
    class "fa-facebook-official"


faPinterestP =
    class "fa-pinterest-p"


faWhatsapp =
    class "fa-whatsapp"


faServer =
    class "fa-server"


faUserPlus =
    class "fa-user-plus"


faUserTimes =
    class "fa-user-times"


faHotel =
    class "fa-hotel"


faBed =
    class "fa-bed"


faViacoin =
    class "fa-viacoin"


faTrain =
    class "fa-train"


faSubway =
    class "fa-subway"


faMedium =
    class "fa-medium"


faYc =
    class "fa-yc"


faYCombinator =
    class "fa-y-combinator"


faOptinMonster =
    class "fa-optin-monster"


faOpencart =
    class "fa-opencart"


faExpeditedssl =
    class "fa-expeditedssl"


faBattery4 =
    class "fa-battery-4"


faBattery =
    class "fa-battery"


faBatteryFull =
    class "fa-battery-full"


faBattery3 =
    class "fa-battery-3"


faBatteryThreeQuarters =
    class "fa-battery-three-quarters"


faBattery2 =
    class "fa-battery-2"


faBatteryHalf =
    class "fa-battery-half"


faBattery1 =
    class "fa-battery-1"


faBatteryQuarter =
    class "fa-battery-quarter"


faBattery0 =
    class "fa-battery-0"


faBatteryEmpty =
    class "fa-battery-empty"


faMousePointer =
    class "fa-mouse-pointer"


faICursor =
    class "fa-i-cursor"


faObjectGroup =
    class "fa-object-group"


faObjectUngroup =
    class "fa-object-ungroup"


faStickyNote =
    class "fa-sticky-note"


faStickyNoteO =
    class "fa-sticky-note-o"


faCcJcb =
    class "fa-cc-jcb"


faCcDinersClub =
    class "fa-cc-diners-club"


faClone =
    class "fa-clone"


faBalanceScale =
    class "fa-balance-scale"


faHourglassO =
    class "fa-hourglass-o"


faHourglass1 =
    class "fa-hourglass-1"


faHourglassStart =
    class "fa-hourglass-start"


faHourglass2 =
    class "fa-hourglass-2"


faHourglassHalf =
    class "fa-hourglass-half"


faHourglass3 =
    class "fa-hourglass-3"


faHourglassEnd =
    class "fa-hourglass-end"


faHourglass =
    class "fa-hourglass"


faHandGrabO =
    class "fa-hand-grab-o"


faHandRockO =
    class "fa-hand-rock-o"


faHandStopO =
    class "fa-hand-stop-o"


faHandPaperO =
    class "fa-hand-paper-o"


faHandScissorsO =
    class "fa-hand-scissors-o"


faHandLizardO =
    class "fa-hand-lizard-o"


faHandSpockO =
    class "fa-hand-spock-o"


faHandPointerO =
    class "fa-hand-pointer-o"


faHandPeaceO =
    class "fa-hand-peace-o"


faTrademark =
    class "fa-trademark"


faRegistered =
    class "fa-registered"


faCreativeCommons =
    class "fa-creative-commons"


faGg =
    class "fa-gg"


faGgCircle =
    class "fa-gg-circle"


faTripadvisor =
    class "fa-tripadvisor"


faOdnoklassniki =
    class "fa-odnoklassniki"


faOdnoklassnikiSquare =
    class "fa-odnoklassniki-square"


faGetPocket =
    class "fa-get-pocket"


faWikipediaW =
    class "fa-wikipedia-w"


faSafari =
    class "fa-safari"


faChrome =
    class "fa-chrome"


faFirefox =
    class "fa-firefox"


faOpera =
    class "fa-opera"


faInternetExplorer =
    class "fa-internet-explorer"


faTv =
    class "fa-tv"


faTelevision =
    class "fa-television"


faContao =
    class "fa-contao"


fa500px =
    class "fa-500px"


faAmazon =
    class "fa-amazon"


faCalendarPlusO =
    class "fa-calendar-plus-o"


faCalendarMinusO =
    class "fa-calendar-minus-o"


faCalendarTimesO =
    class "fa-calendar-times-o"


faCalendarCheckO =
    class "fa-calendar-check-o"


faIndustry =
    class "fa-industry"


faMapPin =
    class "fa-map-pin"


faMapSigns =
    class "fa-map-signs"


faMapO =
    class "fa-map-o"


faMap =
    class "fa-map"


faCommenting =
    class "fa-commenting"


faCommentingO =
    class "fa-commenting-o"


faHouzz =
    class "fa-houzz"


faVimeo =
    class "fa-vimeo"


faBlackTie =
    class "fa-black-tie"


faFonticons =
    class "fa-fonticons"


faRedditAlien =
    class "fa-reddit-alien"


faEdge =
    class "fa-edge"


faCreditCardAlt =
    class "fa-credit-card-alt"


faCodiepie =
    class "fa-codiepie"


faModx =
    class "fa-modx"


faFortAwesome =
    class "fa-fort-awesome"


faUsb =
    class "fa-usb"


faProductHunt =
    class "fa-product-hunt"


faMixcloud =
    class "fa-mixcloud"


faScribd =
    class "fa-scribd"


faPauseCircle =
    class "fa-pause-circle"


faPauseCircleO =
    class "fa-pause-circle-o"


faStopCircle =
    class "fa-stop-circle"


faStopCircleO =
    class "fa-stop-circle-o"


faShoppingBag =
    class "fa-shopping-bag"


faShoppingBasket =
    class "fa-shopping-basket"


faHashtag =
    class "fa-hashtag"


faBluetooth =
    class "fa-bluetooth"


faBluetoothB =
    class "fa-bluetooth-b"


faPercent =
    class "fa-percent"


faGitlab =
    class "fa-gitlab"


faWpbeginner =
    class "fa-wpbeginner"


faWpforms =
    class "fa-wpforms"


faEnvira =
    class "fa-envira"


faUniversalAccess =
    class "fa-universal-access"


faWheelchairAlt =
    class "fa-wheelchair-alt"


faQuestionCircleO =
    class "fa-question-circle-o"


faBlind =
    class "fa-blind"


faAudioDescription =
    class "fa-audio-description"


faVolumeControlPhone =
    class "fa-volume-control-phone"


faBraille =
    class "fa-braille"


faAssistiveListeningSystems =
    class "fa-assistive-listening-systems"


faAslInterpreting =
    class "fa-asl-interpreting"


faAmericanSignLanguageInterpreting =
    class "fa-american-sign-language-interpreting"


faDeafness =
    class "fa-deafness"


faHardOfHearing =
    class "fa-hard-of-hearing"


faDeaf =
    class "fa-deaf"


faGlide =
    class "fa-glide"


faGlideG =
    class "fa-glide-g"


faSigning =
    class "fa-signing"


faSignLanguage =
    class "fa-sign-language"


faLowVision =
    class "fa-low-vision"


faViadeo =
    class "fa-viadeo"


faViadeoSquare =
    class "fa-viadeo-square"


faSnapchat =
    class "fa-snapchat"


faSnapchatGhost =
    class "fa-snapchat-ghost"


faSnapchatSquare =
    class "fa-snapchat-square"


faPiedPiper =
    class "fa-pied-piper"


faFirstOrder =
    class "fa-first-order"


faYoast =
    class "fa-yoast"


faThemeisle =
    class "fa-themeisle"


faGooglePlusCircle =
    class "fa-google-plus-circle"


faGooglePlusOfficial =
    class "fa-google-plus-official"


faFa =
    class "fa-fa"


faFontAwesome =
    class "fa-font-awesome"


faHandshakeO =
    class "fa-handshake-o"


faEnvelopeOpen =
    class "fa-envelope-open"


faEnvelopeOpenO =
    class "fa-envelope-open-o"


faLinode =
    class "fa-linode"


faAddressBook =
    class "fa-address-book"


faAddressBookO =
    class "fa-address-book-o"


faVcard =
    class "fa-vcard"


faAddressCard =
    class "fa-address-card"


faVcardO =
    class "fa-vcard-o"


faAddressCardO =
    class "fa-address-card-o"


faUserCircle =
    class "fa-user-circle"


faUserCircleO =
    class "fa-user-circle-o"


faUserO =
    class "fa-user-o"


faIdBadge =
    class "fa-id-badge"


faDriversLicense =
    class "fa-drivers-license"


faIdCard =
    class "fa-id-card"


faDriversLicenseO =
    class "fa-drivers-license-o"


faIdCardO =
    class "fa-id-card-o"


faQuora =
    class "fa-quora"


faFreeCodeCamp =
    class "fa-free-code-camp"


faTelegram =
    class "fa-telegram"


faThermometer4 =
    class "fa-thermometer-4"


faThermometer =
    class "fa-thermometer"


faThermometerFull =
    class "fa-thermometer-full"


faThermometer3 =
    class "fa-thermometer-3"


faThermometerThreeQuarters =
    class "fa-thermometer-three-quarters"


faThermometer2 =
    class "fa-thermometer-2"


faThermometerHalf =
    class "fa-thermometer-half"


faThermometer1 =
    class "fa-thermometer-1"


faThermometerQuarter =
    class "fa-thermometer-quarter"


faThermometer0 =
    class "fa-thermometer-0"


faThermometerEmpty =
    class "fa-thermometer-empty"


faShower =
    class "fa-shower"


faBathtub =
    class "fa-bathtub"


faS15 =
    class "fa-s15"


faBath =
    class "fa-bath"


faPodcast =
    class "fa-podcast"


faWindowMaximize =
    class "fa-window-maximize"


faWindowMinimize =
    class "fa-window-minimize"


faWindowRestore =
    class "fa-window-restore"


faTimesRectangle =
    class "fa-times-rectangle"


faWindowClose =
    class "fa-window-close"


faTimesRectangleO =
    class "fa-times-rectangle-o"


faWindowCloseO =
    class "fa-window-close-o"


faBandcamp =
    class "fa-bandcamp"


faGrav =
    class "fa-grav"


faEtsy =
    class "fa-etsy"


faImdb =
    class "fa-imdb"


faRavelry =
    class "fa-ravelry"


faEercast =
    class "fa-eercast"


faMicrochip =
    class "fa-microchip"


faSnowflakeO =
    class "fa-snowflake-o"


faSuperpowers =
    class "fa-superpowers"


faWpexplorer =
    class "fa-wpexplorer"


faMeetup =
    class "fa-meetup"


srOnly =
    class "sr-only"


srOnlyFocusable =
    class "sr-only-focusable"


h6 =
    class "h6"


h5 =
    class "h5"


h4 =
    class "h4"


h3 =
    class "h3"


h2 =
    class "h2"


h1 =
    class "h1"


small =
    class "small"


mark =
    class "mark"


lead =
    class "lead"


display1 =
    class "display-1"


display2 =
    class "display-2"


display3 =
    class "display-3"


display4 =
    class "display-4"


display5 =
    class "display-5"


display6 =
    class "display-6"


listUnstyled =
    class "list-unstyled"


listInline =
    class "list-inline"


listInlineItem =
    class "list-inline-item"


initialism =
    class "initialism"


blockquote =
    class "blockquote"


blockquoteFooter =
    class "blockquote-footer"


imgFluid =
    class "img-fluid"


imgThumbnail =
    class "img-thumbnail"


figure =
    class "figure"


figureImg =
    class "figure-img"


figureCaption =
    class "figure-caption"


container =
    class "container"


containerFluid =
    class "container-fluid"


containerXxl =
    class "container-xxl"


containerXl =
    class "container-xl"


containerLg =
    class "container-lg"


containerMd =
    class "container-md"


containerSm =
    class "container-sm"


row =
    class "row"


col =
    class "col"


rowColsAuto =
    class "row-cols-auto"


rowCols1 =
    class "row-cols-1"


rowCols2 =
    class "row-cols-2"


rowCols3 =
    class "row-cols-3"


rowCols4 =
    class "row-cols-4"


rowCols5 =
    class "row-cols-5"


rowCols6 =
    class "row-cols-6"


colAuto =
    class "col-auto"


col1 =
    class "col-1"


col2 =
    class "col-2"


col3 =
    class "col-3"


col4 =
    class "col-4"


col5 =
    class "col-5"


col6 =
    class "col-6"


col7 =
    class "col-7"


col8 =
    class "col-8"


col9 =
    class "col-9"


col10 =
    class "col-10"


col11 =
    class "col-11"


col12 =
    class "col-12"


offset1 =
    class "offset-1"


offset2 =
    class "offset-2"


offset3 =
    class "offset-3"


offset4 =
    class "offset-4"


offset5 =
    class "offset-5"


offset6 =
    class "offset-6"


offset7 =
    class "offset-7"


offset8 =
    class "offset-8"


offset9 =
    class "offset-9"


offset10 =
    class "offset-10"


offset11 =
    class "offset-11"


g0 =
    class "g-0"


gx0 =
    class "gx-0"


gy0 =
    class "gy-0"


g1 =
    class "g-1"


gx1 =
    class "gx-1"


gy1 =
    class "gy-1"


g2 =
    class "g-2"


gx2 =
    class "gx-2"


gy2 =
    class "gy-2"


g3 =
    class "g-3"


gx3 =
    class "gx-3"


gy3 =
    class "gy-3"


g4 =
    class "g-4"


gx4 =
    class "gx-4"


gy4 =
    class "gy-4"


g5 =
    class "g-5"


gx5 =
    class "gx-5"


gy5 =
    class "gy-5"


colSm =
    class "col-sm"


rowColsSmAuto =
    class "row-cols-sm-auto"


rowColsSm1 =
    class "row-cols-sm-1"


rowColsSm2 =
    class "row-cols-sm-2"


rowColsSm3 =
    class "row-cols-sm-3"


rowColsSm4 =
    class "row-cols-sm-4"


rowColsSm5 =
    class "row-cols-sm-5"


rowColsSm6 =
    class "row-cols-sm-6"


colSmAuto =
    class "col-sm-auto"


colSm1 =
    class "col-sm-1"


colSm2 =
    class "col-sm-2"


colSm3 =
    class "col-sm-3"


colSm4 =
    class "col-sm-4"


colSm5 =
    class "col-sm-5"


colSm6 =
    class "col-sm-6"


colSm7 =
    class "col-sm-7"


colSm8 =
    class "col-sm-8"


colSm9 =
    class "col-sm-9"


colSm10 =
    class "col-sm-10"


colSm11 =
    class "col-sm-11"


colSm12 =
    class "col-sm-12"


offsetSm0 =
    class "offset-sm-0"


offsetSm1 =
    class "offset-sm-1"


offsetSm2 =
    class "offset-sm-2"


offsetSm3 =
    class "offset-sm-3"


offsetSm4 =
    class "offset-sm-4"


offsetSm5 =
    class "offset-sm-5"


offsetSm6 =
    class "offset-sm-6"


offsetSm7 =
    class "offset-sm-7"


offsetSm8 =
    class "offset-sm-8"


offsetSm9 =
    class "offset-sm-9"


offsetSm10 =
    class "offset-sm-10"


offsetSm11 =
    class "offset-sm-11"


gSm0 =
    class "g-sm-0"


gxSm0 =
    class "gx-sm-0"


gySm0 =
    class "gy-sm-0"


gSm1 =
    class "g-sm-1"


gxSm1 =
    class "gx-sm-1"


gySm1 =
    class "gy-sm-1"


gSm2 =
    class "g-sm-2"


gxSm2 =
    class "gx-sm-2"


gySm2 =
    class "gy-sm-2"


gSm3 =
    class "g-sm-3"


gxSm3 =
    class "gx-sm-3"


gySm3 =
    class "gy-sm-3"


gSm4 =
    class "g-sm-4"


gxSm4 =
    class "gx-sm-4"


gySm4 =
    class "gy-sm-4"


gSm5 =
    class "g-sm-5"


gxSm5 =
    class "gx-sm-5"


gySm5 =
    class "gy-sm-5"


colMd =
    class "col-md"


rowColsMdAuto =
    class "row-cols-md-auto"


rowColsMd1 =
    class "row-cols-md-1"


rowColsMd2 =
    class "row-cols-md-2"


rowColsMd3 =
    class "row-cols-md-3"


rowColsMd4 =
    class "row-cols-md-4"


rowColsMd5 =
    class "row-cols-md-5"


rowColsMd6 =
    class "row-cols-md-6"


colMdAuto =
    class "col-md-auto"


colMd1 =
    class "col-md-1"


colMd2 =
    class "col-md-2"


colMd3 =
    class "col-md-3"


colMd4 =
    class "col-md-4"


colMd5 =
    class "col-md-5"


colMd6 =
    class "col-md-6"


colMd7 =
    class "col-md-7"


colMd8 =
    class "col-md-8"


colMd9 =
    class "col-md-9"


colMd10 =
    class "col-md-10"


colMd11 =
    class "col-md-11"


colMd12 =
    class "col-md-12"


offsetMd0 =
    class "offset-md-0"


offsetMd1 =
    class "offset-md-1"


offsetMd2 =
    class "offset-md-2"


offsetMd3 =
    class "offset-md-3"


offsetMd4 =
    class "offset-md-4"


offsetMd5 =
    class "offset-md-5"


offsetMd6 =
    class "offset-md-6"


offsetMd7 =
    class "offset-md-7"


offsetMd8 =
    class "offset-md-8"


offsetMd9 =
    class "offset-md-9"


offsetMd10 =
    class "offset-md-10"


offsetMd11 =
    class "offset-md-11"


gMd0 =
    class "g-md-0"


gxMd0 =
    class "gx-md-0"


gyMd0 =
    class "gy-md-0"


gMd1 =
    class "g-md-1"


gxMd1 =
    class "gx-md-1"


gyMd1 =
    class "gy-md-1"


gMd2 =
    class "g-md-2"


gxMd2 =
    class "gx-md-2"


gyMd2 =
    class "gy-md-2"


gMd3 =
    class "g-md-3"


gxMd3 =
    class "gx-md-3"


gyMd3 =
    class "gy-md-3"


gMd4 =
    class "g-md-4"


gxMd4 =
    class "gx-md-4"


gyMd4 =
    class "gy-md-4"


gMd5 =
    class "g-md-5"


gxMd5 =
    class "gx-md-5"


gyMd5 =
    class "gy-md-5"


colLg =
    class "col-lg"


rowColsLgAuto =
    class "row-cols-lg-auto"


rowColsLg1 =
    class "row-cols-lg-1"


rowColsLg2 =
    class "row-cols-lg-2"


rowColsLg3 =
    class "row-cols-lg-3"


rowColsLg4 =
    class "row-cols-lg-4"


rowColsLg5 =
    class "row-cols-lg-5"


rowColsLg6 =
    class "row-cols-lg-6"


colLgAuto =
    class "col-lg-auto"


colLg1 =
    class "col-lg-1"


colLg2 =
    class "col-lg-2"


colLg3 =
    class "col-lg-3"


colLg4 =
    class "col-lg-4"


colLg5 =
    class "col-lg-5"


colLg6 =
    class "col-lg-6"


colLg7 =
    class "col-lg-7"


colLg8 =
    class "col-lg-8"


colLg9 =
    class "col-lg-9"


colLg10 =
    class "col-lg-10"


colLg11 =
    class "col-lg-11"


colLg12 =
    class "col-lg-12"


offsetLg0 =
    class "offset-lg-0"


offsetLg1 =
    class "offset-lg-1"


offsetLg2 =
    class "offset-lg-2"


offsetLg3 =
    class "offset-lg-3"


offsetLg4 =
    class "offset-lg-4"


offsetLg5 =
    class "offset-lg-5"


offsetLg6 =
    class "offset-lg-6"


offsetLg7 =
    class "offset-lg-7"


offsetLg8 =
    class "offset-lg-8"


offsetLg9 =
    class "offset-lg-9"


offsetLg10 =
    class "offset-lg-10"


offsetLg11 =
    class "offset-lg-11"


gLg0 =
    class "g-lg-0"


gxLg0 =
    class "gx-lg-0"


gyLg0 =
    class "gy-lg-0"


gLg1 =
    class "g-lg-1"


gxLg1 =
    class "gx-lg-1"


gyLg1 =
    class "gy-lg-1"


gLg2 =
    class "g-lg-2"


gxLg2 =
    class "gx-lg-2"


gyLg2 =
    class "gy-lg-2"


gLg3 =
    class "g-lg-3"


gxLg3 =
    class "gx-lg-3"


gyLg3 =
    class "gy-lg-3"


gLg4 =
    class "g-lg-4"


gxLg4 =
    class "gx-lg-4"


gyLg4 =
    class "gy-lg-4"


gLg5 =
    class "g-lg-5"


gxLg5 =
    class "gx-lg-5"


gyLg5 =
    class "gy-lg-5"


colXl =
    class "col-xl"


rowColsXlAuto =
    class "row-cols-xl-auto"


rowColsXl1 =
    class "row-cols-xl-1"


rowColsXl2 =
    class "row-cols-xl-2"


rowColsXl3 =
    class "row-cols-xl-3"


rowColsXl4 =
    class "row-cols-xl-4"


rowColsXl5 =
    class "row-cols-xl-5"


rowColsXl6 =
    class "row-cols-xl-6"


colXlAuto =
    class "col-xl-auto"


colXl1 =
    class "col-xl-1"


colXl2 =
    class "col-xl-2"


colXl3 =
    class "col-xl-3"


colXl4 =
    class "col-xl-4"


colXl5 =
    class "col-xl-5"


colXl6 =
    class "col-xl-6"


colXl7 =
    class "col-xl-7"


colXl8 =
    class "col-xl-8"


colXl9 =
    class "col-xl-9"


colXl10 =
    class "col-xl-10"


colXl11 =
    class "col-xl-11"


colXl12 =
    class "col-xl-12"


offsetXl0 =
    class "offset-xl-0"


offsetXl1 =
    class "offset-xl-1"


offsetXl2 =
    class "offset-xl-2"


offsetXl3 =
    class "offset-xl-3"


offsetXl4 =
    class "offset-xl-4"


offsetXl5 =
    class "offset-xl-5"


offsetXl6 =
    class "offset-xl-6"


offsetXl7 =
    class "offset-xl-7"


offsetXl8 =
    class "offset-xl-8"


offsetXl9 =
    class "offset-xl-9"


offsetXl10 =
    class "offset-xl-10"


offsetXl11 =
    class "offset-xl-11"


gXl0 =
    class "g-xl-0"


gxXl0 =
    class "gx-xl-0"


gyXl0 =
    class "gy-xl-0"


gXl1 =
    class "g-xl-1"


gxXl1 =
    class "gx-xl-1"


gyXl1 =
    class "gy-xl-1"


gXl2 =
    class "g-xl-2"


gxXl2 =
    class "gx-xl-2"


gyXl2 =
    class "gy-xl-2"


gXl3 =
    class "g-xl-3"


gxXl3 =
    class "gx-xl-3"


gyXl3 =
    class "gy-xl-3"


gXl4 =
    class "g-xl-4"


gxXl4 =
    class "gx-xl-4"


gyXl4 =
    class "gy-xl-4"


gXl5 =
    class "g-xl-5"


gxXl5 =
    class "gx-xl-5"


gyXl5 =
    class "gy-xl-5"


colXxl =
    class "col-xxl"


rowColsXxlAuto =
    class "row-cols-xxl-auto"


rowColsXxl1 =
    class "row-cols-xxl-1"


rowColsXxl2 =
    class "row-cols-xxl-2"


rowColsXxl3 =
    class "row-cols-xxl-3"


rowColsXxl4 =
    class "row-cols-xxl-4"


rowColsXxl5 =
    class "row-cols-xxl-5"


rowColsXxl6 =
    class "row-cols-xxl-6"


colXxlAuto =
    class "col-xxl-auto"


colXxl1 =
    class "col-xxl-1"


colXxl2 =
    class "col-xxl-2"


colXxl3 =
    class "col-xxl-3"


colXxl4 =
    class "col-xxl-4"


colXxl5 =
    class "col-xxl-5"


colXxl6 =
    class "col-xxl-6"


colXxl7 =
    class "col-xxl-7"


colXxl8 =
    class "col-xxl-8"


colXxl9 =
    class "col-xxl-9"


colXxl10 =
    class "col-xxl-10"


colXxl11 =
    class "col-xxl-11"


colXxl12 =
    class "col-xxl-12"


offsetXxl0 =
    class "offset-xxl-0"


offsetXxl1 =
    class "offset-xxl-1"


offsetXxl2 =
    class "offset-xxl-2"


offsetXxl3 =
    class "offset-xxl-3"


offsetXxl4 =
    class "offset-xxl-4"


offsetXxl5 =
    class "offset-xxl-5"


offsetXxl6 =
    class "offset-xxl-6"


offsetXxl7 =
    class "offset-xxl-7"


offsetXxl8 =
    class "offset-xxl-8"


offsetXxl9 =
    class "offset-xxl-9"


offsetXxl10 =
    class "offset-xxl-10"


offsetXxl11 =
    class "offset-xxl-11"


gXxl0 =
    class "g-xxl-0"


gxXxl0 =
    class "gx-xxl-0"


gyXxl0 =
    class "gy-xxl-0"


gXxl1 =
    class "g-xxl-1"


gxXxl1 =
    class "gx-xxl-1"


gyXxl1 =
    class "gy-xxl-1"


gXxl2 =
    class "g-xxl-2"


gxXxl2 =
    class "gx-xxl-2"


gyXxl2 =
    class "gy-xxl-2"


gXxl3 =
    class "g-xxl-3"


gxXxl3 =
    class "gx-xxl-3"


gyXxl3 =
    class "gy-xxl-3"


gXxl4 =
    class "g-xxl-4"


gxXxl4 =
    class "gx-xxl-4"


gyXxl4 =
    class "gy-xxl-4"


gXxl5 =
    class "g-xxl-5"


gxXxl5 =
    class "gx-xxl-5"


gyXxl5 =
    class "gy-xxl-5"


table =
    class "table"


captionTop =
    class "caption-top"


tableSm =
    class "table-sm"


tableBordered =
    class "table-bordered"


tableBorderless =
    class "table-borderless"


tableStriped =
    class "table-striped"


tableActive =
    class "table-active"


tableHover =
    class "table-hover"


tablePrimary =
    class "table-primary"


tableSecondary =
    class "table-secondary"


tableSuccess =
    class "table-success"


tableInfo =
    class "table-info"


tableWarning =
    class "table-warning"


tableDanger =
    class "table-danger"


tableLight =
    class "table-light"


tableDark =
    class "table-dark"


tableResponsive =
    class "table-responsive"


tableResponsiveSm =
    class "table-responsive-sm"


tableResponsiveMd =
    class "table-responsive-md"


tableResponsiveLg =
    class "table-responsive-lg"


tableResponsiveXl =
    class "table-responsive-xl"


tableResponsiveXxl =
    class "table-responsive-xxl"


formLabel =
    class "form-label"


colFormLabel =
    class "col-form-label"


colFormLabelLg =
    class "col-form-label-lg"


colFormLabelSm =
    class "col-form-label-sm"


formText =
    class "form-text"


formControl =
    class "form-control"


formControlPlaintext =
    class "form-control-plaintext"


formControlSm =
    class "form-control-sm"


formControlLg =
    class "form-control-lg"


formControlColor =
    class "form-control-color"


formSelect =
    class "form-select"


formSelectSm =
    class "form-select-sm"


formSelectLg =
    class "form-select-lg"


formCheck =
    class "form-check"


formCheckInput =
    class "form-check-input"


formCheckLabel =
    class "form-check-label"


formSwitch =
    class "form-switch"


formCheckInline =
    class "form-check-inline"


btnCheck =
    class "btn-check"


formRange =
    class "form-range"


formFloating =
    class "form-floating"


inputGroup =
    class "input-group"


inputGroupText =
    class "input-group-text"


inputGroupLg =
    class "input-group-lg"


inputGroupSm =
    class "input-group-sm"


validFeedback =
    class "valid-feedback"


validTooltip =
    class "valid-tooltip"


wasValidated =
    class "was-validated"


isValid =
    class "is-valid"


invalidFeedback =
    class "invalid-feedback"


invalidTooltip =
    class "invalid-tooltip"


isInvalid =
    class "is-invalid"


btn =
    class "btn"


btnPrimary =
    class "btn-primary"


show =
    class "show"


btnSecondary =
    class "btn-secondary"


btnSuccess =
    class "btn-success"


btnInfo =
    class "btn-info"


btnWarning =
    class "btn-warning"


btnDanger =
    class "btn-danger"


btnLight =
    class "btn-light"


btnDark =
    class "btn-dark"


btnOutlinePrimary =
    class "btn-outline-primary"


btnOutlineSecondary =
    class "btn-outline-secondary"


btnOutlineSuccess =
    class "btn-outline-success"


btnOutlineInfo =
    class "btn-outline-info"


btnOutlineWarning =
    class "btn-outline-warning"


btnOutlineDanger =
    class "btn-outline-danger"


btnOutlineLight =
    class "btn-outline-light"


btnOutlineDark =
    class "btn-outline-dark"


btnLink =
    class "btn-link"


btnLg =
    class "btn-lg"


btnGroupLg =
    class "btn-group-lg"


btnSm =
    class "btn-sm"


btnGroupSm =
    class "btn-group-sm"


fade =
    class "fade"


collapse =
    class "collapse"


collapsing =
    class "collapsing"


dropup =
    class "dropup"


dropend =
    class "dropend"


dropdown =
    class "dropdown"


dropstart =
    class "dropstart"


dropdownToggle =
    class "dropdown-toggle"


dropdownMenu =
    class "dropdown-menu"


dropdownMenuStart =
    class "dropdown-menu-start"


dropdownMenuEnd =
    class "dropdown-menu-end"


dropdownMenuSmStart =
    class "dropdown-menu-sm-start"


dropdownMenuSmEnd =
    class "dropdown-menu-sm-end"


dropdownMenuMdStart =
    class "dropdown-menu-md-start"


dropdownMenuMdEnd =
    class "dropdown-menu-md-end"


dropdownMenuLgStart =
    class "dropdown-menu-lg-start"


dropdownMenuLgEnd =
    class "dropdown-menu-lg-end"


dropdownMenuXlStart =
    class "dropdown-menu-xl-start"


dropdownMenuXlEnd =
    class "dropdown-menu-xl-end"


dropdownMenuXxlStart =
    class "dropdown-menu-xxl-start"


dropdownMenuXxlEnd =
    class "dropdown-menu-xxl-end"


dropdownDivider =
    class "dropdown-divider"


dropdownItem =
    class "dropdown-item"


dropdownHeader =
    class "dropdown-header"


dropdownItemText =
    class "dropdown-item-text"


dropdownMenuDark =
    class "dropdown-menu-dark"


btnGroup =
    class "btn-group"


btnGroupVertical =
    class "btn-group-vertical"


btnToolbar =
    class "btn-toolbar"


dropdownToggleSplit =
    class "dropdown-toggle-split"


nav =
    class "nav"


navLink =
    class "nav-link"


navTabs =
    class "nav-tabs"


navPills =
    class "nav-pills"


navFill =
    class "nav-fill"


navJustified =
    class "nav-justified"


tabContent =
    class "tab-content"


navbar =
    class "navbar"


navbarBrand =
    class "navbar-brand"


navbarNav =
    class "navbar-nav"


navbarText =
    class "navbar-text"


navbarCollapse =
    class "navbar-collapse"


navbarToggler =
    class "navbar-toggler"


navbarTogglerIcon =
    class "navbar-toggler-icon"


navbarExpandSm =
    class "navbar-expand-sm"


navbarExpandMd =
    class "navbar-expand-md"


navbarExpandLg =
    class "navbar-expand-lg"


navbarExpandXl =
    class "navbar-expand-xl"


navbarExpandXxl =
    class "navbar-expand-xxl"


navbarExpand =
    class "navbar-expand"


navbarLight =
    class "navbar-light"


navbarDark =
    class "navbar-dark"


card =
    class "card"


cardBody =
    class "card-body"


cardTitle =
    class "card-title"


cardSubtitle =
    class "card-subtitle"


cardText =
    class "card-text"


cardLink =
    class "card-link"


cardHeader =
    class "card-header"


cardFooter =
    class "card-footer"


cardHeaderTabs =
    class "card-header-tabs"


cardHeaderPills =
    class "card-header-pills"


cardImgOverlay =
    class "card-img-overlay"


cardImg =
    class "card-img"


cardImgTop =
    class "card-img-top"


cardImgBottom =
    class "card-img-bottom"


cardGroup =
    class "card-group"


accordionButton =
    class "accordion-button"


accordionHeader =
    class "accordion-header"


accordionItem =
    class "accordion-item"


accordionCollapse =
    class "accordion-collapse"


accordionBody =
    class "accordion-body"


accordionFlush =
    class "accordion-flush"


breadcrumb =
    class "breadcrumb"


breadcrumbItem =
    class "breadcrumb-item"


pagination =
    class "pagination"


pageLink =
    class "page-link"


pageItem =
    class "page-item"


paginationLg =
    class "pagination-lg"


paginationSm =
    class "pagination-sm"


badge =
    class "badge"


alert =
    class "alert"


alertHeading =
    class "alert-heading"


alertLink =
    class "alert-link"


alertDismissible =
    class "alert-dismissible"


alertPrimary =
    class "alert-primary"


alertSecondary =
    class "alert-secondary"


alertSuccess =
    class "alert-success"


alertInfo =
    class "alert-info"


alertWarning =
    class "alert-warning"


alertDanger =
    class "alert-danger"


alertLight =
    class "alert-light"


alertDark =
    class "alert-dark"


progress =
    class "progress"


progressBar =
    class "progress-bar"


progressBarStriped =
    class "progress-bar-striped"


progressBarAnimated =
    class "progress-bar-animated"


listGroup =
    class "list-group"


listGroupItemAction =
    class "list-group-item-action"


listGroupItem =
    class "list-group-item"


listGroupHorizontal =
    class "list-group-horizontal"


listGroupHorizontalSm =
    class "list-group-horizontal-sm"


listGroupHorizontalMd =
    class "list-group-horizontal-md"


listGroupHorizontalLg =
    class "list-group-horizontal-lg"


listGroupHorizontalXl =
    class "list-group-horizontal-xl"


listGroupHorizontalXxl =
    class "list-group-horizontal-xxl"


listGroupFlush =
    class "list-group-flush"


listGroupItemPrimary =
    class "list-group-item-primary"


listGroupItemSecondary =
    class "list-group-item-secondary"


listGroupItemSuccess =
    class "list-group-item-success"


listGroupItemInfo =
    class "list-group-item-info"


listGroupItemWarning =
    class "list-group-item-warning"


listGroupItemDanger =
    class "list-group-item-danger"


listGroupItemLight =
    class "list-group-item-light"


listGroupItemDark =
    class "list-group-item-dark"


btnClose =
    class "btn-close"


btnCloseWhite =
    class "btn-close-white"


toast =
    class "toast"


toastContainer =
    class "toast-container"


toastHeader =
    class "toast-header"


toastBody =
    class "toast-body"


modalOpen =
    class "modal-open"


modal =
    class "modal"


modalDialog =
    class "modal-dialog"


modalDialogScrollable =
    class "modal-dialog-scrollable"


modalDialogCentered =
    class "modal-dialog-centered"


modalContent =
    class "modal-content"


modalBackdrop =
    class "modal-backdrop"


modalHeader =
    class "modal-header"


modalTitle =
    class "modal-title"


modalBody =
    class "modal-body"


modalFooter =
    class "modal-footer"


modalScrollbarMeasure =
    class "modal-scrollbar-measure"


modalSm =
    class "modal-sm"


modalLg =
    class "modal-lg"


modalXl =
    class "modal-xl"


modalFullscreen =
    class "modal-fullscreen"


modalFullscreenSmDown =
    class "modal-fullscreen-sm-down"


modalFullscreenMdDown =
    class "modal-fullscreen-md-down"


modalFullscreenLgDown =
    class "modal-fullscreen-lg-down"


modalFullscreenXlDown =
    class "modal-fullscreen-xl-down"


modalFullscreenXxlDown =
    class "modal-fullscreen-xxl-down"


tooltip =
    class "tooltip"


bsTooltipTop =
    class "bs-tooltip-top"


bsTooltipAuto =
    class "bs-tooltip-auto"


bsTooltipEnd =
    class "bs-tooltip-end"


bsTooltipBottom =
    class "bs-tooltip-bottom"


bsTooltipStart =
    class "bs-tooltip-start"


tooltipInner =
    class "tooltip-inner"


popover =
    class "popover"


bsPopoverTop =
    class "bs-popover-top"


bsPopoverAuto =
    class "bs-popover-auto"


bsPopoverEnd =
    class "bs-popover-end"


bsPopoverBottom =
    class "bs-popover-bottom"


bsPopoverStart =
    class "bs-popover-start"


popoverHeader =
    class "popover-header"


popoverBody =
    class "popover-body"


carousel =
    class "carousel"


carouselInner =
    class "carousel-inner"


carouselItem =
    class "carousel-item"


carouselItemNext =
    class "carousel-item-next"


carouselItemPrev =
    class "carousel-item-prev"


active =
    class "active"


carouselFade =
    class "carousel-fade"


carouselControlPrev =
    class "carousel-control-prev"


carouselControlNext =
    class "carousel-control-next"


carouselControlPrevIcon =
    class "carousel-control-prev-icon"


carouselControlNextIcon =
    class "carousel-control-next-icon"


carouselIndicators =
    class "carousel-indicators"


carouselCaption =
    class "carousel-caption"


carouselDark =
    class "carousel-dark"


spinnerBorder =
    class "spinner-border"


spinnerBorderSm =
    class "spinner-border-sm"


spinnerGrow =
    class "spinner-grow"


spinnerGrowSm =
    class "spinner-grow-sm"


clearfix =
    class "clearfix"


linkPrimary =
    class "link-primary"


linkSecondary =
    class "link-secondary"


linkSuccess =
    class "link-success"


linkInfo =
    class "link-info"


linkWarning =
    class "link-warning"


linkDanger =
    class "link-danger"


linkLight =
    class "link-light"


linkDark =
    class "link-dark"


ratio =
    class "ratio"


ratio1x1 =
    class "ratio-1x1"


ratio4x3 =
    class "ratio-4x3"


ratio16x9 =
    class "ratio-16x9"


ratio21x9 =
    class "ratio-21x9"


fixedTop =
    class "fixed-top"


fixedBottom =
    class "fixed-bottom"


stickyTop =
    class "sticky-top"


stickySmTop =
    class "sticky-sm-top"


stickyMdTop =
    class "sticky-md-top"


stickyLgTop =
    class "sticky-lg-top"


stickyXlTop =
    class "sticky-xl-top"


stickyXxlTop =
    class "sticky-xxl-top"


visuallyHidden =
    class "visually-hidden"


visuallyHiddenFocusable =
    class "visually-hidden-focusable"


stretchedLink =
    class "stretched-link"


textTruncate =
    class "text-truncate"


alignBaseline =
    class "align-baseline"


alignTop =
    class "align-top"


alignMiddle =
    class "align-middle"


alignBottom =
    class "align-bottom"


alignTextBottom =
    class "align-text-bottom"


alignTextTop =
    class "align-text-top"


floatStart =
    class "float-start"


floatEnd =
    class "float-end"


floatNone =
    class "float-none"


overflowAuto =
    class "overflow-auto"


overflowHidden =
    class "overflow-hidden"


overflowVisible =
    class "overflow-visible"


overflowScroll =
    class "overflow-scroll"


dInline =
    class "d-inline"


dInlineBlock =
    class "d-inline-block"


dBlock =
    class "d-block"


dGrid =
    class "d-grid"


dTable =
    class "d-table"


dTableRow =
    class "d-table-row"


dTableCell =
    class "d-table-cell"


dFlex =
    class "d-flex"


dInlineFlex =
    class "d-inline-flex"


dNone =
    class "d-none"


shadow =
    class "shadow"


shadowSm =
    class "shadow-sm"


shadowLg =
    class "shadow-lg"


shadowNone =
    class "shadow-none"


positionStatic =
    class "position-static"


positionRelative =
    class "position-relative"


positionAbsolute =
    class "position-absolute"


positionFixed =
    class "position-fixed"


positionSticky =
    class "position-sticky"


top0 =
    class "top-0"


top50 =
    class "top-50"


top100 =
    class "top-100"


bottom0 =
    class "bottom-0"


bottom50 =
    class "bottom-50"


bottom100 =
    class "bottom-100"


start0 =
    class "start-0"


start50 =
    class "start-50"


start100 =
    class "start-100"


end0 =
    class "end-0"


end50 =
    class "end-50"


end100 =
    class "end-100"


translateMiddle =
    class "translate-middle"


translateMiddleX =
    class "translate-middle-x"


translateMiddleY =
    class "translate-middle-y"


border =
    class "border"


border0 =
    class "border-0"


borderTop =
    class "border-top"


borderTop0 =
    class "border-top-0"


borderEnd =
    class "border-end"


borderEnd0 =
    class "border-end-0"


borderBottom =
    class "border-bottom"


borderBottom0 =
    class "border-bottom-0"


borderStart =
    class "border-start"


borderStart0 =
    class "border-start-0"


borderPrimary =
    class "border-primary"


borderSecondary =
    class "border-secondary"


borderSuccess =
    class "border-success"


borderInfo =
    class "border-info"


borderWarning =
    class "border-warning"


borderDanger =
    class "border-danger"


borderLight =
    class "border-light"


borderDark =
    class "border-dark"


borderWhite =
    class "border-white"


border1 =
    class "border-1"


border2 =
    class "border-2"


border3 =
    class "border-3"


border4 =
    class "border-4"


border5 =
    class "border-5"


w25 =
    class "w-25"


w50 =
    class "w-50"


w75 =
    class "w-75"


w100 =
    class "w-100"


wAuto =
    class "w-auto"


mw100 =
    class "mw-100"


vw100 =
    class "vw-100"


minVw100 =
    class "min-vw-100"


h25 =
    class "h-25"


h50 =
    class "h-50"


h75 =
    class "h-75"


h100 =
    class "h-100"


hAuto =
    class "h-auto"


mh100 =
    class "mh-100"


vh100 =
    class "vh-100"


minVh100 =
    class "min-vh-100"


flexFill =
    class "flex-fill"


flexRow =
    class "flex-row"


flexColumn =
    class "flex-column"


flexRowReverse =
    class "flex-row-reverse"


flexColumnReverse =
    class "flex-column-reverse"


flexGrow0 =
    class "flex-grow-0"


flexGrow1 =
    class "flex-grow-1"


flexShrink0 =
    class "flex-shrink-0"


flexShrink1 =
    class "flex-shrink-1"


flexWrap =
    class "flex-wrap"


flexNowrap =
    class "flex-nowrap"


flexWrapReverse =
    class "flex-wrap-reverse"


gap0 =
    class "gap-0"


gap1 =
    class "gap-1"


gap2 =
    class "gap-2"


gap3 =
    class "gap-3"


gap4 =
    class "gap-4"


gap5 =
    class "gap-5"


justifyContentStart =
    class "justify-content-start"


justifyContentEnd =
    class "justify-content-end"


justifyContentCenter =
    class "justify-content-center"


justifyContentBetween =
    class "justify-content-between"


justifyContentAround =
    class "justify-content-around"


justifyContentEvenly =
    class "justify-content-evenly"


alignItemsStart =
    class "align-items-start"


alignItemsEnd =
    class "align-items-end"


alignItemsCenter =
    class "align-items-center"


alignItemsBaseline =
    class "align-items-baseline"


alignItemsStretch =
    class "align-items-stretch"


alignContentStart =
    class "align-content-start"


alignContentEnd =
    class "align-content-end"


alignContentCenter =
    class "align-content-center"


alignContentBetween =
    class "align-content-between"


alignContentAround =
    class "align-content-around"


alignContentStretch =
    class "align-content-stretch"


alignSelfAuto =
    class "align-self-auto"


alignSelfStart =
    class "align-self-start"


alignSelfEnd =
    class "align-self-end"


alignSelfCenter =
    class "align-self-center"


alignSelfBaseline =
    class "align-self-baseline"


alignSelfStretch =
    class "align-self-stretch"


orderFirst =
    class "order-first"


order0 =
    class "order-0"


order1 =
    class "order-1"


order2 =
    class "order-2"


order3 =
    class "order-3"


order4 =
    class "order-4"


order5 =
    class "order-5"


orderLast =
    class "order-last"


m0 =
    class "m-0"


m1 =
    class "m-1"


m2 =
    class "m-2"


m3 =
    class "m-3"


m4 =
    class "m-4"


m5 =
    class "m-5"


mAuto =
    class "m-auto"


mx0 =
    class "mx-0"


mx1 =
    class "mx-1"


mx2 =
    class "mx-2"


mx3 =
    class "mx-3"


mx4 =
    class "mx-4"


mx5 =
    class "mx-5"


mxAuto =
    class "mx-auto"


my0 =
    class "my-0"


my1 =
    class "my-1"


my2 =
    class "my-2"


my3 =
    class "my-3"


my4 =
    class "my-4"


my5 =
    class "my-5"


myAuto =
    class "my-auto"


mt0 =
    class "mt-0"


mt1 =
    class "mt-1"


mt2 =
    class "mt-2"


mt3 =
    class "mt-3"


mt4 =
    class "mt-4"


mt5 =
    class "mt-5"


mtAuto =
    class "mt-auto"


me0 =
    class "me-0"


me1 =
    class "me-1"


me2 =
    class "me-2"


me3 =
    class "me-3"


me4 =
    class "me-4"


me5 =
    class "me-5"


meAuto =
    class "me-auto"


mb0 =
    class "mb-0"


mb1 =
    class "mb-1"


mb2 =
    class "mb-2"


mb3 =
    class "mb-3"


mb4 =
    class "mb-4"


mb5 =
    class "mb-5"


mbAuto =
    class "mb-auto"


ms0 =
    class "ms-0"


ms1 =
    class "ms-1"


ms2 =
    class "ms-2"


ms3 =
    class "ms-3"


ms4 =
    class "ms-4"


ms5 =
    class "ms-5"


msAuto =
    class "ms-auto"


p0 =
    class "p-0"


p1 =
    class "p-1"


p2 =
    class "p-2"


p3 =
    class "p-3"


p4 =
    class "p-4"


p5 =
    class "p-5"


px0 =
    class "px-0"


px1 =
    class "px-1"


px2 =
    class "px-2"


px3 =
    class "px-3"


px4 =
    class "px-4"


px5 =
    class "px-5"


py0 =
    class "py-0"


py1 =
    class "py-1"


py2 =
    class "py-2"


py3 =
    class "py-3"


py4 =
    class "py-4"


py5 =
    class "py-5"


pt0 =
    class "pt-0"


pt1 =
    class "pt-1"


pt2 =
    class "pt-2"


pt3 =
    class "pt-3"


pt4 =
    class "pt-4"


pt5 =
    class "pt-5"


pe0 =
    class "pe-0"


pe1 =
    class "pe-1"


pe2 =
    class "pe-2"


pe3 =
    class "pe-3"


pe4 =
    class "pe-4"


pe5 =
    class "pe-5"


pb0 =
    class "pb-0"


pb1 =
    class "pb-1"


pb2 =
    class "pb-2"


pb3 =
    class "pb-3"


pb4 =
    class "pb-4"


pb5 =
    class "pb-5"


ps0 =
    class "ps-0"


ps1 =
    class "ps-1"


ps2 =
    class "ps-2"


ps3 =
    class "ps-3"


ps4 =
    class "ps-4"


ps5 =
    class "ps-5"


fs1 =
    class "fs-1"


fs2 =
    class "fs-2"


fs3 =
    class "fs-3"


fs4 =
    class "fs-4"


fs5 =
    class "fs-5"


fs6 =
    class "fs-6"


fstItalic =
    class "fst-italic"


fstNormal =
    class "fst-normal"


fwLight =
    class "fw-light"


fwLighter =
    class "fw-lighter"


fwNormal =
    class "fw-normal"


fwBold =
    class "fw-bold"


fwBolder =
    class "fw-bolder"


textLowercase =
    class "text-lowercase"


textUppercase =
    class "text-uppercase"


textCapitalize =
    class "text-capitalize"


textStart =
    class "text-start"


textEnd =
    class "text-end"


textCenter =
    class "text-center"


textPrimary =
    class "text-primary"


textSecondary =
    class "text-secondary"


textSuccess =
    class "text-success"


textInfo =
    class "text-info"


textWarning =
    class "text-warning"


textDanger =
    class "text-danger"


textLight =
    class "text-light"


textDark =
    class "text-dark"


textWhite =
    class "text-white"


textBody =
    class "text-body"


textMuted =
    class "text-muted"


textBlack50 =
    class "text-black-50"


textWhite50 =
    class "text-white-50"


textReset =
    class "text-reset"


lh1 =
    class "lh-1"


lhSm =
    class "lh-sm"


lhBase =
    class "lh-base"


lhLg =
    class "lh-lg"


bgPrimary =
    class "bg-primary"


bgSecondary =
    class "bg-secondary"


bgSuccess =
    class "bg-success"


bgInfo =
    class "bg-info"


bgWarning =
    class "bg-warning"


bgDanger =
    class "bg-danger"


bgLight =
    class "bg-light"


bgDark =
    class "bg-dark"


bgBody =
    class "bg-body"


bgWhite =
    class "bg-white"


bgTransparent =
    class "bg-transparent"


bgGradient =
    class "bg-gradient"


textWrap =
    class "text-wrap"


textNowrap =
    class "text-nowrap"


textDecorationNone =
    class "text-decoration-none"


textDecorationUnderline =
    class "text-decoration-underline"


textDecorationLineThrough =
    class "text-decoration-line-through"


textBreak =
    class "text-break"


fontMonospace =
    class "font-monospace"


userSelectAll =
    class "user-select-all"


userSelectAuto =
    class "user-select-auto"


userSelectNone =
    class "user-select-none"


peNone =
    class "pe-none"


peAuto =
    class "pe-auto"


rounded =
    class "rounded"


rounded0 =
    class "rounded-0"


rounded1 =
    class "rounded-1"


rounded2 =
    class "rounded-2"


rounded3 =
    class "rounded-3"


roundedCircle =
    class "rounded-circle"


roundedPill =
    class "rounded-pill"


roundedTop =
    class "rounded-top"


roundedEnd =
    class "rounded-end"


roundedBottom =
    class "rounded-bottom"


roundedStart =
    class "rounded-start"


visible =
    class "visible"


invisible =
    class "invisible"


floatSmStart =
    class "float-sm-start"


floatSmEnd =
    class "float-sm-end"


floatSmNone =
    class "float-sm-none"


dSmInline =
    class "d-sm-inline"


dSmInlineBlock =
    class "d-sm-inline-block"


dSmBlock =
    class "d-sm-block"


dSmGrid =
    class "d-sm-grid"


dSmTable =
    class "d-sm-table"


dSmTableRow =
    class "d-sm-table-row"


dSmTableCell =
    class "d-sm-table-cell"


dSmFlex =
    class "d-sm-flex"


dSmInlineFlex =
    class "d-sm-inline-flex"


dSmNone =
    class "d-sm-none"


flexSmFill =
    class "flex-sm-fill"


flexSmRow =
    class "flex-sm-row"


flexSmColumn =
    class "flex-sm-column"


flexSmRowReverse =
    class "flex-sm-row-reverse"


flexSmColumnReverse =
    class "flex-sm-column-reverse"


flexSmGrow0 =
    class "flex-sm-grow-0"


flexSmGrow1 =
    class "flex-sm-grow-1"


flexSmShrink0 =
    class "flex-sm-shrink-0"


flexSmShrink1 =
    class "flex-sm-shrink-1"


flexSmWrap =
    class "flex-sm-wrap"


flexSmNowrap =
    class "flex-sm-nowrap"


flexSmWrapReverse =
    class "flex-sm-wrap-reverse"


gapSm0 =
    class "gap-sm-0"


gapSm1 =
    class "gap-sm-1"


gapSm2 =
    class "gap-sm-2"


gapSm3 =
    class "gap-sm-3"


gapSm4 =
    class "gap-sm-4"


gapSm5 =
    class "gap-sm-5"


justifyContentSmStart =
    class "justify-content-sm-start"


justifyContentSmEnd =
    class "justify-content-sm-end"


justifyContentSmCenter =
    class "justify-content-sm-center"


justifyContentSmBetween =
    class "justify-content-sm-between"


justifyContentSmAround =
    class "justify-content-sm-around"


justifyContentSmEvenly =
    class "justify-content-sm-evenly"


alignItemsSmStart =
    class "align-items-sm-start"


alignItemsSmEnd =
    class "align-items-sm-end"


alignItemsSmCenter =
    class "align-items-sm-center"


alignItemsSmBaseline =
    class "align-items-sm-baseline"


alignItemsSmStretch =
    class "align-items-sm-stretch"


alignContentSmStart =
    class "align-content-sm-start"


alignContentSmEnd =
    class "align-content-sm-end"


alignContentSmCenter =
    class "align-content-sm-center"


alignContentSmBetween =
    class "align-content-sm-between"


alignContentSmAround =
    class "align-content-sm-around"


alignContentSmStretch =
    class "align-content-sm-stretch"


alignSelfSmAuto =
    class "align-self-sm-auto"


alignSelfSmStart =
    class "align-self-sm-start"


alignSelfSmEnd =
    class "align-self-sm-end"


alignSelfSmCenter =
    class "align-self-sm-center"


alignSelfSmBaseline =
    class "align-self-sm-baseline"


alignSelfSmStretch =
    class "align-self-sm-stretch"


orderSmFirst =
    class "order-sm-first"


orderSm0 =
    class "order-sm-0"


orderSm1 =
    class "order-sm-1"


orderSm2 =
    class "order-sm-2"


orderSm3 =
    class "order-sm-3"


orderSm4 =
    class "order-sm-4"


orderSm5 =
    class "order-sm-5"


orderSmLast =
    class "order-sm-last"


mSm0 =
    class "m-sm-0"


mSm1 =
    class "m-sm-1"


mSm2 =
    class "m-sm-2"


mSm3 =
    class "m-sm-3"


mSm4 =
    class "m-sm-4"


mSm5 =
    class "m-sm-5"


mSmAuto =
    class "m-sm-auto"


mxSm0 =
    class "mx-sm-0"


mxSm1 =
    class "mx-sm-1"


mxSm2 =
    class "mx-sm-2"


mxSm3 =
    class "mx-sm-3"


mxSm4 =
    class "mx-sm-4"


mxSm5 =
    class "mx-sm-5"


mxSmAuto =
    class "mx-sm-auto"


mySm0 =
    class "my-sm-0"


mySm1 =
    class "my-sm-1"


mySm2 =
    class "my-sm-2"


mySm3 =
    class "my-sm-3"


mySm4 =
    class "my-sm-4"


mySm5 =
    class "my-sm-5"


mySmAuto =
    class "my-sm-auto"


mtSm0 =
    class "mt-sm-0"


mtSm1 =
    class "mt-sm-1"


mtSm2 =
    class "mt-sm-2"


mtSm3 =
    class "mt-sm-3"


mtSm4 =
    class "mt-sm-4"


mtSm5 =
    class "mt-sm-5"


mtSmAuto =
    class "mt-sm-auto"


meSm0 =
    class "me-sm-0"


meSm1 =
    class "me-sm-1"


meSm2 =
    class "me-sm-2"


meSm3 =
    class "me-sm-3"


meSm4 =
    class "me-sm-4"


meSm5 =
    class "me-sm-5"


meSmAuto =
    class "me-sm-auto"


mbSm0 =
    class "mb-sm-0"


mbSm1 =
    class "mb-sm-1"


mbSm2 =
    class "mb-sm-2"


mbSm3 =
    class "mb-sm-3"


mbSm4 =
    class "mb-sm-4"


mbSm5 =
    class "mb-sm-5"


mbSmAuto =
    class "mb-sm-auto"


msSm0 =
    class "ms-sm-0"


msSm1 =
    class "ms-sm-1"


msSm2 =
    class "ms-sm-2"


msSm3 =
    class "ms-sm-3"


msSm4 =
    class "ms-sm-4"


msSm5 =
    class "ms-sm-5"


msSmAuto =
    class "ms-sm-auto"


pSm0 =
    class "p-sm-0"


pSm1 =
    class "p-sm-1"


pSm2 =
    class "p-sm-2"


pSm3 =
    class "p-sm-3"


pSm4 =
    class "p-sm-4"


pSm5 =
    class "p-sm-5"


pxSm0 =
    class "px-sm-0"


pxSm1 =
    class "px-sm-1"


pxSm2 =
    class "px-sm-2"


pxSm3 =
    class "px-sm-3"


pxSm4 =
    class "px-sm-4"


pxSm5 =
    class "px-sm-5"


pySm0 =
    class "py-sm-0"


pySm1 =
    class "py-sm-1"


pySm2 =
    class "py-sm-2"


pySm3 =
    class "py-sm-3"


pySm4 =
    class "py-sm-4"


pySm5 =
    class "py-sm-5"


ptSm0 =
    class "pt-sm-0"


ptSm1 =
    class "pt-sm-1"


ptSm2 =
    class "pt-sm-2"


ptSm3 =
    class "pt-sm-3"


ptSm4 =
    class "pt-sm-4"


ptSm5 =
    class "pt-sm-5"


peSm0 =
    class "pe-sm-0"


peSm1 =
    class "pe-sm-1"


peSm2 =
    class "pe-sm-2"


peSm3 =
    class "pe-sm-3"


peSm4 =
    class "pe-sm-4"


peSm5 =
    class "pe-sm-5"


pbSm0 =
    class "pb-sm-0"


pbSm1 =
    class "pb-sm-1"


pbSm2 =
    class "pb-sm-2"


pbSm3 =
    class "pb-sm-3"


pbSm4 =
    class "pb-sm-4"


pbSm5 =
    class "pb-sm-5"


psSm0 =
    class "ps-sm-0"


psSm1 =
    class "ps-sm-1"


psSm2 =
    class "ps-sm-2"


psSm3 =
    class "ps-sm-3"


psSm4 =
    class "ps-sm-4"


psSm5 =
    class "ps-sm-5"


textSmStart =
    class "text-sm-start"


textSmEnd =
    class "text-sm-end"


textSmCenter =
    class "text-sm-center"


floatMdStart =
    class "float-md-start"


floatMdEnd =
    class "float-md-end"


floatMdNone =
    class "float-md-none"


dMdInline =
    class "d-md-inline"


dMdInlineBlock =
    class "d-md-inline-block"


dMdBlock =
    class "d-md-block"


dMdGrid =
    class "d-md-grid"


dMdTable =
    class "d-md-table"


dMdTableRow =
    class "d-md-table-row"


dMdTableCell =
    class "d-md-table-cell"


dMdFlex =
    class "d-md-flex"


dMdInlineFlex =
    class "d-md-inline-flex"


dMdNone =
    class "d-md-none"


flexMdFill =
    class "flex-md-fill"


flexMdRow =
    class "flex-md-row"


flexMdColumn =
    class "flex-md-column"


flexMdRowReverse =
    class "flex-md-row-reverse"


flexMdColumnReverse =
    class "flex-md-column-reverse"


flexMdGrow0 =
    class "flex-md-grow-0"


flexMdGrow1 =
    class "flex-md-grow-1"


flexMdShrink0 =
    class "flex-md-shrink-0"


flexMdShrink1 =
    class "flex-md-shrink-1"


flexMdWrap =
    class "flex-md-wrap"


flexMdNowrap =
    class "flex-md-nowrap"


flexMdWrapReverse =
    class "flex-md-wrap-reverse"


gapMd0 =
    class "gap-md-0"


gapMd1 =
    class "gap-md-1"


gapMd2 =
    class "gap-md-2"


gapMd3 =
    class "gap-md-3"


gapMd4 =
    class "gap-md-4"


gapMd5 =
    class "gap-md-5"


justifyContentMdStart =
    class "justify-content-md-start"


justifyContentMdEnd =
    class "justify-content-md-end"


justifyContentMdCenter =
    class "justify-content-md-center"


justifyContentMdBetween =
    class "justify-content-md-between"


justifyContentMdAround =
    class "justify-content-md-around"


justifyContentMdEvenly =
    class "justify-content-md-evenly"


alignItemsMdStart =
    class "align-items-md-start"


alignItemsMdEnd =
    class "align-items-md-end"


alignItemsMdCenter =
    class "align-items-md-center"


alignItemsMdBaseline =
    class "align-items-md-baseline"


alignItemsMdStretch =
    class "align-items-md-stretch"


alignContentMdStart =
    class "align-content-md-start"


alignContentMdEnd =
    class "align-content-md-end"


alignContentMdCenter =
    class "align-content-md-center"


alignContentMdBetween =
    class "align-content-md-between"


alignContentMdAround =
    class "align-content-md-around"


alignContentMdStretch =
    class "align-content-md-stretch"


alignSelfMdAuto =
    class "align-self-md-auto"


alignSelfMdStart =
    class "align-self-md-start"


alignSelfMdEnd =
    class "align-self-md-end"


alignSelfMdCenter =
    class "align-self-md-center"


alignSelfMdBaseline =
    class "align-self-md-baseline"


alignSelfMdStretch =
    class "align-self-md-stretch"


orderMdFirst =
    class "order-md-first"


orderMd0 =
    class "order-md-0"


orderMd1 =
    class "order-md-1"


orderMd2 =
    class "order-md-2"


orderMd3 =
    class "order-md-3"


orderMd4 =
    class "order-md-4"


orderMd5 =
    class "order-md-5"


orderMdLast =
    class "order-md-last"


mMd0 =
    class "m-md-0"


mMd1 =
    class "m-md-1"


mMd2 =
    class "m-md-2"


mMd3 =
    class "m-md-3"


mMd4 =
    class "m-md-4"


mMd5 =
    class "m-md-5"


mMdAuto =
    class "m-md-auto"


mxMd0 =
    class "mx-md-0"


mxMd1 =
    class "mx-md-1"


mxMd2 =
    class "mx-md-2"


mxMd3 =
    class "mx-md-3"


mxMd4 =
    class "mx-md-4"


mxMd5 =
    class "mx-md-5"


mxMdAuto =
    class "mx-md-auto"


myMd0 =
    class "my-md-0"


myMd1 =
    class "my-md-1"


myMd2 =
    class "my-md-2"


myMd3 =
    class "my-md-3"


myMd4 =
    class "my-md-4"


myMd5 =
    class "my-md-5"


myMdAuto =
    class "my-md-auto"


mtMd0 =
    class "mt-md-0"


mtMd1 =
    class "mt-md-1"


mtMd2 =
    class "mt-md-2"


mtMd3 =
    class "mt-md-3"


mtMd4 =
    class "mt-md-4"


mtMd5 =
    class "mt-md-5"


mtMdAuto =
    class "mt-md-auto"


meMd0 =
    class "me-md-0"


meMd1 =
    class "me-md-1"


meMd2 =
    class "me-md-2"


meMd3 =
    class "me-md-3"


meMd4 =
    class "me-md-4"


meMd5 =
    class "me-md-5"


meMdAuto =
    class "me-md-auto"


mbMd0 =
    class "mb-md-0"


mbMd1 =
    class "mb-md-1"


mbMd2 =
    class "mb-md-2"


mbMd3 =
    class "mb-md-3"


mbMd4 =
    class "mb-md-4"


mbMd5 =
    class "mb-md-5"


mbMdAuto =
    class "mb-md-auto"


msMd0 =
    class "ms-md-0"


msMd1 =
    class "ms-md-1"


msMd2 =
    class "ms-md-2"


msMd3 =
    class "ms-md-3"


msMd4 =
    class "ms-md-4"


msMd5 =
    class "ms-md-5"


msMdAuto =
    class "ms-md-auto"


pMd0 =
    class "p-md-0"


pMd1 =
    class "p-md-1"


pMd2 =
    class "p-md-2"


pMd3 =
    class "p-md-3"


pMd4 =
    class "p-md-4"


pMd5 =
    class "p-md-5"


pxMd0 =
    class "px-md-0"


pxMd1 =
    class "px-md-1"


pxMd2 =
    class "px-md-2"


pxMd3 =
    class "px-md-3"


pxMd4 =
    class "px-md-4"


pxMd5 =
    class "px-md-5"


pyMd0 =
    class "py-md-0"


pyMd1 =
    class "py-md-1"


pyMd2 =
    class "py-md-2"


pyMd3 =
    class "py-md-3"


pyMd4 =
    class "py-md-4"


pyMd5 =
    class "py-md-5"


ptMd0 =
    class "pt-md-0"


ptMd1 =
    class "pt-md-1"


ptMd2 =
    class "pt-md-2"


ptMd3 =
    class "pt-md-3"


ptMd4 =
    class "pt-md-4"


ptMd5 =
    class "pt-md-5"


peMd0 =
    class "pe-md-0"


peMd1 =
    class "pe-md-1"


peMd2 =
    class "pe-md-2"


peMd3 =
    class "pe-md-3"


peMd4 =
    class "pe-md-4"


peMd5 =
    class "pe-md-5"


pbMd0 =
    class "pb-md-0"


pbMd1 =
    class "pb-md-1"


pbMd2 =
    class "pb-md-2"


pbMd3 =
    class "pb-md-3"


pbMd4 =
    class "pb-md-4"


pbMd5 =
    class "pb-md-5"


psMd0 =
    class "ps-md-0"


psMd1 =
    class "ps-md-1"


psMd2 =
    class "ps-md-2"


psMd3 =
    class "ps-md-3"


psMd4 =
    class "ps-md-4"


psMd5 =
    class "ps-md-5"


textMdStart =
    class "text-md-start"


textMdEnd =
    class "text-md-end"


textMdCenter =
    class "text-md-center"


floatLgStart =
    class "float-lg-start"


floatLgEnd =
    class "float-lg-end"


floatLgNone =
    class "float-lg-none"


dLgInline =
    class "d-lg-inline"


dLgInlineBlock =
    class "d-lg-inline-block"


dLgBlock =
    class "d-lg-block"


dLgGrid =
    class "d-lg-grid"


dLgTable =
    class "d-lg-table"


dLgTableRow =
    class "d-lg-table-row"


dLgTableCell =
    class "d-lg-table-cell"


dLgFlex =
    class "d-lg-flex"


dLgInlineFlex =
    class "d-lg-inline-flex"


dLgNone =
    class "d-lg-none"


flexLgFill =
    class "flex-lg-fill"


flexLgRow =
    class "flex-lg-row"


flexLgColumn =
    class "flex-lg-column"


flexLgRowReverse =
    class "flex-lg-row-reverse"


flexLgColumnReverse =
    class "flex-lg-column-reverse"


flexLgGrow0 =
    class "flex-lg-grow-0"


flexLgGrow1 =
    class "flex-lg-grow-1"


flexLgShrink0 =
    class "flex-lg-shrink-0"


flexLgShrink1 =
    class "flex-lg-shrink-1"


flexLgWrap =
    class "flex-lg-wrap"


flexLgNowrap =
    class "flex-lg-nowrap"


flexLgWrapReverse =
    class "flex-lg-wrap-reverse"


gapLg0 =
    class "gap-lg-0"


gapLg1 =
    class "gap-lg-1"


gapLg2 =
    class "gap-lg-2"


gapLg3 =
    class "gap-lg-3"


gapLg4 =
    class "gap-lg-4"


gapLg5 =
    class "gap-lg-5"


justifyContentLgStart =
    class "justify-content-lg-start"


justifyContentLgEnd =
    class "justify-content-lg-end"


justifyContentLgCenter =
    class "justify-content-lg-center"


justifyContentLgBetween =
    class "justify-content-lg-between"


justifyContentLgAround =
    class "justify-content-lg-around"


justifyContentLgEvenly =
    class "justify-content-lg-evenly"


alignItemsLgStart =
    class "align-items-lg-start"


alignItemsLgEnd =
    class "align-items-lg-end"


alignItemsLgCenter =
    class "align-items-lg-center"


alignItemsLgBaseline =
    class "align-items-lg-baseline"


alignItemsLgStretch =
    class "align-items-lg-stretch"


alignContentLgStart =
    class "align-content-lg-start"


alignContentLgEnd =
    class "align-content-lg-end"


alignContentLgCenter =
    class "align-content-lg-center"


alignContentLgBetween =
    class "align-content-lg-between"


alignContentLgAround =
    class "align-content-lg-around"


alignContentLgStretch =
    class "align-content-lg-stretch"


alignSelfLgAuto =
    class "align-self-lg-auto"


alignSelfLgStart =
    class "align-self-lg-start"


alignSelfLgEnd =
    class "align-self-lg-end"


alignSelfLgCenter =
    class "align-self-lg-center"


alignSelfLgBaseline =
    class "align-self-lg-baseline"


alignSelfLgStretch =
    class "align-self-lg-stretch"


orderLgFirst =
    class "order-lg-first"


orderLg0 =
    class "order-lg-0"


orderLg1 =
    class "order-lg-1"


orderLg2 =
    class "order-lg-2"


orderLg3 =
    class "order-lg-3"


orderLg4 =
    class "order-lg-4"


orderLg5 =
    class "order-lg-5"


orderLgLast =
    class "order-lg-last"


mLg0 =
    class "m-lg-0"


mLg1 =
    class "m-lg-1"


mLg2 =
    class "m-lg-2"


mLg3 =
    class "m-lg-3"


mLg4 =
    class "m-lg-4"


mLg5 =
    class "m-lg-5"


mLgAuto =
    class "m-lg-auto"


mxLg0 =
    class "mx-lg-0"


mxLg1 =
    class "mx-lg-1"


mxLg2 =
    class "mx-lg-2"


mxLg3 =
    class "mx-lg-3"


mxLg4 =
    class "mx-lg-4"


mxLg5 =
    class "mx-lg-5"


mxLgAuto =
    class "mx-lg-auto"


myLg0 =
    class "my-lg-0"


myLg1 =
    class "my-lg-1"


myLg2 =
    class "my-lg-2"


myLg3 =
    class "my-lg-3"


myLg4 =
    class "my-lg-4"


myLg5 =
    class "my-lg-5"


myLgAuto =
    class "my-lg-auto"


mtLg0 =
    class "mt-lg-0"


mtLg1 =
    class "mt-lg-1"


mtLg2 =
    class "mt-lg-2"


mtLg3 =
    class "mt-lg-3"


mtLg4 =
    class "mt-lg-4"


mtLg5 =
    class "mt-lg-5"


mtLgAuto =
    class "mt-lg-auto"


meLg0 =
    class "me-lg-0"


meLg1 =
    class "me-lg-1"


meLg2 =
    class "me-lg-2"


meLg3 =
    class "me-lg-3"


meLg4 =
    class "me-lg-4"


meLg5 =
    class "me-lg-5"


meLgAuto =
    class "me-lg-auto"


mbLg0 =
    class "mb-lg-0"


mbLg1 =
    class "mb-lg-1"


mbLg2 =
    class "mb-lg-2"


mbLg3 =
    class "mb-lg-3"


mbLg4 =
    class "mb-lg-4"


mbLg5 =
    class "mb-lg-5"


mbLgAuto =
    class "mb-lg-auto"


msLg0 =
    class "ms-lg-0"


msLg1 =
    class "ms-lg-1"


msLg2 =
    class "ms-lg-2"


msLg3 =
    class "ms-lg-3"


msLg4 =
    class "ms-lg-4"


msLg5 =
    class "ms-lg-5"


msLgAuto =
    class "ms-lg-auto"


pLg0 =
    class "p-lg-0"


pLg1 =
    class "p-lg-1"


pLg2 =
    class "p-lg-2"


pLg3 =
    class "p-lg-3"


pLg4 =
    class "p-lg-4"


pLg5 =
    class "p-lg-5"


pxLg0 =
    class "px-lg-0"


pxLg1 =
    class "px-lg-1"


pxLg2 =
    class "px-lg-2"


pxLg3 =
    class "px-lg-3"


pxLg4 =
    class "px-lg-4"


pxLg5 =
    class "px-lg-5"


pyLg0 =
    class "py-lg-0"


pyLg1 =
    class "py-lg-1"


pyLg2 =
    class "py-lg-2"


pyLg3 =
    class "py-lg-3"


pyLg4 =
    class "py-lg-4"


pyLg5 =
    class "py-lg-5"


ptLg0 =
    class "pt-lg-0"


ptLg1 =
    class "pt-lg-1"


ptLg2 =
    class "pt-lg-2"


ptLg3 =
    class "pt-lg-3"


ptLg4 =
    class "pt-lg-4"


ptLg5 =
    class "pt-lg-5"


peLg0 =
    class "pe-lg-0"


peLg1 =
    class "pe-lg-1"


peLg2 =
    class "pe-lg-2"


peLg3 =
    class "pe-lg-3"


peLg4 =
    class "pe-lg-4"


peLg5 =
    class "pe-lg-5"


pbLg0 =
    class "pb-lg-0"


pbLg1 =
    class "pb-lg-1"


pbLg2 =
    class "pb-lg-2"


pbLg3 =
    class "pb-lg-3"


pbLg4 =
    class "pb-lg-4"


pbLg5 =
    class "pb-lg-5"


psLg0 =
    class "ps-lg-0"


psLg1 =
    class "ps-lg-1"


psLg2 =
    class "ps-lg-2"


psLg3 =
    class "ps-lg-3"


psLg4 =
    class "ps-lg-4"


psLg5 =
    class "ps-lg-5"


textLgStart =
    class "text-lg-start"


textLgEnd =
    class "text-lg-end"


textLgCenter =
    class "text-lg-center"


floatXlStart =
    class "float-xl-start"


floatXlEnd =
    class "float-xl-end"


floatXlNone =
    class "float-xl-none"


dXlInline =
    class "d-xl-inline"


dXlInlineBlock =
    class "d-xl-inline-block"


dXlBlock =
    class "d-xl-block"


dXlGrid =
    class "d-xl-grid"


dXlTable =
    class "d-xl-table"


dXlTableRow =
    class "d-xl-table-row"


dXlTableCell =
    class "d-xl-table-cell"


dXlFlex =
    class "d-xl-flex"


dXlInlineFlex =
    class "d-xl-inline-flex"


dXlNone =
    class "d-xl-none"


flexXlFill =
    class "flex-xl-fill"


flexXlRow =
    class "flex-xl-row"


flexXlColumn =
    class "flex-xl-column"


flexXlRowReverse =
    class "flex-xl-row-reverse"


flexXlColumnReverse =
    class "flex-xl-column-reverse"


flexXlGrow0 =
    class "flex-xl-grow-0"


flexXlGrow1 =
    class "flex-xl-grow-1"


flexXlShrink0 =
    class "flex-xl-shrink-0"


flexXlShrink1 =
    class "flex-xl-shrink-1"


flexXlWrap =
    class "flex-xl-wrap"


flexXlNowrap =
    class "flex-xl-nowrap"


flexXlWrapReverse =
    class "flex-xl-wrap-reverse"


gapXl0 =
    class "gap-xl-0"


gapXl1 =
    class "gap-xl-1"


gapXl2 =
    class "gap-xl-2"


gapXl3 =
    class "gap-xl-3"


gapXl4 =
    class "gap-xl-4"


gapXl5 =
    class "gap-xl-5"


justifyContentXlStart =
    class "justify-content-xl-start"


justifyContentXlEnd =
    class "justify-content-xl-end"


justifyContentXlCenter =
    class "justify-content-xl-center"


justifyContentXlBetween =
    class "justify-content-xl-between"


justifyContentXlAround =
    class "justify-content-xl-around"


justifyContentXlEvenly =
    class "justify-content-xl-evenly"


alignItemsXlStart =
    class "align-items-xl-start"


alignItemsXlEnd =
    class "align-items-xl-end"


alignItemsXlCenter =
    class "align-items-xl-center"


alignItemsXlBaseline =
    class "align-items-xl-baseline"


alignItemsXlStretch =
    class "align-items-xl-stretch"


alignContentXlStart =
    class "align-content-xl-start"


alignContentXlEnd =
    class "align-content-xl-end"


alignContentXlCenter =
    class "align-content-xl-center"


alignContentXlBetween =
    class "align-content-xl-between"


alignContentXlAround =
    class "align-content-xl-around"


alignContentXlStretch =
    class "align-content-xl-stretch"


alignSelfXlAuto =
    class "align-self-xl-auto"


alignSelfXlStart =
    class "align-self-xl-start"


alignSelfXlEnd =
    class "align-self-xl-end"


alignSelfXlCenter =
    class "align-self-xl-center"


alignSelfXlBaseline =
    class "align-self-xl-baseline"


alignSelfXlStretch =
    class "align-self-xl-stretch"


orderXlFirst =
    class "order-xl-first"


orderXl0 =
    class "order-xl-0"


orderXl1 =
    class "order-xl-1"


orderXl2 =
    class "order-xl-2"


orderXl3 =
    class "order-xl-3"


orderXl4 =
    class "order-xl-4"


orderXl5 =
    class "order-xl-5"


orderXlLast =
    class "order-xl-last"


mXl0 =
    class "m-xl-0"


mXl1 =
    class "m-xl-1"


mXl2 =
    class "m-xl-2"


mXl3 =
    class "m-xl-3"


mXl4 =
    class "m-xl-4"


mXl5 =
    class "m-xl-5"


mXlAuto =
    class "m-xl-auto"


mxXl0 =
    class "mx-xl-0"


mxXl1 =
    class "mx-xl-1"


mxXl2 =
    class "mx-xl-2"


mxXl3 =
    class "mx-xl-3"


mxXl4 =
    class "mx-xl-4"


mxXl5 =
    class "mx-xl-5"


mxXlAuto =
    class "mx-xl-auto"


myXl0 =
    class "my-xl-0"


myXl1 =
    class "my-xl-1"


myXl2 =
    class "my-xl-2"


myXl3 =
    class "my-xl-3"


myXl4 =
    class "my-xl-4"


myXl5 =
    class "my-xl-5"


myXlAuto =
    class "my-xl-auto"


mtXl0 =
    class "mt-xl-0"


mtXl1 =
    class "mt-xl-1"


mtXl2 =
    class "mt-xl-2"


mtXl3 =
    class "mt-xl-3"


mtXl4 =
    class "mt-xl-4"


mtXl5 =
    class "mt-xl-5"


mtXlAuto =
    class "mt-xl-auto"


meXl0 =
    class "me-xl-0"


meXl1 =
    class "me-xl-1"


meXl2 =
    class "me-xl-2"


meXl3 =
    class "me-xl-3"


meXl4 =
    class "me-xl-4"


meXl5 =
    class "me-xl-5"


meXlAuto =
    class "me-xl-auto"


mbXl0 =
    class "mb-xl-0"


mbXl1 =
    class "mb-xl-1"


mbXl2 =
    class "mb-xl-2"


mbXl3 =
    class "mb-xl-3"


mbXl4 =
    class "mb-xl-4"


mbXl5 =
    class "mb-xl-5"


mbXlAuto =
    class "mb-xl-auto"


msXl0 =
    class "ms-xl-0"


msXl1 =
    class "ms-xl-1"


msXl2 =
    class "ms-xl-2"


msXl3 =
    class "ms-xl-3"


msXl4 =
    class "ms-xl-4"


msXl5 =
    class "ms-xl-5"


msXlAuto =
    class "ms-xl-auto"


pXl0 =
    class "p-xl-0"


pXl1 =
    class "p-xl-1"


pXl2 =
    class "p-xl-2"


pXl3 =
    class "p-xl-3"


pXl4 =
    class "p-xl-4"


pXl5 =
    class "p-xl-5"


pxXl0 =
    class "px-xl-0"


pxXl1 =
    class "px-xl-1"


pxXl2 =
    class "px-xl-2"


pxXl3 =
    class "px-xl-3"


pxXl4 =
    class "px-xl-4"


pxXl5 =
    class "px-xl-5"


pyXl0 =
    class "py-xl-0"


pyXl1 =
    class "py-xl-1"


pyXl2 =
    class "py-xl-2"


pyXl3 =
    class "py-xl-3"


pyXl4 =
    class "py-xl-4"


pyXl5 =
    class "py-xl-5"


ptXl0 =
    class "pt-xl-0"


ptXl1 =
    class "pt-xl-1"


ptXl2 =
    class "pt-xl-2"


ptXl3 =
    class "pt-xl-3"


ptXl4 =
    class "pt-xl-4"


ptXl5 =
    class "pt-xl-5"


peXl0 =
    class "pe-xl-0"


peXl1 =
    class "pe-xl-1"


peXl2 =
    class "pe-xl-2"


peXl3 =
    class "pe-xl-3"


peXl4 =
    class "pe-xl-4"


peXl5 =
    class "pe-xl-5"


pbXl0 =
    class "pb-xl-0"


pbXl1 =
    class "pb-xl-1"


pbXl2 =
    class "pb-xl-2"


pbXl3 =
    class "pb-xl-3"


pbXl4 =
    class "pb-xl-4"


pbXl5 =
    class "pb-xl-5"


psXl0 =
    class "ps-xl-0"


psXl1 =
    class "ps-xl-1"


psXl2 =
    class "ps-xl-2"


psXl3 =
    class "ps-xl-3"


psXl4 =
    class "ps-xl-4"


psXl5 =
    class "ps-xl-5"


textXlStart =
    class "text-xl-start"


textXlEnd =
    class "text-xl-end"


textXlCenter =
    class "text-xl-center"


floatXxlStart =
    class "float-xxl-start"


floatXxlEnd =
    class "float-xxl-end"


floatXxlNone =
    class "float-xxl-none"


dXxlInline =
    class "d-xxl-inline"


dXxlInlineBlock =
    class "d-xxl-inline-block"


dXxlBlock =
    class "d-xxl-block"


dXxlGrid =
    class "d-xxl-grid"


dXxlTable =
    class "d-xxl-table"


dXxlTableRow =
    class "d-xxl-table-row"


dXxlTableCell =
    class "d-xxl-table-cell"


dXxlFlex =
    class "d-xxl-flex"


dXxlInlineFlex =
    class "d-xxl-inline-flex"


dXxlNone =
    class "d-xxl-none"


flexXxlFill =
    class "flex-xxl-fill"


flexXxlRow =
    class "flex-xxl-row"


flexXxlColumn =
    class "flex-xxl-column"


flexXxlRowReverse =
    class "flex-xxl-row-reverse"


flexXxlColumnReverse =
    class "flex-xxl-column-reverse"


flexXxlGrow0 =
    class "flex-xxl-grow-0"


flexXxlGrow1 =
    class "flex-xxl-grow-1"


flexXxlShrink0 =
    class "flex-xxl-shrink-0"


flexXxlShrink1 =
    class "flex-xxl-shrink-1"


flexXxlWrap =
    class "flex-xxl-wrap"


flexXxlNowrap =
    class "flex-xxl-nowrap"


flexXxlWrapReverse =
    class "flex-xxl-wrap-reverse"


gapXxl0 =
    class "gap-xxl-0"


gapXxl1 =
    class "gap-xxl-1"


gapXxl2 =
    class "gap-xxl-2"


gapXxl3 =
    class "gap-xxl-3"


gapXxl4 =
    class "gap-xxl-4"


gapXxl5 =
    class "gap-xxl-5"


justifyContentXxlStart =
    class "justify-content-xxl-start"


justifyContentXxlEnd =
    class "justify-content-xxl-end"


justifyContentXxlCenter =
    class "justify-content-xxl-center"


justifyContentXxlBetween =
    class "justify-content-xxl-between"


justifyContentXxlAround =
    class "justify-content-xxl-around"


justifyContentXxlEvenly =
    class "justify-content-xxl-evenly"


alignItemsXxlStart =
    class "align-items-xxl-start"


alignItemsXxlEnd =
    class "align-items-xxl-end"


alignItemsXxlCenter =
    class "align-items-xxl-center"


alignItemsXxlBaseline =
    class "align-items-xxl-baseline"


alignItemsXxlStretch =
    class "align-items-xxl-stretch"


alignContentXxlStart =
    class "align-content-xxl-start"


alignContentXxlEnd =
    class "align-content-xxl-end"


alignContentXxlCenter =
    class "align-content-xxl-center"


alignContentXxlBetween =
    class "align-content-xxl-between"


alignContentXxlAround =
    class "align-content-xxl-around"


alignContentXxlStretch =
    class "align-content-xxl-stretch"


alignSelfXxlAuto =
    class "align-self-xxl-auto"


alignSelfXxlStart =
    class "align-self-xxl-start"


alignSelfXxlEnd =
    class "align-self-xxl-end"


alignSelfXxlCenter =
    class "align-self-xxl-center"


alignSelfXxlBaseline =
    class "align-self-xxl-baseline"


alignSelfXxlStretch =
    class "align-self-xxl-stretch"


orderXxlFirst =
    class "order-xxl-first"


orderXxl0 =
    class "order-xxl-0"


orderXxl1 =
    class "order-xxl-1"


orderXxl2 =
    class "order-xxl-2"


orderXxl3 =
    class "order-xxl-3"


orderXxl4 =
    class "order-xxl-4"


orderXxl5 =
    class "order-xxl-5"


orderXxlLast =
    class "order-xxl-last"


mXxl0 =
    class "m-xxl-0"


mXxl1 =
    class "m-xxl-1"


mXxl2 =
    class "m-xxl-2"


mXxl3 =
    class "m-xxl-3"


mXxl4 =
    class "m-xxl-4"


mXxl5 =
    class "m-xxl-5"


mXxlAuto =
    class "m-xxl-auto"


mxXxl0 =
    class "mx-xxl-0"


mxXxl1 =
    class "mx-xxl-1"


mxXxl2 =
    class "mx-xxl-2"


mxXxl3 =
    class "mx-xxl-3"


mxXxl4 =
    class "mx-xxl-4"


mxXxl5 =
    class "mx-xxl-5"


mxXxlAuto =
    class "mx-xxl-auto"


myXxl0 =
    class "my-xxl-0"


myXxl1 =
    class "my-xxl-1"


myXxl2 =
    class "my-xxl-2"


myXxl3 =
    class "my-xxl-3"


myXxl4 =
    class "my-xxl-4"


myXxl5 =
    class "my-xxl-5"


myXxlAuto =
    class "my-xxl-auto"


mtXxl0 =
    class "mt-xxl-0"


mtXxl1 =
    class "mt-xxl-1"


mtXxl2 =
    class "mt-xxl-2"


mtXxl3 =
    class "mt-xxl-3"


mtXxl4 =
    class "mt-xxl-4"


mtXxl5 =
    class "mt-xxl-5"


mtXxlAuto =
    class "mt-xxl-auto"


meXxl0 =
    class "me-xxl-0"


meXxl1 =
    class "me-xxl-1"


meXxl2 =
    class "me-xxl-2"


meXxl3 =
    class "me-xxl-3"


meXxl4 =
    class "me-xxl-4"


meXxl5 =
    class "me-xxl-5"


meXxlAuto =
    class "me-xxl-auto"


mbXxl0 =
    class "mb-xxl-0"


mbXxl1 =
    class "mb-xxl-1"


mbXxl2 =
    class "mb-xxl-2"


mbXxl3 =
    class "mb-xxl-3"


mbXxl4 =
    class "mb-xxl-4"


mbXxl5 =
    class "mb-xxl-5"


mbXxlAuto =
    class "mb-xxl-auto"


msXxl0 =
    class "ms-xxl-0"


msXxl1 =
    class "ms-xxl-1"


msXxl2 =
    class "ms-xxl-2"


msXxl3 =
    class "ms-xxl-3"


msXxl4 =
    class "ms-xxl-4"


msXxl5 =
    class "ms-xxl-5"


msXxlAuto =
    class "ms-xxl-auto"


pXxl0 =
    class "p-xxl-0"


pXxl1 =
    class "p-xxl-1"


pXxl2 =
    class "p-xxl-2"


pXxl3 =
    class "p-xxl-3"


pXxl4 =
    class "p-xxl-4"


pXxl5 =
    class "p-xxl-5"


pxXxl0 =
    class "px-xxl-0"


pxXxl1 =
    class "px-xxl-1"


pxXxl2 =
    class "px-xxl-2"


pxXxl3 =
    class "px-xxl-3"


pxXxl4 =
    class "px-xxl-4"


pxXxl5 =
    class "px-xxl-5"


pyXxl0 =
    class "py-xxl-0"


pyXxl1 =
    class "py-xxl-1"


pyXxl2 =
    class "py-xxl-2"


pyXxl3 =
    class "py-xxl-3"


pyXxl4 =
    class "py-xxl-4"


pyXxl5 =
    class "py-xxl-5"


ptXxl0 =
    class "pt-xxl-0"


ptXxl1 =
    class "pt-xxl-1"


ptXxl2 =
    class "pt-xxl-2"


ptXxl3 =
    class "pt-xxl-3"


ptXxl4 =
    class "pt-xxl-4"


ptXxl5 =
    class "pt-xxl-5"


peXxl0 =
    class "pe-xxl-0"


peXxl1 =
    class "pe-xxl-1"


peXxl2 =
    class "pe-xxl-2"


peXxl3 =
    class "pe-xxl-3"


peXxl4 =
    class "pe-xxl-4"


peXxl5 =
    class "pe-xxl-5"


pbXxl0 =
    class "pb-xxl-0"


pbXxl1 =
    class "pb-xxl-1"


pbXxl2 =
    class "pb-xxl-2"


pbXxl3 =
    class "pb-xxl-3"


pbXxl4 =
    class "pb-xxl-4"


pbXxl5 =
    class "pb-xxl-5"


psXxl0 =
    class "ps-xxl-0"


psXxl1 =
    class "ps-xxl-1"


psXxl2 =
    class "ps-xxl-2"


psXxl3 =
    class "ps-xxl-3"


psXxl4 =
    class "ps-xxl-4"


psXxl5 =
    class "ps-xxl-5"


textXxlStart =
    class "text-xxl-start"


textXxlEnd =
    class "text-xxl-end"


textXxlCenter =
    class "text-xxl-center"


fsSm1 =
    class "fs-sm-1"


fsSm2 =
    class "fs-sm-2"


fsSm3 =
    class "fs-sm-3"


fsSm4 =
    class "fs-sm-4"


fsMd1 =
    class "fs-md-1"


fsMd2 =
    class "fs-md-2"


fsMd3 =
    class "fs-md-3"


fsMd4 =
    class "fs-md-4"


fsLg1 =
    class "fs-lg-1"


fsLg2 =
    class "fs-lg-2"


fsLg3 =
    class "fs-lg-3"


fsLg4 =
    class "fs-lg-4"


dPrintInline =
    class "d-print-inline"


dPrintInlineBlock =
    class "d-print-inline-block"


dPrintBlock =
    class "d-print-block"


dPrintGrid =
    class "d-print-grid"


dPrintTable =
    class "d-print-table"


dPrintTableRow =
    class "d-print-table-row"


dPrintTableCell =
    class "d-print-table-cell"


dPrintFlex =
    class "d-print-flex"


dPrintInlineFlex =
    class "d-print-inline-flex"


dPrintNone =
    class "d-print-none"



--


static =
    positionStatic


rel =
    positionRelative


abs =
    positionAbsolute


fixed =
    positionFixed


sticky =
    positionSticky



--


width a =
    style "width" (a |> toRem)


maxWidth a =
    style "max-width" (a |> toRem)


height a =
    style "height" (a |> toRem)


maxHeight a =
    style "max-height" (a |> toRem)



--


start a =
    style "left" (a |> toRem)


end a =
    style "right" (a |> toRem)


top a =
    style "top" (a |> toRem)


bottom a =
    style "bottom" (a |> toRem)



--


toRem a =
    String.fromFloat a ++ "rem"
