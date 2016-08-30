<#if service>
package ${skylinePackageName}.dagger;

import ${skylinePackageName}.presenter.${feature}Presenter;
import ${skylinePackageName}.service.${feature}Api;
import ${skylinePackageName}.service.${feature}Service;

import dagger.Module;
import dagger.Provides;
import okhttp3.OkHttpClient;

@Module
public class ${feature}Module {

    private final String baseUrl;

    public ${feature}Module(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    @Provides
    public ${feature}Presenter ${feature?lower_case}Presenter(${feature}Service service) {
        return new ${feature}Presenter(service);
    }

    @Provides
    public ${feature}Api ${feature?lower_case}Api(OkHttpClient okHttpClient) {
        return new ${feature}Api.${feature}ApiBuilder(baseUrl, okHttpClient).build();
    }

    @Provides
    public ${feature}Service ${feature?lower_case}Service(${feature}Api ${feature?lower_case}Api) {
        return new ${feature}Service(${feature?lower_case}Api);
    }

}
<#else>

package ${skylinePackageName}.dagger;

import ${skylinePackageName}.presenter.${feature}Presenter;

import dagger.Module;
import dagger.Provides;
import okhttp3.OkHttpClient;

@Module
public class ${feature}Module {

    private final String baseUrl;

    public ${feature}Module(String baseUrl) {
        this.baseUrl = baseUrl;
    }

    @Provides
    public ${feature}Presenter ${feature?lower_case}Presenter() {
        return new ${feature}Presenter();
   }
}
</#if>  