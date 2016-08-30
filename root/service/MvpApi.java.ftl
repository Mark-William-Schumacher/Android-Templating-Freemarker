package ${skylinePackageName}.service;

import okhttp3.OkHttpClient;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava.RxJavaCallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
import retrofit2.http.Body;
import retrofit2.http.POST;
import rx.Observable;

public interface ${feature}Api {

    class ${feature}ApiBuilder {
        private final String baseUrl;
        private final OkHttpClient okHttpClient;

        public ${feature}ApiBuilder(String baseUrl, OkHttpClient okHttpClient) {
            this.baseUrl = baseUrl;
            this.okHttpClient = okHttpClient;
        }

        public ${feature}Api build() {
            return new Retrofit.Builder()
                    .baseUrl(baseUrl)
                    .addCallAdapterFactory(RxJavaCallAdapterFactory.create())
                    .addConverterFactory(GsonConverterFactory.create())
                    .client(okHttpClient)
                    .build().create(${feature}Api.class);
        }
    }

    @POST("/place/your/clientApi/endpoint/here/")
    Observable<${feature}Response> makeRequest();
}