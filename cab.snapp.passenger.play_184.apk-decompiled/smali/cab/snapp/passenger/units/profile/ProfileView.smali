.class public Lcab/snapp/passenger/units/profile/ProfileView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/profile/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/profile/c;

.field addressEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023c
    .end annotation
.end field

.field protected b:Lcab/snapp/snappdialog/b;

.field birthdayEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023d
    .end annotation
.end field

.field protected c:Lcab/snapp/snappdialog/b;

.field protected d:Lcab/snapp/snappdialog/b;

.field protected e:Lcab/snapp/snappdialog/b;

.field emailEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023e
    .end annotation
.end field

.field protected f:Lcab/snapp/snappdialog/b;

.field protected g:Lcab/snapp/snappdialog/SnappControllerDialog;

.field genderEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a023f
    .end annotation
.end field

.field protected h:Lcab/snapp/passenger/f/r;

.field private i:Lcab/snapp/snappdialog/b;

.field nameEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0240
    .end annotation
.end field

.field phoneEditText:Lcab/snapp/snappuikit/SnappEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0241
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 668
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideApWalletUnlinkWarningDialog()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 0

    .line 174
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onTickClicked()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 664
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->hideApWalletUnlinkWarningDialog()V

    .line 665
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->confirmApWalletUnlink()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 399
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 368
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    .line 179
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onBackClicked()V

    return-void
.end method

