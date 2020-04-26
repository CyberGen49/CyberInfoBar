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

## Options
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

### Battery Indicator - `barBatteryIndicator`

 Sets the state of the battery indicator in the bar. The auto setting will only show the battery indicator when a battery is detected.

* **Valid:** `true`, `auto`, `false`
* **Default:** `auto`