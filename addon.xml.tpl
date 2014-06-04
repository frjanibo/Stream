<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<addon id="plugin.video.stream" name="Stream" version="$VERSION" provider-name="brysonreece">
    <requires>
        <import addon="xbmc.python" version="2.1.0"/>
    </requires>
    <extension point="xbmc.python.pluginsource" library="addon.py">
        <provides>video</provides>
    </extension>
    <extension point="xbmc.addon.repository" name="brysonreece XBMC Repository">
        <info compressed="false">http://xbmc-repo.brysonreece.com/addons.xml</info>
        <checksum>http://xbmc-repo.brysonreece.com/addons.xml.md5</checksum>
        <datadir zip="true">http://xbmc-repo.brysonreece.com/stream/</datadir>
    </extension>
    <extension point="xbmc.addon.metadata">
        <platform>all</platform>
        <website>http://stream.brysonreece.com/</website>
        <language></language>
        <license><GNU GENERAL PUBLIC LICENSE. Version 3, 29 June 2007</license>
        <summary>Seamlessly watch content from across the internet.</summary>
        <description>Enjoy a variety of content, from your TV shows to the latest movies!</description>
    </extension>
</addon>
