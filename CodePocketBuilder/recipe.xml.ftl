<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#if generateKotlin>
<instantiate from="root/src/app_package/BaseController.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/${packageFolderName}/${controllerClass}.kt" />

     <instantiate from="root/src/app_package/BaseContract.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${contractClass}.kt" />

     <instantiate from="root/src/app_package/BaseView.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/${packageFolderName}/${viewClass}.kt" />

     <instantiate from="root/src/app_package/BasePresenter.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${presenterClass}.kt" />

     <instantiate from="root/res/layout/base.xml.ftl"
                         to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

 <instantiate from="root/src/app_package/BaseModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${moduleClass}.kt" />

    <open file="${srcOut}/presentation/${packageFolderName}/${viewClass}View.kt"/>

<#else>

  <instantiate from="root/src/app_package/BaseController.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/${packageFolderName}/${controllerClass}.java" />

     <instantiate from="root/src/app_package/BaseContract.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${contractClass}.java" />

     <instantiate from="root/src/app_package/BaseView.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/${packageFolderName}/${viewClass}.java" />

     <instantiate from="root/src/app_package/BasePresenter.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${presenterClass}.java" />

     <instantiate from="root/res/layout/base.xml.ftl"
                         to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(layoutName)}.xml" />

 <instantiate from="root/src/app_package/BaseModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/${packageFolderName}/${moduleClass}.java" />

    <open file="${srcOut}/presentation/${packageFolderName}/${viewClass}View.java"/>

</#if>


</recipe>
