.class public final Lcab/snapp/passenger/units/charge/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/charge/ChargeView;",
        "Lcab/snapp/passenger/units/charge/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/a/c;

.field private b:Landroidx/fragment/app/FragmentManager;

.field private c:Lcab/snapp/passenger/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcab/snapp/passenger/g/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    .line 45
    new-instance v0, Lcab/snapp/passenger/units/charge/-$$Lambda$c$fYsecPB9Ks_VnZj63xkqj11FFeM;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/charge/-$$Lambda$c$fYsecPB9Ks_VnZj63xkqj11FFeM;-><init>(Lcab/snapp/passenger/units/charge/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge/c;->c:Lcab/snapp/passenger/g/b;

    return-void
.end method

.method private synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge/a;->e()V

    .line 153
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/c;->d()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/charge/c;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/c;->d()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcab/snapp/passenger/units/charge/a;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    iget-object v0, v0, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperatorByPhoneNumber(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge/c;->selectOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .line 84
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/c;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getMobileNumberEtText()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/charge/a;->getChargeOperatorsResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge/a;

    iget-object v2, v2, Lcab/snapp/passenger/units/charge/a;->a:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperatorByPhoneNumber(Ljava/lang/String;)Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    return-void

    :cond_1
    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    return-void

    :cond_2
    const-string v1, "0999"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_3

    .line 101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    return-void

    .line 102
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    :cond_4
    return-void
.end method

.method private e()Z
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    iget-object v0, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getMobileNumberEtText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getMobileNumberEtText()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/charge/c;->a(Ljava/lang/String;)V

    const-string v2, "(^(0098999|\\+98999|98999|0999|999)\\d{7})|(^(00989|\\+989|989|09|9)\\d{9})"

    .line 183
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/a/c;->getSelectedItem()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->enableBtn()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->disableBtn()V

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic lambda$PVOZk0Xffe09eTBmwulNc87sN4U(Lcab/snapp/passenger/units/charge/c;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/charge/c;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic lambda$fYsecPB9Ks_VnZj63xkqj11FFeM(Lcab/snapp/passenger/units/charge/c;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/charge/c;->a(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method final a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->hideLoading()V

    .line 254
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getOperators()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/a/c;->setItems(Ljava/util/List;)V

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;->getQuickCharge()Lcab/snapp/passenger/data/models/charge/QuickCharge;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->fillQuickCharge(Lcab/snapp/passenger/data/models/charge/QuickCharge;)V

    .line 256
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge/ChargeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberStatus(I)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/c;->e()Z

    return-void
.end method

.method final a(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->showRecentlyMobileNumberBottomSheet(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    .line 2616
    iget-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeBtn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2617
    iget-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->chevronView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2618
    iget-object v0, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->b:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public final onBackClicked()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->a()V

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/ChargeView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Ljava/lang/String;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1123
    new-instance v0, Lcab/snapp/passenger/units/charge/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/charge/c$1;-><init>(Lcab/snapp/passenger/units/charge/c;)V

    .line 1142
    new-instance v1, Lcab/snapp/passenger/units/charge/-$$Lambda$c$PVOZk0Xffe09eTBmwulNc87sN4U;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/charge/-$$Lambda$c$PVOZk0Xffe09eTBmwulNc87sN4U;-><init>(Lcab/snapp/passenger/units/charge/c;)V

    .line 1160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1162
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->setMobileNumberEtFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1163
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/charge/ChargeView;->setMobileNumberEtTextWatcher(Landroid/text/TextWatcher;)V

    .line 1165
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    if-eqz v0, :cond_0

    .line 1166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->setAdapter(Lcab/snapp/passenger/a/c;)V

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v0, Lcab/snapp/passenger/a/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcab/snapp/passenger/a/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    .line 1170
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/c;->c:Lcab/snapp/passenger/g/b;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/a/c;->setOnAmountSelectedListener(Lcab/snapp/passenger/g/b;)V

    .line 1171
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/charge/ChargeView;->setAdapter(Lcab/snapp/passenger/a/c;)V

    .line 2077
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2078
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->setMobileNumberEtText(Ljava/lang/String;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/charge/ChargeView;

    const v0, 0x7f06012a

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/charge/ChargeView;->setStatusBarColor(I)V

    :cond_3
    return-void
.end method

.method public final selectOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/a/c;->selectOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V

    return-void
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcab/snapp/passenger/units/charge/c;->b:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public final showError(I)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->showErrorMessage(I)V

    :cond_0
    return-void
.end method

.method public final showError(Ljava/lang/String;)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->showErrorMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
