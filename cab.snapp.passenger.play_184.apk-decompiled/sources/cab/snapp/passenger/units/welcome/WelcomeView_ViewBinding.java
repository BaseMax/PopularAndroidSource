package cab.snapp.passenger.units.welcome;

import android.view.View;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappTextButton;

public class WelcomeView_ViewBinding implements Unbinder {
    private WelcomeView target;
    private View view7f0a04e3;
    private View view7f0a04e4;
    private View view7f0a04e6;
    private View view7f0a04e9;
    private View view7f0a04ea;
    private View view7f0a04eb;

    public WelcomeView_ViewBinding(WelcomeView welcomeView) {
        this(welcomeView, welcomeView);
    }

    public WelcomeView_ViewBinding(final WelcomeView welcomeView, View view) {
        this.target = welcomeView;
        welcomeView.mainLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_welcome_main_layout, "field 'mainLayout'", LinearLayout.class);
        welcomeView.mainButtonsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_welcome_main_buttons_layout, "field 'mainButtonsLayout'", LinearLayout.class);
        welcomeView.languageButtonsLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.view_welcome_language_buttons_layout, "field 'languageButtonsLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.view_welcome_first_language_button, "field 'firstLanguageButton' and method 'onFirstLanguageClicked'");
        welcomeView.firstLanguageButton = (SnappTextButton) Utils.castView(findRequiredView, R.id.view_welcome_first_language_button, "field 'firstLanguageButton'", SnappTextButton.class);
        this.view7f0a04e3 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onFirstLanguageClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, R.id.view_welcome_second_language_button, "field 'secondLanguageButton' and method 'onSecondLanguageClicked'");
        welcomeView.secondLanguageButton = (SnappTextButton) Utils.castView(findRequiredView2, R.id.view_welcome_second_language_button, "field 'secondLanguageButton'", SnappTextButton.class);
        this.view7f0a04e9 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onSecondLanguageClicked();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, R.id.view_welcome_third_language_button, "field 'thirdLanguageButton' and method 'onThirdLanguageClicked'");
        welcomeView.thirdLanguageButton = (SnappTextButton) Utils.castView(findRequiredView3, R.id.view_welcome_third_language_button, "field 'thirdLanguageButton'", SnappTextButton.class);
        this.view7f0a04eb = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onThirdLanguageClicked();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, R.id.view_welcome_fourth_language_button, "field 'fourthLanguageButton' and method 'onFourthLanguageClicked'");
        welcomeView.fourthLanguageButton = (SnappTextButton) Utils.castView(findRequiredView4, R.id.view_welcome_fourth_language_button, "field 'fourthLanguageButton'", SnappTextButton.class);
        this.view7f0a04e4 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onFourthLanguageClicked();
            }
        });
        View findRequiredView5 = Utils.findRequiredView(view, R.id.view_welcome_log_in_button, "field 'loginButton' and method 'onLoginClicked'");
        welcomeView.loginButton = (SnappButton) Utils.castView(findRequiredView5, R.id.view_welcome_log_in_button, "field 'loginButton'", SnappButton.class);
        this.view7f0a04e6 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onLoginClicked();
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, R.id.view_welcome_sign_up_button, "field 'signUpButton' and method 'onSignUpClicked'");
        welcomeView.signUpButton = (SnappButton) Utils.castView(findRequiredView6, R.id.view_welcome_sign_up_button, "field 'signUpButton'", SnappButton.class);
        this.view7f0a04ea = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() {
            public final void doClick(View view) {
                welcomeView.onSignUpClicked();
            }
        });
    }

    public void unbind() {
        WelcomeView welcomeView = this.target;
        if (welcomeView != null) {
            this.target = null;
            welcomeView.mainLayout = null;
            welcomeView.mainButtonsLayout = null;
            welcomeView.languageButtonsLayout = null;
            welcomeView.firstLanguageButton = null;
            welcomeView.secondLanguageButton = null;
            welcomeView.thirdLanguageButton = null;
            welcomeView.fourthLanguageButton = null;
            welcomeView.loginButton = null;
            welcomeView.signUpButton = null;
            this.view7f0a04e3.setOnClickListener(null);
            this.view7f0a04e3 = null;
            this.view7f0a04e9.setOnClickListener(null);
            this.view7f0a04e9 = null;
            this.view7f0a04eb.setOnClickListener(null);
            this.view7f0a04eb = null;
            this.view7f0a04e4.setOnClickListener(null);
            this.view7f0a04e4 = null;
            this.view7f0a04e6.setOnClickListener(null);
            this.view7f0a04e6 = null;
            this.view7f0a04ea.setOnClickListener(null);
            this.view7f0a04ea = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
