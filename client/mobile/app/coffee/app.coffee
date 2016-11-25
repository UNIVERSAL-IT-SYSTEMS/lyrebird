
# Application configuration
require './config'

# Cordova app & configuration
CordovaApp = require './cordova_app'

# Application Layout
# TODO - get rid of references to 'window.X'
AppLayout = require './application/layout'
window.Container = AppLayout.main
window.SidebarContainer = AppLayout.sidebar
window.FlashContainer = AppLayout.flash

# Services
BluetoothService  = require './services/bluetooth'
KnownDeviceServie = require './services/known_device'

# Components
SidebarComponent  = require './components/sidebar/component'
FlashComponent    = require './components/flash/component'

# Modules
HomeModule      = require './modules/home/router'
DeviceModule    = require './modules/device/router'
InterfaceModule = require './modules/interface/router'
PasswordModule  = require './modules/password/router'
SnippetModule   = require './modules/snippet/router'

# # # # #

$(document).on 'ready', =>
  console.log 'Document Ready'

  # Backbone.history.start() Invoked inside CordovaApp
  new CordovaApp()
