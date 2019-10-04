package cab.snapp.passenger.units.welcome;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import cab.snapp.arch.protocol.BaseView;
import cab.snapp.passenger.play.R;
import cab.snapp.snappuikit.SnappButton;
import cab.snapp.snappuikit.SnappTextButton;

public class WelcomeView extends LinearLayout implements BaseView<c> {

    /* renamed from: a  reason: collision with root package name */
    private c f1418a;
    @BindView(2131363043)
    SnappTextButton firstLanguageButton;
    @BindView(2131363044)
    SnappTextButton fourthLanguageButton;
    @BindView(2131363045)
    LinearLayout languageButtonsLayout;
    @BindView(2131363046)
    SnappButton loginButton;
    @BindView(2131363047)
    LinearLayout mainButtonsLayout;
    @BindView(2131363048)
    LinearLayout mainLayout;
    @BindView(2131363049)
    SnappTextButton secondLanguageButton;
    @BindView(2131363050)
    SnappButton signUpButton;
    @BindView(2131363051)
    SnappTextButton thirdLanguageButton;

    public WelcomeView(Context context) {
        super(context);
    }

    public WelcomeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WelcomeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setFirstLanguage(int i) {
        this.firstLanguageButton.setText(i);
    }

    public void setSecondLanguage(int i) {
        this.secondLanguageButton.setText(i);
    }

    public void setThirdLanguage(int i) {
        this.thirdLanguageButton.setText(i);
    }

    public void setFourthLanguage(int i) {
        this.fourthLanguageButton.setText(i);
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363043})
    public void onFirstLanguageClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onFirstLanguageClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363049})
    public void onSecondLanguageClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onSecondLanguageClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363051})
    public void onThirdLanguageClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onThirdLanguageClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363044})
    public void onFourthLanguageClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onFourthLanguageClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363046})
    public void onLoginClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onLogInClicked();
        }
    }

    /* access modifiers changed from: package-private */
    @OnClick({2131363050})
    public void onSignUpClicked() {
        c cVar = this.f1418a;
        if (cVar != null) {
            cVar.onSignUpClicked();
        }
    }

    public void animateLowerPartButtons() {
        this.mainLayout.setY((float) getContext().getResources().getDimensionPixelSize(R.dimen.splash_bottom_space_height));
        this.mainLayout.animate().translationY(0.0f).setListener(new AnimatorListenerAdapter() {
            public final void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                WelcomeView.this.mainLayout.setAlpha(1.0f);
            }
        }).setDuration(300).start();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        ButterKnife.bind((Object) this, (View) this);
    }

    public void setPresenter(c cVar) {
        this.f1418a = cVar;
    }
}
