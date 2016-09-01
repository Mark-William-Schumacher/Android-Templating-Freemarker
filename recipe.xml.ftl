<?xml version="1.0"?>
<recipe>

     <#if tests>

      <instantiate from="root/tests/MvpPresenterTest.java.ftl"
                     to="${MyTestDir}${FullTestDir}/${feature?lower_case}/${feature}PresenterTest.java" />

         <#if createjsonresponse>
            <instantiate from="root/tests/JsonLoader.java.ftl"
                        to="${MyTestDir}${FullTestDir}/${feature?lower_case}/${feature}PresenterTest.java" />

            <instantiate from="root/tests/ValidJson.json"
                        to="${MyTestDir}${ResourceTestDir}/${feature?lower_case}/validresponse.json" />

           <instantiate from="root/tests/JsonLoader.java.ftl"
                        to="${MyTestDir}${ResourceTestDir}/${feature?lower_case}/JsonLoader.java" />
      </#if>

     </#if>


    <#if service>

      <instantiate from="root/service/MvpApi.java.ftl"
                     to="${skylineDir}/service/${feature}Api.java" />

      <instantiate from="root/service/MvpResponse.java.ftl"
                     to="${skylineDir}/service/${feature}Response.java" />

      <instantiate from="root/service/MvpService.java.ftl"
                     to="${skylineDir}/service/${feature}Service.java" />


    </#if>

    <instantiate from="root/dagger/MvpModule.java.ftl"
                    to="${skylineDir}/dagger/${feature}Module.java" />

    <instantiate from="root/view/MvpFragment.ftl"
                    to="${skylineDir}/view/${fragment}.java" />

    <merge from="res/values/strings.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="root/presenter/MvpPresenter.java.ftl"
                   to="${skylineDir}/presenter/${presenter}.java" />

    <instantiate from="root/view/MvpView.java.ftl"
                   to="${skylineDir}/view/${viewInterface}.java" />

    <instantiate from="root/view/MvpView.java.ftl"
                   to="${skylineDir}/view/${viewInterface}.java" />

    <instantiate from="root/view/MvpView.java.ftl"
                  to="${skylineDir}/view/${viewInterface}.java" />

    <instantiate from="res/layout/fragment_blank.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/fragment_${feature?lower_case}.xml" />

    <open file="${skylineDir}/view/${fragment}.java" />
    <open file="${skylineDir}/presenter/${presenter}.java" />

</recipe>
