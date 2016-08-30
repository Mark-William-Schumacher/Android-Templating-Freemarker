<#if !service>
package ${skylinePackageName}.presenter;

import ${skylinePackageName}.view.${viewInterface};
import lib.mobile.skyline.common.base.presenter.BasePresenter;

public class ${presenter} extends BasePresenter<${viewInterface}>{

    public ${presenter}(){
    }
}
<#else>
package ${skylinePackageName}.presenter;

import ${skylinePackageName}.view.${viewInterface};
import ${skylinePackageName}.service.${feature}Service;
import lib.mobile.skyline.common.base.presenter.BasePresenter;

public class ${presenter} extends BasePresenter<${viewInterface}>{

	private final ${feature}Service ${feature?lower_case}Service;

    public ${presenter}(${feature}Service ${feature?lower_case}Service){
    	this.${feature?lower_case}Service = ${feature?lower_case}Service;
    }
}		
</#if> 				