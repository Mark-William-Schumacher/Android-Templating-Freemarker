package ${skylinePackageName};

import com.google.gson.Gson;
import ${skylinePackageName}.presenter.${feature}Presenter;
import ${skylinePackageName}.service.${feature}Response;
import ${skylinePackageName}.service.${feature}Service;
import ${skylinePackageName}.view.${viewInterface};

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.runners.MockitoJUnitRunner;

import lib.mobile.skyline.common.entities.Status;
import rx.Observable;
import rx.android.plugins.RxAndroidPlugins;
import rx.plugins.RxJavaTestPlugins;

import static org.junit.Assert.assertTrue;

@RunWith(MockitoJUnitRunner.class)
public class ${feature}PresenterTest {

    @Mock
    private ${feature}View view;
    <#if service>
    @Mock
    private ${feature}Service service;
    <#else>
    </#if>
    private ${feature}Presenter presenter;


    @Before
    public void setUp() throws Exception{
        RxJavaTestPlugins.setUpForTests();
        <#if service>
        presenter = new ${feature}Presenter(service);
        <#else>
        presenter = new ${feature}Presenter();
        </#if>
    }

    @After
    public void tearDown() {
        RxJavaTestPlugins.resetPlugins();
        RxAndroidPlugins.getInstance().reset();
    }

    @Test
    public void onAttach_baseClassAttachesView_viewIsAttached() {
        presenter.onAttach(view);
        assertTrue(presenter.isAttached());
    }

    <#if service>
        <#if createjsonresponse>

    private Observable<Status<${feature}Response>> validResponse(String filename) {
        ${feature}Response ar = new Gson().fromJson(new UnitTestJsonFileReader().loadJSONFromResourses(filename),${feature}Response.class);
        return Observable.just(new Status<>(ar));
    }

    @Test
    public void onInit_validResponse_displayAccounts() {
        Mockito.when(service.makeRequest()).thenReturn(validResponse("validresponse.json"));
        // Do something with json response. See other repositorys if your confused on how to do this. Get Gud.
    }

        </#if>
    </#if>


}
