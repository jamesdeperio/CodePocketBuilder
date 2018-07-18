<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
	  <mkdir at="${escapeXmlAttribute(srcOut)}/appmodule" />

	 <mkdir at="${escapeXmlAttribute(srcOut)}/global" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/global/app" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/global/base" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/global/model" />
     <mkdir at="${escapeXmlAttribute(srcOut)}/global/model/event" />
     <mkdir at="${escapeXmlAttribute(srcOut)}/global/model/obj" />
     <mkdir at="${escapeXmlAttribute(srcOut)}/global/model/temp" />
      <mkdir at="${escapeXmlAttribute(srcOut)}/global/module" />
      <mkdir at="${escapeXmlAttribute(srcOut)}/global/module/appconfig" />
  	 <mkdir at="${escapeXmlAttribute(srcOut)}/global/scope" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/global/util" />
	 
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/bus" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/dao" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/dao/table" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/dao/query" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/network" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/service" />
	 <mkdir at="${escapeXmlAttribute(srcOut)}/integration/receiver" />
	 
<#if generateKotlin>
 <instantiate from="root/src/app_package/global/app/MainApplication.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/MainApplication.kt" />
<instantiate from="root/src/app_package/global/app/MainExceptionHandler.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/MainExceptionHandler.kt" />
<instantiate from="root/src/app_package/global/app/GlideModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/GlideModule.kt" />
  <instantiate from="root/src/app_package/global/app/AppComponent.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/AppComponent.kt" />

  <instantiate from="root/src/app_package/global/base/DIBaseActivity.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseActivity.kt" />
  <instantiate from="root/src/app_package/global/base/DIBaseFragment.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseFragment.kt" />
  <instantiate from="root/src/app_package/global/base/DIBaseSwipeFragment.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseSwipeFragment.kt" />

  <instantiate from="root/src/app_package/global/module/appconfig/ActivityBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ActivityBindingModule.kt" />
  <instantiate from="root/src/app_package/global/module/appconfig/FragmentBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/FragmentBindingModule.kt" />
  <instantiate from="root/src/app_package/global/module/appconfig/ApplicationBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ApplicationBindingModule.kt" />
  <instantiate from="root/src/app_package/global/module/appconfig/ApplicationBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ApplicationBindingModule.kt" />
  <instantiate from="root/src/app_package/global/module/appconfig/ServiceBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ServiceBindingModule.kt" />
  <instantiate from="root/src/app_package/global/module/appconfig/BroadcastReceiverBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/BroadcastReceiverBindingModule.kt" />

  <instantiate from="root/src/app_package/global/scope/ActivityScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/ActivityScope.kt" />
  <instantiate from="root/src/app_package/global/scope/FragmentScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/FragmentScope.kt" />
  <instantiate from="root/src/app_package/global/scope/ApplicationScope.kt.ftl"
                      to="${escapeXmlAttribute(srcOut)}/global/scope/ApplicationScope.kt" />
  <instantiate from="root/src/app_package/global/scope/BroadcastReceiverScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/BroadcastReceiverScope.kt" />
  <instantiate from="root/src/app_package/global/scope/ServiceScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/ServiceScope.kt" />

  <instantiate from="root/src/app_package/integration/network/NetworkService.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/network/NetworkManager.kt" />
<instantiate from="root/src/app_package/integration/bus/EventBus.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/bus/EventBus.kt" />
<#else>
 <instantiate from="root/src/app_package/global/app/MainApplication.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/MainApplication.java" />
<instantiate from="root/src/app_package/global/app/MainExceptionHandler.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/MainExceptionHandler.java" />
<instantiate from="root/src/app_package/global/app/GlideModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/GlideAppModule.java" />
  <instantiate from="root/src/app_package/global/app/AppComponent.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/app/AppComponent.java" />

  <instantiate from="root/src/app_package/global/base/DIBaseActivity.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseActivity.java" />
  <instantiate from="root/src/app_package/global/base/DIBaseFragment.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseFragment.java" />
  <instantiate from="root/src/app_package/global/base/DIBaseSwipeFragment.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/base/DIBaseSwipeFragment.java" />

  <instantiate from="root/src/app_package/global/module/appconfig/ActivityBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ActivityBindingModule.java" />
  <instantiate from="root/src/app_package/global/module/appconfig/FragmentBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/FragmentBindingModule.java" />
  <instantiate from="root/src/app_package/global/module/appconfig/ApplicationBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ApplicationBindingModule.java" />
  <instantiate from="root/src/app_package/global/module/appconfig/ApplicationBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ApplicationBindingModule.java" />
  <instantiate from="root/src/app_package/global/module/appconfig/ServiceBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/ServiceBindingModule.java" />
  <instantiate from="root/src/app_package/global/module/appconfig/BroadcastReceiverBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/module/appconfig/BroadcastReceiverBindingModule.java" />

  <instantiate from="root/src/app_package/global/scope/ActivityScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/ActivityScope.java" />
  <instantiate from="root/src/app_package/global/scope/FragmentScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/FragmentScope.java" />
  <instantiate from="root/src/app_package/global/scope/ApplicationScope.java.ftl"
                      to="${escapeXmlAttribute(srcOut)}/global/scope/ApplicationScope.java" />
  <instantiate from="root/src/app_package/global/scope/BroadcastReceiverScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/BroadcastReceiverScope.java" />
  <instantiate from="root/src/app_package/global/scope/ServiceScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/global/scope/ServiceScope.java" />

  <instantiate from="root/src/app_package/integration/network/NetworkService.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/network/NetworkManager.java" />
<instantiate from="root/src/app_package/integration/bus/EventBus.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/bus/EventBus.java" />
</#if>

</recipe>
