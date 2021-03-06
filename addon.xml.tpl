<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<addon id="plugin.video.streampc" name="Stream+2" version="$VERSION" provider-name="frjanibo">
    <requires>
        <import addon="xbmc.python" version="2.1.0"/>
        <import addon="script.module.requests" version="2.4.3" />
    </requires>
    <extension point="xbmc.python.pluginsource" library="addon.py">
        <provides>video</provides>
    </extension>

    <extension point="xbmc.addon.metadata">
        <platform>all</platform>
        <website>https://github.com/frjanibo/Stream</website>
        <language></language>
        <license>GNU GENERAL PUBLIC LICENSE. Version 3, 29 June 2007</license>
        <summary>Seamlessly watch content from across the internet.</summary>
        <description>Enjoy a variety of content, from your TV shows to the latest movies!</description>
    </extension>
</addon>
