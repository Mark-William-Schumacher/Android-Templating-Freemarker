<?xml version="1.0"?>
<globals>
    <#include "../common/common_globals.xml.ftl" />
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
    <global id="daLength" type="integer" value="${escapeXmlAttribute(srcOut)?length - packageName?length}" />
    <global id="daDir" type="string" value="${escapeXmlAttribute(srcOut)?substring(0,
     	escapeXmlAttribute(srcOut)?length - packageName?length)}" />

    <global id="MyTestDir" type="string" value="${escapeXmlAttribute(srcOut)?substring(0,escapeXmlAttribute(srcOut)?length - slashedPackageName(packageName)?length-10)}" />

    <global id="FullTestDir" type="string" value="test/java/${slashedPackageName(packageName)}"/>
    <global id="ResourceTestDir" type="string" value="test/resources/${slashedPackageName(packageName)}"/>

    <global id="resOut" value="${resDir}" />
    <global id="modulepackageName" type="string" value="${escapeXmlAttribute(packageName)}"/>
 	<global id="skylineDir" type="string" value="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/"/>
 	<global id="skylinePackageName" type="string" value="${escapeXmlAttribute(packageName)}.${feature?lower_case}"/>
 	<global id="manifestOut" value="${manifestDir}" />
</globals>
