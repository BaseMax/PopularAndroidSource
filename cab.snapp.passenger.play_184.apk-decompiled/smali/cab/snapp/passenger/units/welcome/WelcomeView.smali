.class public Lcab/snapp/passenger/units/welcome/WelcomeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/welcome/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcab/snapp/passenger/units/welcome/c;

.field firstLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e3
    .end annotation
.end field

.field fourthLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e4
    .end annotation
.end field

.field languageButtonsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e5
    .end annotation
.end field

.field loginButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e6
    .end annotation
.end field

.field mainButtonsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e7
    .end annotation
.end field

.field mainLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e8
    .end annotation
.end field

.field secondLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04e9
    .end annotation
.end field

.field signUpButton:Lcab/snapp/snappuikit/SnappButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04ea
    .end annotation
.end field

.field thirdLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04eb
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public animateLowerPartButtons()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/WelcomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainLayout:Landroid/widget/LinearLayout;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setY(F)V

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/welcome/WelcomeView$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/welcome/WelcomeView$1;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView;)V

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 317
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 318
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method onFirstLanguageClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e3
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onFirstLanguageClicked()V

    return-void
.end method

.method onFourthLanguageClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e4
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onFourthLanguageClicked()V

    return-void
.end method

.method onLoginClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e6
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onLogInClicked()V

    return-void
.end method

.method onSecondLanguageClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04e9
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onSecondLanguageClicked()V

    return-void
.end method

.method onSignUpClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04ea
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onSignUpClicked()V

    return-void
.end method

.method onThirdLanguageClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a04eb
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onThirdLanguageClicked()V

    return-void
.end method

.method public setFirstLanguage(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->firstLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappTextButton;->setText(I)V

    return-void
.end method

.method public setFourthLanguage(I)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->fourthLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappTextButton;->setText(I)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 24
    check-cast p1, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView;->setPresenter(Lcab/snapp/passenger/units/welcome/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/welcome/c;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->a:Lcab/snapp/passenger/units/welcome/c;

    return-void
.end method

.method public setSecondLanguage(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->secondLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappTextButton;->setText(I)V

    return-void
.end method

.method public setThirdLanguage(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/WelcomeView;->thirdLanguageButton:Lcab/snapp/snappuikit/SnappTextButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappTextButton;->setText(I)V

    return-void
.end method
