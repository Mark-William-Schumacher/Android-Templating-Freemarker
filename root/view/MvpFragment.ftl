package ${skylinePackageName}.view;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.mobile.skyline.module.R; 
import ${skylinePackageName}.presenter.${presenter};
import lib.mobile.skyline.common.base.view.BaseMvpFragment;

public class ${fragment} extends BaseMvpFragment<${presenter}> implements ${viewInterface}  {

    public static ${fragment} newInstance() {
        Bundle args = new Bundle();
        ${fragment} fragment = new ${fragment}();
        fragment.setArguments(args);
        return fragment;
    }

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        View inflatedView = inflater.inflate(R.layout.fragment_${feature?lower_case}, container, false);
        return inflatedView;
    }

    @NonNull
    @Override
    public ${presenter} onCreateProvidePresenter() {
        return getBaseApplication().providePresenter(${presenter}.class);
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);      // Now safe to call getPresenter()
        /* Attach click listeners here */
    }

    @Override
    public String getAnalyticsScreenName() {
        return getString(R.string.analytics_screen_name_${feature?lower_case});
    }

    @Override
    public boolean isScreenNameReporter() {
        return true;
    }
}