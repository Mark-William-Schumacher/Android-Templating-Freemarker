package ${skylinePackageName}.service;

import lib.mobile.skyline.common.base.service.BaseService;
import lib.mobile.skyline.common.entities.Status;
import rx.Observable;

public class ${feature}Service extends BaseService {

    private final ${feature}Api ${feature?lower_case}Api;

    public ${feature}Service(${feature}Api ${feature?lower_case}Api) {
        this.${feature?lower_case}Api = ${feature?lower_case}Api;
    }

    public Observable<Status<${feature}Response>> makeRequest() {
        return ${feature?lower_case}Api.makeRequest()
                .map(response -> mapNetworkResponse(response))
                .onErrorResumeNext(throwable -> handleOnErrorResumeNext(throwable));
    }
}