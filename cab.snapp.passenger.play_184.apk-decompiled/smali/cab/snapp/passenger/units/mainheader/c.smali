.class public final Lcab/snapp/passenger/units/mainheader/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappdialog/dialogViews/a/e$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/mainheader/MainHeaderView;",
        "Lcab/snapp/passenger/units/mainheader/a;",
        ">;",
        "Lcab/snapp/snappdialog/dialogViews/a/e$b;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:I

.field d:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcab/snapp/passenger/units/mainheader/c;->f:I

    return-void
.end method

.method static synthetic A(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lcab/snapp/passenger/units/mainheader/c;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcab/snapp/passenger/units/mainheader/c;->g:Z

    return p0
.end method

.method static synthetic E(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic F(Lcab/snapp/passenger/units/mainheader/c;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcab/snapp/passenger/units/mainheader/c;->i:Z

    return p0
.end method

.method static synthetic G(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic H(Lcab/snapp/passenger/units/mainheader/c;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcab/snapp/passenger/units/mainheader/c;->h:Z

    return p0
.end method

.method static synthetic I(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K(Lcab/snapp/passenger/units/mainheader/c;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    return p0
.end method

.method static synthetic L(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic M(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic N(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic O(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic P(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v1, v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$YXpS-p0ziFLE5aU83vyhyLMtKu4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$YXpS-p0ziFLE5aU83vyhyLMtKu4;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 1343
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v2, "Message To Driver Close Button"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MESSAGE_TO_DRIVER:Ljava/lang/String;

    const-string v2, "[close]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelMessageToDriverDialog()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/mainheader/c;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 812
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a98

    const/16 v1, 0x1388

    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPriceStartValue(I)V

    .line 817
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPriceEndValue(I)V

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPriceStartValue(I)V

    .line 822
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPriceEndValue(I)V

    .line 825
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPriceFormat(Ljava/lang/String;)V

    .line 1839
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1841
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const/16 v1, 0x3e8

    new-instance v2, Lcab/snapp/passenger/units/mainheader/c$5;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/mainheader/c$5;-><init>(Lcab/snapp/passenger/units/mainheader/c;Z)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->animatePriceText(ILandroid/animation/AnimatorListenerAdapter;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/c$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/c$2;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    .line 1333
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    iget v0, p0, Lcab/snapp/passenger/units/mainheader/c;->c:I

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/mainheader/a;->sendMessageToDriver(ILjava/lang/String;)V

    .line 1337
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelMessageToDriverDialog()V

    :cond_1
    return-void
.end method

.method private c()Landroid/view/View;
    .locals 1

    .line 963
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getMessageToDriverView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->shareRide()V

    .line 1138
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRideDialog()V

    :cond_1
    return-void
.end method

.method private d()Landroid/view/View;
    .locals 1

    .line 978
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getRideShareButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 3

    .line 6156
    iget p1, p0, Lcab/snapp/passenger/units/mainheader/c;->l:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 6158
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v2, "[driverArrived][back]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6162
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v2, "[driverInway][back]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideDialog()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/mainheader/c;)I
    .locals 0

    .line 33
    iget p0, p0, Lcab/snapp/passenger/units/mainheader/c;->l:I

    return p0
.end method

.method private synthetic e()V
    .locals 2

    .line 1318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 1321
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 3

    .line 6171
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->CANCEL:Ljava/lang/String;

    const-string v2, "Cancel on price range"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6173
    iget p1, p0, Lcab/snapp/passenger/units/mainheader/c;->l:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 6175
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v2, "[driverArrived][cancel]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6179
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v2, "[driverInway][cancel]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->reportOnRideCanceledToMarketing()V

    .line 1096
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1098
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/a;->a()V

    .line 1100
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideDialog()V

    .line 1103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showLoadingDialog()V

    :cond_2
    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f()V
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsEnabled()V

    .line 1226
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEnabled()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic g()V
    .locals 2

    .line 1169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 1172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h()V
    .locals 2

    .line 1080
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic i()V
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$AVpj-wEsZGeytPOGmHZthAdffIw(Lcab/snapp/passenger/units/mainheader/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$HcbgBycsvCelumogG48lJq7E2E4(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->h()V

    return-void
.end method

.method public static synthetic lambda$Jk9QAeECOmeRBldDnCxQXwGufVs(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->e()V

    return-void
.end method

.method public static synthetic lambda$SWsheW5Zn7eqm3y6She2zO3lhJk(Lcab/snapp/passenger/units/mainheader/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$TSXWOLRmYv8Ew8LA7bZne40BQSI(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->g()V

    return-void
.end method

.method public static synthetic lambda$WyZmuB_tuFQ4H8yP7sTKOQEK5FI(Lcab/snapp/passenger/units/mainheader/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$YXpS-p0ziFLE5aU83vyhyLMtKu4(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->i()V

    return-void
.end method

.method public static synthetic lambda$hpSm61RKOebllN2bChwjETPI_So(Lcab/snapp/passenger/units/mainheader/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->f()V

    return-void
.end method

.method public static synthetic lambda$uRGm6O9EehG9betQUTBo9oZAEx0(Lcab/snapp/passenger/units/mainheader/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$xesE8PbUbOwLhzp75zDkrtaou8o(Lcab/snapp/passenger/units/mainheader/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/c;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcab/snapp/passenger/units/mainheader/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getOptionsContainer()Landroid/view/View;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getOptionsContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onBackClicked()V
    .locals 3

    .line 1064
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->d:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    .line 1065
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    .line 3258
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3260
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 3271
    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3273
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "selectServiceType"

    const-string v2, "back"

    .line 3274
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3276
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_0
    return-void
.end method

.method public final onCancelRideClicked()V
    .locals 8

    .line 1076
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1078
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1079
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$HcbgBycsvCelumogG48lJq7E2E4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$HcbgBycsvCelumogG48lJq7E2E4;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4188
    iget v0, p0, Lcab/snapp/passenger/units/mainheader/c;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4190
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v3, "[driverArrived][show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4194
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRMATION_FOR_CANCEL_RIDE:Ljava/lang/String;

    const-string v3, "[driverInway][show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->reportOnCancelButtonToAppMetrica()V

    .line 1089
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v2, 0x7f120049

    const v3, 0x7f12004b

    const v4, 0x7f12004a

    new-instance v5, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$AVpj-wEsZGeytPOGmHZthAdffIw;

    invoke-direct {v5, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$AVpj-wEsZGeytPOGmHZthAdffIw;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const v6, 0x7f120060

    new-instance v7, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$uRGm6O9EehG9betQUTBo9oZAEx0;

    invoke-direct {v7, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$uRGm6O9EehG9betQUTBo9oZAEx0;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual/range {v1 .. v7}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showCancelRideDialog(IIILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final onCancelRideFailed(I)V
    .locals 2

    .line 916
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(II)V

    .line 919
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onCancelRideSucceed(I)V
    .locals 2

    .line 930
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(II)V

    .line 933
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onDestinationSelected(ILjava/lang/String;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 421
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 422
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p4, :cond_0

    .line 426
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showDummySnappToLayout()V

    .line 427
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideDownSnappToLayout()V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSnappArrived()V

    .line 430
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 431
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSearchButton()V

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 433
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    .line 434
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 435
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p4

    instance-of p4, p4, Landroid/app/Activity;

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 437
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p4, v0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 438
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p4}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p4

    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    const/16 v0, 0x10

    invoke-virtual {p4, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    if-eqz p3, :cond_2

    .line 442
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoSaveButton()V

    .line 448
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePriceLayout()V

    .line 449
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3, p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setSnappToAddressText(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 451
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    .line 452
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    .line 453
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    new-instance p2, Lcab/snapp/passenger/units/mainheader/c$4;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/mainheader/c$4;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_3
    return-void
.end method

.method public final onDrawerIconClicked()V
    .locals 2

    .line 1040
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    .line 3159
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3161
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 3163
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->reportSideMenuToggleToAppMetrica()V

    :cond_0
    return-void
.end method

.method public final onDriverArrived(IZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 536
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 545
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 546
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 547
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120263

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120150

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/c;->d:Lcab/snapp/passenger/f/o;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/o;->showTapTargetForMessageToDriver(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 554
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSearchButton()V

    if-nez p3, :cond_2

    .line 557
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 558
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showCancelRideButton()V

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 563
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    :goto_0
    if-eqz p2, :cond_3

    .line 567
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    goto :goto_1

    .line 571
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoSaveButton()V

    .line 573
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPriceLayout()V

    .line 574
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showSnappArrived()V

    .line 575
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideDownSnappArrived()V

    .line 576
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 577
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showOptionsContainer()V

    .line 578
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 579
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    return-void
.end method

.method public final onEditOptionsRequest()V
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsDisabled()V

    .line 880
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoDisabled()V

    const/4 v0, 0x0

    .line 2769
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->g:Z

    .line 2770
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/mainheader/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public final onFailedRequest(Ljava/lang/String;)V
    .locals 2

    .line 892
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 894
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(Ljava/lang/String;I)V

    .line 898
    :cond_0
    iget-boolean p1, p0, Lcab/snapp/passenger/units/mainheader/c;->h:Z

    if-eqz p1, :cond_1

    .line 900
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEnabled()V

    .line 902
    :cond_1
    iget-boolean p1, p0, Lcab/snapp/passenger/units/mainheader/c;->i:Z

    if-eqz p1, :cond_2

    .line 904
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsEnabled()V

    :cond_2
    return-void
.end method

.method public final onFailedVoucherRequest(Ljava/lang/String;)V
    .locals 2

    .line 1018
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1022
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1024
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(Ljava/lang/String;I)V

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoLoading()V

    .line 1027
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    .line 1028
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEnabled()V

    .line 1029
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsEnabled()V

    return-void
.end method

.method public final onHideOptions()V
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v1, Lcab/snapp/passenger/units/mainheader/c$3;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/c$3;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final onIdle(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSnappArrived()V

    .line 327
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    if-eqz p2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 337
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showSearchButton()V

    .line 338
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 340
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 341
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 343
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p2, v0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoText(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    .line 348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 350
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePriceLayout()V

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideOptionsContainer()V

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    :cond_2
    return-void
.end method

.method public final onInitialize(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/c;->a:Ljava/util/List;

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/mainheader/c;)V

    :cond_0
    return-void
.end method

.method public final onItemSelected(ILjava/lang/String;)V
    .locals 0

    .line 1359
    iput-object p2, p0, Lcab/snapp/passenger/units/mainheader/c;->b:Ljava/lang/String;

    .line 1360
    iput p1, p0, Lcab/snapp/passenger/units/mainheader/c;->c:I

    return-void
.end method

.method public final onMessageSentToDriver(I)V
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final onMessageToDriverClicked()V
    .locals 11

    .line 1309
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MESSAGE_TO_DRIVER_POPUP:Ljava/lang/String;

    const-string v3, "in ride - message to driver click"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->onMessageToDriverClicked()V

    .line 1312
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 1316
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1317
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$Jk9QAeECOmeRBldDnCxQXwGufVs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$Jk9QAeECOmeRBldDnCxQXwGufVs;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1325
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v2, p0, Lcab/snapp/passenger/units/mainheader/c;->a:Ljava/util/List;

    const/4 v3, 0x0

    const v5, 0x7f12010c

    const v6, 0x7f120204

    const v7, 0x7f120060

    const v8, 0x7f120203

    new-instance v9, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$xesE8PbUbOwLhzp75zDkrtaou8o;

    invoke-direct {v9, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$xesE8PbUbOwLhzp75zDkrtaou8o;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    new-instance v10, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$WyZmuB_tuFQ4H8yP7sTKOQEK5FI;

    invoke-direct {v10, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$WyZmuB_tuFQ4H8yP7sTKOQEK5FI;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    move-object v4, p0

    invoke-virtual/range {v1 .. v10}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showMessageToDriverDialog(Ljava/util/List;ILcab/snapp/snappdialog/dialogViews/a/e$b;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 1005
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onOptionsClicked()V
    .locals 6

    .line 1215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    if-eqz v0, :cond_2

    .line 1220
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsDisabled()V

    .line 1221
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoDisabled()V

    .line 1222
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getOptionsBtn()Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$hpSm61RKOebllN2bChwjETPI_So;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$hpSm61RKOebllN2bChwjETPI_So;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    .line 1234
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->isPromoViewShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x64

    .line 1237
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->a()V

    .line 1240
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->isOptionsContainerShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->b()V

    return-void

    .line 1246
    :cond_1
    iget-object v2, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v5, "Ride Option Button In Ride"

    invoke-virtual {v2, v3, v4, v5}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/mainheader/a;->reportOnOptionClickedToAppMetrica()V

    .line 1249
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showOptionsContainer()V

    .line 1250
    new-instance v2, Lcab/snapp/passenger/units/mainheader/c$6;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/c$6;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->scaleUpOptionsContainer(Landroid/animation/AnimatorListenerAdapter;I)V

    :cond_2
    return-void
.end method

.method public final onOriginSelected(I)V
    .locals 2

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 389
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideDummySnappToLayout()V

    .line 392
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSnappArrived()V

    .line 393
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showFavoritesContainer()V

    .line 394
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showSearchButton()V

    .line 395
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 396
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    .line 397
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 398
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v1, v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 401
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoText(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    .line 405
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 406
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 407
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    :cond_1
    return-void
.end method

.method public final onPassengerBoarded(IZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 592
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 594
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 595
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSearchButton()V

    .line 596
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    if-eqz p3, :cond_0

    .line 599
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    .line 600
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 605
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showShareRide()V

    :goto_0
    if-eqz p2, :cond_1

    .line 609
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    goto :goto_1

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoSaveButton()V

    .line 615
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPriceLayout()V

    .line 616
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappArrived()V

    .line 617
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 618
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showOptionsContainer()V

    .line 619
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 621
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->d()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 624
    new-instance p1, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {p1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 625
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 626
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->d()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 627
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1201eb

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f1201ea

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 630
    iget-object p2, p0, Lcab/snapp/passenger/units/mainheader/c;->d:Lcab/snapp/passenger/f/o;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/f/o;->showTapTargetForRideShare(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    :cond_2
    return-void
.end method

.method public final onPaymentStatusUpdated(Ljava/lang/String;II)V
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 752
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePaymentStatus()V

    return-void

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPaymentStatus()V

    .line 757
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setSufficientCreditIcon(I)V

    .line 758
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setSufficientCreditText(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1, p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setSufficientCreditTextColor(I)V

    :cond_1
    return-void
.end method

.method public final onPopOptions()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/c$1;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public final onPromoClicked()V
    .locals 4

    .line 1163
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 1167
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 1168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$TSXWOLRmYv8Ew8LA7bZne40BQSI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$TSXWOLRmYv8Ew8LA7bZne40BQSI;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->isOptionsContainerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->b()V

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->isPromoViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/c;->a()V

    return-void

    .line 1188
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->h:Z

    if-eqz v0, :cond_3

    .line 1190
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "In Ride Voucher"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v1, v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 1193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1197
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoView()V

    .line 1200
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->reportOnPromoClickedToAppMetrica()V

    :cond_4
    return-void
.end method

.method public final onRideAccepted(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 495
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSnappArrived()V

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 499
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSearchButton()V

    if-nez p3, :cond_0

    .line 502
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 503
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showCancelRideButton()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p3}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showBackButton()V

    :goto_0
    if-eqz p2, :cond_1

    .line 512
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoSaveButton()V

    .line 518
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPriceLayout()V

    .line 519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 520
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showOptionsContainer()V

    .line 521
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 522
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    :cond_2
    return-void
.end method

.method public final onRideDataUpdated(DZZZ)V
    .locals 3

    .line 705
    iput-boolean p3, p0, Lcab/snapp/passenger/units/mainheader/c;->i:Z

    .line 706
    iput-boolean p4, p0, Lcab/snapp/passenger/units/mainheader/c;->h:Z

    .line 708
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 712
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePriceTv()V

    .line 713
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showFreeRideTv()V

    goto :goto_0

    .line 717
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFreeRideTv()V

    .line 718
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPriceTv()V

    .line 1781
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    .line 1787
    iput-boolean p5, p0, Lcab/snapp/passenger/units/mainheader/c;->g:Z

    .line 1788
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 1790
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p5

    check-cast p5, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    double-to-int p1, p1

    invoke-virtual {p5, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->animateAndSetPriceFromZero(I)V

    goto :goto_0

    .line 1795
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p1, p2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "0"

    .line 1800
    :cond_2
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1801
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPrice(Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 723
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsEnabled()V

    goto :goto_1

    .line 727
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsDisabled()V

    :goto_1
    if-eqz p4, :cond_5

    .line 731
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEnabled()V

    return-void

    .line 735
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoDisabled()V

    :cond_6
    return-void
.end method

.method public final onRideFinished(I)V
    .locals 1

    const/4 v0, 0x0

    .line 643
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->j:Z

    .line 644
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideFavoritesContainer()V

    .line 647
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideBackButton()V

    .line 648
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showSearchButton()V

    .line 649
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideButton()V

    .line 650
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    .line 651
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setTitleText(I)V

    .line 652
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 653
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 655
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, v0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 656
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoText(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoSaveButton()V

    .line 660
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePriceLayout()V

    .line 661
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideSnappArrived()V

    .line 662
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideOptionsContainer()V

    .line 663
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRide()V

    :cond_1
    return-void
.end method

.method public final onRideOptionsClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->k:Z

    .line 375
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideDownSnappToLayout()V

    :cond_0
    return-void
.end method

.method public final onRideOptionsOpened()V
    .locals 1

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/c;->k:Z

    .line 363
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->slideUpSnappToLayout()V

    :cond_0
    return-void
.end method

.method public final onRideRequested()V
    .locals 0

    return-void
.end method

.method public final onRideStateUpdated(I)V
    .locals 0

    .line 990
    iput p1, p0, Lcab/snapp/passenger/units/mainheader/c;->l:I

    .line 991
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideLoadingDialog()V

    .line 994
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideCancelRideDialog()V

    .line 995
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hideShareRideDialog()V

    .line 996
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelMessageToDriverDialog()V

    :cond_0
    return-void
.end method

.method public final onSearchClicked()V
    .locals 6

    .line 1052
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1054
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    .line 3223
    iget-object v1, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 3228
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3231
    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->navigateToSearch()V

    .line 3234
    :cond_1
    iget-object v1, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    const-string v3, "Pre-ride"

    const-string v4, "tap"

    const-string v5, "searchButton"

    if-nez v1, :cond_2

    .line 3236
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 3237
    invoke-virtual {v0, v5, v4}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "setOrigin"

    .line 3238
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3239
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 3242
    :cond_2
    iget-object v0, v0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3244
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 3245
    invoke-virtual {v0, v5, v4}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "setDestination"

    .line 3246
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 3247
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3248
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_3
    return-void
.end method

.method public final onShareRideClicked()V
    .locals 7

    .line 4203
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Open Ride Sharing Dialog"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_INFORM_RIDE:Ljava/lang/String;

    const-string v3, "clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5152
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "rideInform"

    const-string v2, "tap"

    .line 5153
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 5154
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5155
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "In-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 1126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v2, 0x7f120113

    const v3, 0x7f1201e5

    const v4, 0x7f1201e4

    const v5, 0x7f1201e3

    new-instance v6, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$SWsheW5Zn7eqm3y6She2zO3lhJk;

    invoke-direct {v6, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$c$SWsheW5Zn7eqm3y6She2zO3lhJk;-><init>(Lcab/snapp/passenger/units/mainheader/c;)V

    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showShareRideDialog(IIIILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onSubmitPromoClicked()V
    .locals 4

    .line 1283
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/c;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "In Ride Voucher Submit Button"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getPromoCodeText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getPromoCodeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setOptionsDisabled()V

    .line 1295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoDisabled()V

    .line 1296
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoSaveButton()V

    .line 1297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showPromoLoading()V

    .line 1298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getPromoCodeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/a;->applyVoucher(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->getPromoCodeEditText()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    goto :goto_1

    .line 1290
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f12019e

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onVoucherSucceed(Ljava/lang/String;)V
    .locals 2

    .line 944
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->showToast(Ljava/lang/String;I)V

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoView()V

    .line 951
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->setPromoEditTextDisabled()V

    .line 952
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->hidePromoLoading()V

    :cond_1
    return-void
.end method
