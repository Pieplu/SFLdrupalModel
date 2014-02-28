

; API
api = 2

; Core
core = 7.x
projects[drupal][version] = 7.26

; Contrib modules
projects[breakpoints][version] = 1.1
projects[ckeditor][version] = "1.13"
projects[ckeditor][patch][] = "http://drupal.org/files/ckeditor-fix-media-integration-1504696-4.patch"
projects[context][version] = "3.1"
projects[ctools][version] = "1.3"
projects[ctools][patches][] = "http://drupal.org/files/ctools-1925018-61.patch"
projects[date][version] = "2.6"
projects[entity][version] = "1.2"
projects[entityreference][version] = "1.0"
projects[features][version] = "2.0-rc1"
projects[field_group][version] = "1.1"
projects[file_entity][version] = "2.x-dev"
projects[jquery_update][version] = "2.3"
projects[libraries][version] = "2.1"
projects[link][version] = "1.1"
projects[media][version] = "2.x-dev"
projects[media_youtube][version] = "2.0-rc3"
projects[menu_block][version] = "2.3"
projects[menu_position][version] = "1.1"
projects[module_filter][version] = "1.7"
projects[navbar][version] = "1.0-alpha10"
projects[panelizer][version] = "3.1"
projects[panels][version] = "3.3"
projects[panels_breadcrumbs][version] = "2.1"
projects[pathauto][version] = "1.2"
projects[pathauto][patches][] = "http://drupal.org/files/pathauto-persist-936222-130-pathauto-state.patch"
projects[pm_existing_pages][version] = "1.4"
projects[rules][version] = "2.6"
projects[strongarm][version] = "2.0"
projects[token][version] = "1.5"
projects[uuid][version] = "1.0-alpha5"
projects[views][version] = "3.7"
projects[views_bulk_operations][version] = "3.1"
projects[xmlsitemap][version] = "2.0-rc2"

; Libraries
libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.1.1/ckeditor_4.1.1_standard.zip"

;libraries[underscore][download][type] = "get"
;libraries[underscore][download][url] = http://underscorejs.org/underscore-min.js

; Themes
projects[omega][version] = "4.0"
projects[responsive_bartik][version] = "1.0-beta2"


; SFLinux profile
projects[sflinux][type] = profile
projects[sflinux][download][type] = git
projects[sflinux][download][url] = git@git.savoirfairelinux.com:sfl-l3i-apprentissage-techno-drupal--sflinux.git


; Custom modules
; projects[MODULE_NAME][type] = module
; projects[MODULE_NAME][subdir] = custom
; projects[MODULE_NAME][download][type] = git
; projects[MODULE_NAME][download][url] = <GIT URL>

; Custom Theme
; projects[THEME_NAME][type] = theme
; projects[THEME_NAME][download][type] = git
; projects[THEME_NAME][download][url] = <GIT URL>