.method public static synthetic lambda$0_bkLN5-ESlW9kXEF5C5eHQJ-wU(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$9V5azPYa7RjggB8O0Lo8lCXJK3I(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$EeZtv2TkMmVh3CXsiKAwGZC_LjY(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$K_hxe0KshmjhF28kzz5-X6kNJvI(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$YHF3LAwr3Y_pIkH3xvD1bocSktE(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$xI0s1zxoP4k7GdLa3GORQTnpruc(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public changePhoneEditTextGravityBasedOnLocale(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x800005

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    return-void

    .line 612
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappEditText;->getEditTextView()Landroid/widget/EditText;

    move-result-object p1

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public dismissBirthdayDialog()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->f:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->f:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public dismissEmailEditDialog()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->d:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 472
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public dismissGenderDialog()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    :cond_1
    return-void
.end method

.method public dismissPhoneVerificationUnitDialog()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->g:Lcab/snapp/snappdialog/SnappControllerDialog;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Lcab/snapp/snappdialog/SnappControllerDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideApWalletUnlinkWarningDialog()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->i:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideKeyboard()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 411
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->h:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public hideResendEmailActionButton()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->hideActionButton()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 623
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 624
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 625
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->h:Lcab/snapp/passenger/f/r;

    .line 1171
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    const v1, 0x7f1201b6

    .line 1172
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    .line 1173
    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$K_hxe0KshmjhF28kzz5-X6kNJvI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$K_hxe0KshmjhF28kzz5-X6kNJvI;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setMenu(ILandroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 1178
    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$EeZtv2TkMmVh3CXsiKAwGZC_LjY;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$EeZtv2TkMmVh3CXsiKAwGZC_LjY;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    const v2, 0x7f08005d

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setAddressText(Ljava/lang/String;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->addressEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setBirthdayEditTextListener(Lcab/snapp/snappuikit/b/a;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->birthdayEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setSnappEditTextClickListener(Lcab/snapp/snappuikit/b/a;)V

    return-void
.end method

.method public setBirthdayText(Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->birthdayEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setEmailEditTextListener(Lcab/snapp/snappuikit/b/a;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setSnappEditTextClickListener(Lcab/snapp/snappuikit/b/a;)V

    return-void
.end method

.method public setEmailText(Ljava/lang/String;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setGenderEditTextListener(Lcab/snapp/snappuikit/b/a;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->genderEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setSnappEditTextClickListener(Lcab/snapp/snappuikit/b/a;)V

    return-void
.end method

.method public setGenderText(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->genderEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setNameText(Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneEditTextListener(Lcab/snapp/snappuikit/b/a;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setSnappEditTextClickListener(Lcab/snapp/snappuikit/b/a;)V

    return-void
.end method

.method public setPhoneText(Ljava/lang/String;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u200e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 39
    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/profile/ProfileView;->setPresenter(Lcab/snapp/passenger/units/profile/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/profile/c;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->a:Lcab/snapp/passenger/units/profile/c;

    return-void
.end method

.method public setWatchers(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 283
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->addressEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public showApWalletUnlinkWarningDialog()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->i:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void

    .line 655
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 656
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v0

    .line 659
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120033

    .line 660
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    .line 661
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f0800b8

    .line 662
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12008e

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$0_bkLN5-ESlW9kXEF5C5eHQJ-wU;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$0_bkLN5-ESlW9kXEF5C5eHQJ-wU;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    .line 663
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120060

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$9V5azPYa7RjggB8O0Lo8lCXJK3I;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$9V5azPYa7RjggB8O0Lo8lCXJK3I;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    .line 667
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->i:Lcab/snapp/snappdialog/b;

    .line 671
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->i:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showApprovedEmailEditText()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showApproved()V

    return-void
.end method

.method public showBirthdayDialog(Lcab/snapp/snappdialog/dialogViews/a/b$b;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 556
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissBirthdayDialog()V

    .line 558
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 559
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/b$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/b$a;-><init>()V

    .line 561
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/b$a;->setOnDateSelectedListener(Lcab/snapp/snappdialog/dialogViews/a/b$b;)Lcab/snapp/snappdialog/dialogViews/a/b$a;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/b$a;->build()Lcab/snapp/snappdialog/dialogViews/a/b;

    move-result-object p1

    .line 560
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120170

    .line 564
    invoke-virtual {p1, v0, p2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 565
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->f:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showEmailEditDialog(Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b;
    .locals 4

    .line 437
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissEmailEditDialog()V

    .line 444
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800ed

    .line 445
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1201b1

    .line 446
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/16 v1, 0x192

    .line 447
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/d$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;-><init>()V

    .line 449
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object v1

    .line 450
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEtTextWatcher(Landroid/text/TextWatcher;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p1

    .line 451
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12028f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->setFirstEditTextHint(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/d$a;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/d$a;->build()Lcab/snapp/snappdialog/dialogViews/a/d;

    move-result-object p1

    .line 448
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120060

    .line 453
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setNegativeButtonText(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const v0, 0x7f120202

    .line 454
    invoke-virtual {p1, v0, p2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 455
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 456
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->d:Lcab/snapp/snappdialog/b;

    .line 458
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->d:Lcab/snapp/snappdialog/b;

    return-object p1
.end method

.method public showErrorDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;
    .locals 3

    .line 351
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 360
    :cond_1
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120101

    .line 361
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 363
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 364
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 366
    invoke-virtual {v2, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 365
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 368
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120170

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$YHF3LAwr3Y_pIkH3xvD1bocSktE;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$YHF3LAwr3Y_pIkH3xvD1bocSktE;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 369
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    .line 372
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->b:Lcab/snapp/snappdialog/b;

    return-object p1
.end method

.method public showGenderDialog(Ljava/util/ArrayList;Lcab/snapp/snappdialog/b/d;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcab/snapp/snappdialog/b/d;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissGenderDialog()V

    .line 518
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800ff

    .line 519
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1201fd

    .line 520
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 521
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/i$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/i$a;-><init>()V

    .line 523
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setMessageList(Ljava/util/List;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object p1

    .line 524
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->setSingleItemSelectedListener(Lcab/snapp/snappdialog/b/d;)Lcab/snapp/snappdialog/dialogViews/a/i$a;

    move-result-object p1

    .line 525
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/i$a;->build()Lcab/snapp/snappdialog/dialogViews/a/i;

    move-result-object p1

    .line 522
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const p2, 0x7f12005e

    .line 527
    invoke-virtual {p1, p2, p3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 528
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 529
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->e:Lcab/snapp/snappdialog/b;

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 422
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->h:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showMessage(I)V
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f06004b

    invoke-virtual {p0, p1, v0}, Lcab/snapp/passenger/units/profile/ProfileView;->showMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showMessageDialog(Ljava/lang/String;)Lcab/snapp/snappdialog/b;
    .locals 3

    .line 383
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 392
    :cond_1
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800ed

    .line 393
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 394
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 397
    invoke-virtual {v1, p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object p1

    .line 396
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 399
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$xI0s1zxoP4k7GdLa3GORQTnpruc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$ProfileView$xI0s1zxoP4k7GdLa3GORQTnpruc;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;)V

    invoke-virtual {p1, v0, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 400
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 401
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    .line 403
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->c:Lcab/snapp/snappdialog/b;

    return-object p1
.end method

.method public showNormalEmailEditText()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showInActive()V

    return-void
.end method

.method public showPhoneVerificationUnitAsDialog(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/ProfileView;->dismissPhoneVerificationUnitDialog()V

    .line 487
    new-instance v0, Lcab/snapp/snappdialog/SnappControllerDialog$a;

    invoke-direct {v0}, Lcab/snapp/snappdialog/SnappControllerDialog$a;-><init>()V

    .line 488
    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->setController(Landroidx/fragment/app/Fragment;)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    .line 489
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 490
    invoke-virtual {p1, p2}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->showOnBuild(Z)Lcab/snapp/snappdialog/SnappControllerDialog$a;

    move-result-object p1

    .line 491
    invoke-virtual {p1}, Lcab/snapp/snappdialog/SnappControllerDialog$a;->build()Lcab/snapp/snappdialog/SnappControllerDialog;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->g:Lcab/snapp/snappdialog/SnappControllerDialog;

    .line 493
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView;->g:Lcab/snapp/snappdialog/SnappControllerDialog;

    return-object p1
.end method

.method public showResendEmailActionButton()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/SnappEditText;->showActionButton()V

    return-void
.end method
