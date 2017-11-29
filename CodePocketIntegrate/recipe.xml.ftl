<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
<#if generateKotlin>
 <instantiate from="root/src/app_package/app/MainApplication.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/app/MainApplication.kt" />
  <instantiate from="root/src/app_package/app/EventBus.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/app/EventBus.kt" />

  <instantiate from="root/src/app_package/component/AppComponent.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/component/AppComponent.kt" />

  <instantiate from="root/src/app_package/model/SampleObject.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/model/SampleObject.kt" />

  <instantiate from="root/src/app_package/module/ActivityBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/ActivityBindingModule.kt" />
  <instantiate from="root/src/app_package/module/FragmentBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/FragmentBindingModule.kt" />
  <instantiate from="root/src/app_package/module/ApplicationBindingModule.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/ApplicationBindingModule.kt" />

  <instantiate from="root/src/app_package/scope/ActivityScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/ActivityScope.kt" />
  <instantiate from="root/src/app_package/scope/FragmentScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/FragmentScope.kt" />
  <instantiate from="root/src/app_package/scope/ApplicationScope.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/ApplicationScope.kt" />

  <instantiate from="root/src/app_package/service/NetworkService.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/service/NetworkService.kt" />

  <instantiate from="root/src/app_package/base/DIBaseActivity.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseActivity.kt" />
  <instantiate from="root/src/app_package/base/DIBaseFragment.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseFragment.kt" />
  <instantiate from="root/src/app_package/base/DIBaseSwipeBackFragment.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseSwipeBackFragment.kt" />

<#else>
 <instantiate from="root/src/app_package/app/MainApplication.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/app/MainApplication.java" />
  <instantiate from="root/src/app_package/app/EventBus.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/app/EventBus.java" />

  <instantiate from="root/src/app_package/component/AppComponent.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/component/AppComponent.java" />

  <instantiate from="root/src/app_package/model/SampleObject.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/model/SampleObject.java" />

  <instantiate from="root/src/app_package/module/ActivityBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/ActivityBindingModule.java" />
  <instantiate from="root/src/app_package/module/FragmentBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/FragmentBindingModule.java" />
  <instantiate from="root/src/app_package/module/ApplicationBindingModule.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/module/app/ApplicationBindingModule.java" />

  <instantiate from="root/src/app_package/scope/ActivityScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/ActivityScope.java" />
  <instantiate from="root/src/app_package/scope/FragmentScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/FragmentScope.java" />
  <instantiate from="root/src/app_package/scope/ApplicationScope.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/business/scope/ApplicationScope.java" />

  <instantiate from="root/src/app_package/service/NetworkService.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/integration/service/NetworkService.java" />

  <instantiate from="root/src/app_package/base/DIBaseActivity.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseActivity.java" />
  <instantiate from="root/src/app_package/base/DIBaseFragment.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseFragment.java" />
  <instantiate from="root/src/app_package/base/DIBaseSwipeBackFragment.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/presentation/base/DIBaseSwipeBackFragment.java" />
</#if>

</recipe>
