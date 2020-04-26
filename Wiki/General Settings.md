This page will detail the options available in the General Settings file of CyberInfoBar

## The Basics of Setting Variables
In order for these settings to work properly, you have to follow Rainmeter's format of setting variables. Not to worry though, it's simple.

All of CyberInfoBar's settings files will start with some comment lines that provide some information about the file. Comment lines start with a `#` character. These lines aren't read by Rainmeter, so if you accidentally change one of them, it doesn't matter.

After the commented lines comes the variable section indicator, denoted by `[Variables]`. Editing this line will break the file, so refrain from doing so.

To set an option, add its variable name on a new line below the variable section indicator, like so:
```ini
# This file lets you change settings!

[Variables]
newOption=My Content
anotherNewOption=Some more content
```
Each option's variable name is in `code text` next to its title.These variables aren't case sensitive. 

Note that all variables are considered overrides, which means if they aren't set, they stay as their defaults. 

# General Options

### Language - `language`
Defines the language for the skin to use. Unsupported languages will default to English.

This should be set to a valid [ISO 2 Letter Language Code](https://www.sitepoint.com/iso-2-letter-language-codes/).

This option is a placeholder until multilanguage support is added. Changing it will have no effect on the skin.

* **Valid:**
* **Default:** `en`

### Theme - `theme`
Defines the path to variables file containing appearance options. This option can be set by opening the **Settings** menu in the bar, choosing **Themes**, then clicking on a theme from the list.

* **Valid:** *Any file path ending in .ini or .inc*
* **Default:** `%appdata%\Rainmeter\CyberInfoBar\Themes\Default.ini`



## Battery Indicator Options

### Battery Indicator - `barBatteryIndicator`

Sets the state of the battery indicator in the bar. The auto setting will only show the battery indicator when a battery is detected.

* **Valid:** `true`, `auto`, `false`
* **Default:** `auto`

### Battery Percentage Mode - `batteryPercentageMode`

Sets the state of the battery percentage text (if the battery indicator is enabled). The auto setting will only show the battery percentage when the battery isn't fully charged.

This setting has no effect if `barBatteryIndicator` is set to false.

* **Valid:** `true`, `auto`, `false`
* **Default:** `auto`



## Bar Menu Options

### Menu Names - `barMenuName1` - `barMenuName5`

Sets the name of each of the 5 bar menu buttons. Note that there are 5 variables here, each with their own content. 

* **Valid:** *Any string*
* **Defaults:**
  * `barMenuName1` : `System`
  * `barMenuName2` : `Applications`
  * `barMenuName3` : `Games`
  * `barMenuName4` : `Utilities`
  * `barMenuName5` : `Settings`

### Menu Paths - `barApplicationsPath`,  `barGamesPath`, `barUtilitiesPath`

Sets the source folder path for each of the 3 dynamic menus. 

**Tip:** You can easily grab the path of a folder by **shift right-clicking** on it and choosing **Copy as path**.

* **Valid:** *Any string*
* **Defaults:**
  * `barMenuName2` : `Applications`
  * `barMenuName3` : `Games`
  * `barMenuName4` : `Utilities`