$(document).bind "mobileinit", ->
  $.extend $.mobile, {
    
    # The CSS class used for "active" button state.
    # activeBtnClass: 'ui-btn-active'
    
    # The CSS class used for the page currently in view or in a transition.
    # activePageClass: 'ui-page-active'
    
    #jQuery Mobile will automatically handle link clicks and form submissions through Ajax, when possible. If false, URL hash listening will be disabled as well, and URLs will load as ordinary HTTP requests.
    # ajaxEnabled: true
    
    # When jQuery Mobile attempts to load an external page, the request runs through $.mobile.loadPage(). This will only allow cross-domain requests if $.mobile.allowCrossDomainPages is set to true. Because the jQuery Mobile framework tracks what page is being viewed within the browser's location hash, it is possible for a cross-site scripting (XSS) attack to occur if the XSS code in question can manipulate the hash and set it to a cross-domain URL of its choice. This is the main reason that the default setting for $.mobile.allowCrossDomainPages is set to false. In PhoneGap apps that must "phone home" by loading assets off a remote server, both the $.support.cors AND $.mobile.allowCrossDomainPages must be set to true.
    # allowCrossDomainPages: false
    
    
    # When the DOM is ready, the framework should automatically call $.mobile.initializePage. If false, the page will not initialize and will be visually hidden until $.mobile.initializePage is manually called.
    # autoInitializePage: true
    
    # Set the delay for touch devices to add the hover and down classes on touch interactions for buttons throughout the framework. Reducing the delay here results in a more responsive feeling ui, but will often result in the downstate being applied during page scrolling.
    # buttonMarkup: hoverDelay: 200
    
    # Set the default transition for dialog changes that use Ajax. Set to 'none' for no transitions.
    # defaultDialogTransition: 'pop'
    
    # Set the default transition for page changes that use Ajax. Note: default changed from 'slide' to 'fade' in 1.1. Set to 'none' for no transitions.
    # defaultPageTransition: 'fade'
    
    # Set a scroll position breakpoint for transitions. If the scroll position is greater than the window height multiplied by the value that has been set, transition "none" will be used.
    # getMaxScrollForTransition: 3
    
    # Any support conditions that must be met in order to proceed.
    # gradeA: -> $.support.mediaquery
    
    # jQuery Mobile will automatically listen and handle changes to the location.hash. Disabling this will prevent jQuery Mobile from handling hash changes, which allows you to handle them yourself or use simple deep-links within a document that scroll to a particular id.
    <% if( useBackbone ) { %>
      hashListeningEnabled: false
    <% } else { %>
      # hashListeningEnabled: true
    <% } %>
    
    # Warning: Setting this property to true will cause performance degradation on enhancement. Once set, all automatic enhancements made by the framework to each enhanceable element of the user's markup will first check for a data-enhance=false parent node. If one is found the markup will be ignored. This setting and the accompanying data attribute provide a mechanism through which users can prevent enhancement over large sections of markup.
    # ignoreContentEnabled: false
    
    # jQuery Mobile will automatically bind the clicks on anchor tags in your document. Setting this option to false will prevent all anchor click handling including the addition of active button state and alternate link bluring. This should only be used when attempting to delegate the click management to another library or custom code.
    # linkBindingEnabled: true

    # loader:
      # prototype:
        # options:

          # Set the text that appears when a page is loading. If set to false, the message will not appear at all.
          # text: 'loading'

          # Whether the text should be visible when a loading message is shown. The text is always visible for loading errors.
          # textVisible: false

          # The theme that the loading message box uses when text is visible.
          # theme: 'a'
    
    # Set a max width for transitions. The option accepts any number representing a pixel width and its default value false. If a number value is set, transition "none" will be used if the window is wider than the specified value.
    # maxTransitionWidth: false
    
    # Minimum scroll distance that will be remembered when returning to a page.
    # minScrollBack: 250
    
    # The namespace used in data attributes (e.g., data-role). Can be set to any string, including a blank string which is the default. When using, it's clearest if you include a trailing dash, such as "mynamespace-" which maps to data-mynamespace-foo="...".
    # If you use data- namespacing, you will need to update/override one selector in the theme CSS. The following data selectors should incorporate the namespace you're using:
    # .ui-mobile [data-mynamespace-role=page], .ui-mobile [data-mynamespace-role=dialog], .ui-page { ...
    # ns: ''
    
    # Set the text that appears when a page fails to load through Ajax.
    # pageLoadErrorMessage: 'Error Loading Page'
    
    # Set the theme that the error message box uses.
    # pageLoadErrorMessageTheme: 'e'
    
    # Replace calls to window.history.back with PhoneGap's navigation helper where it is available. This addresses navigation issues on page refresh in Android PhoneGap applications using jQuery Mobile.
    # phonegapNavigationEnabled: false
    
    # Enhancement to use history.replaceState in supported browsers, to convert the hash-based Ajax URL into the full document path. Note that we recommend disabling this feature if Ajax is disabled or if external links are used extensively.
    # pushStateEnabled: true
    
    # The url parameter used for referencing widget-generated sub-pages (such as those generated by nested listviews). Translates to example.html&ui-page=subpageIdentifier. The hash segment before &ui-page= is used by the framework for making an Ajax request to the URL where the sub-page exists.
    # subPageUrlKey: 'ui-page'
    
    # Set the fallback transition for browsers that don't support 3D transforms for a specific transition type.
    # transitionFallbacks:
    #   type: 'fade'

  }
  