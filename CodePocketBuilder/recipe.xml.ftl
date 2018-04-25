<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#if generateKotlin>
<instantiate from="root/src/app_package/BaseController.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/appmodule/${packageFolderName}/${controllerClass}.kt" />

     <instantiate from="root/src/app_package/BaseContract.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/appmodule/${packageFolderName}/${contractClass}.kt" />

     <instantiate from="root/src/app_package/BaseView.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/appmodule/${packageFolderName}/${viewClass}.kt" />

     <instantiate from="root/src/app_package/BasePresenter.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/appmodule/${packageFolderName}/${presenterClass}.kt" />

     <instantiate from="root/res/layout/base.xml.ftl"
                         to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

 <instantiate from="root/src/app_package/BaseModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/appmodule/${packageFolderName}/${moduleClass}.kt" />

    <open file="${srcOut}${packageFolderName}/appmodule/${viewClass}View.kt"/>

<#else>


</#if>


</recipe>
