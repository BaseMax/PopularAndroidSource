.class public final Lcab/snapp/passenger/units/footer/ride_request_footer/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:I

.field private e:Z

.field private f:Lcab/snapp/passenger/a/l;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

.field private i:Lcab/snapp/passenger/data/models/price/PriceModel;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/16 v0, 0x3e8

    .line 48
    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->d:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a:Z

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l:Z

    return-void
.end method

.method static synthetic A(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)I
    .locals 0

    .line 46
    iget p0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    return p0
.end method

.method private synthetic a(I)V
    .locals 7

    .line 330
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->selectServiceType(I)V

    .line 335
    :try_start_0
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v4, "Service Type Scroll"

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "tapBike"

    goto :goto_1

    :cond_1
    const-string p1, "tapBox"

    goto :goto_1

    :cond_2
    const-string p1, "tapRose"

    goto :goto_1

    :cond_3
    const-string p1, "tapEcho"

    .line 3404
    :goto_1
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "selectServiceType"

    .line 3405
    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 3407
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Pre-ride"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_4
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 1226
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRM_BEFORE_RIDE:Ljava/lang/String;

    const-string v2, "[no]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->cancelSnappConfirmationDialog()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 730
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3a98

    const/16 v1, 0x1388

    if-eqz p1, :cond_0

    .line 734
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v2, v2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setStartValue(I)V

    .line 735
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setEndValue(I)V

    goto :goto_0

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v2, v2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v2, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setStartValue(I)V

    .line 740
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setEndValue(I)V

    .line 743
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setFormat(Ljava/lang/String;)V

    .line 746
    :cond_1
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->e:Z

    return p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 3

    .line 1213
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v2, "confirm before ride yes"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRM_BEFORE_RIDE:Ljava/lang/String;

    const-string v2, "[yes]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->rideRequestConfirmed()V

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1221
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->cancelSnappConfirmationDialog()V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 752
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$1;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Z)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->setAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 788
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateText(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 548
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->tooltipsLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 3

    .line 1181
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v2, "confirm before ride yes"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->roseRequestConfirmed()V

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->cancelSnappRoseConfirmationDialog()V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d()V
    .locals 3

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 608
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissFreeRideDialog()V

    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e()V
    .locals 6

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 251
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->m:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->m:Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$LxuKkLcUsgipo1ZON7vs97WOwZI(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$MV6_uunRkiM0swW9mJmeziWSFm4(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$OZvktmwOXFPNp16dkIQO6YDmWkM(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->d()V

    return-void
.end method

.method public static synthetic lambda$alblu4RoNUdYOPxLuq7bUZNkgFg(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bDVkgoR4VgnxnmmLNN8ZMQASWzE(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->e()V

    return-void
.end method

.method public static synthetic lambda$iTVRDykWO7CnJEYaL08LkI6v_fE(Lcab/snapp/passenger/units/footer/ride_request_footer/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(I)V

    return-void
.end method

.method public static synthetic lambda$tSz4eHPF4jgUxJdIG1_G9FgBZXM(Lcab/snapp/passenger/units/footer/ride_request_footer/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 1250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    .line 1261
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public final disableUI()V
    .locals 2

    .line 669
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 672
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 673
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final enableUI()V
    .locals 7

    .line 559
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    if-eqz v0, :cond_a

    .line 562
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 565
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getTotalPrice()I

    move-result v0

    const/16 v3, 0x8

    if-gtz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 573
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 583
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 587
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    iget-object v3, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/price/PriceModel;->isFreeRide()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->updateFreeRideStatus(Z)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isFreeRide()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 593
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 594
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 595
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 596
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideFooterText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3e9

    .line 599
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x3ea

    .line 603
    :cond_3
    iget-boolean v3, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a:Z

    if-eqz v3, :cond_6

    .line 605
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v4, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 606
    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v5

    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideFooterText()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$MV6_uunRkiM0swW9mJmeziWSFm4;

    invoke-direct {v6, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$MV6_uunRkiM0swW9mJmeziWSFm4;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    .line 605
    invoke-virtual {v3, v4, v5, v6, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showFreeRideDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    .line 616
    iput-boolean v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a:Z

    goto :goto_2

    .line 622
    :cond_4
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a:Z

    .line 623
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 627
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissFreeRideDialog()V

    .line 632
    :cond_6
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isCanUseVoucher()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 634
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    goto :goto_3

    .line 638
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 641
    :goto_3
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isRideOptionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 643
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    goto :goto_4

    .line 647
    :cond_8
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 650
    :goto_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 652
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    return-void

    .line 656
    :cond_9
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 657
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 658
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public final finishPresentingPhoneVerificationUnit()V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->dismissPhoneVerificationUnitDialog()V

    return-void
.end method

.method public final getCurrentServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;
    .locals 1

    .line 286
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    return-object v0
.end method

.method public final getMainViewHeight()I
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMoreControllersContainer()Landroid/view/View;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->moreControllersContainer:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOptionButton()Landroid/view/View;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->optionsButton:Landroidx/appcompat/widget/AppCompatButton;

    return-object v0
.end method

.method public final hidePromoLoading()V
    .locals 1

    .line 1110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hidePromoLoading()V

    :cond_0
    return-void
.end method

.method public final hidePromoSaveButton()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hidePromoSaveButton()V

    :cond_0
    return-void
.end method

.method public final hideServiceTypes()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l:Z

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c()V

    :cond_0
    return-void
.end method

.method public final onActionClicked()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b()V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->onActionButtonClicked()V

    :cond_1
    return-void
.end method

.method public final onCanNotCalculatePrice(Ljava/lang/String;)V
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onHideBoxOptions()V
    .locals 2

    .line 963
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$5;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public final onHideOptions()V
    .locals 2

    .line 873
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$3;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->scaleDownOptionsContainer(Landroid/animation/AnimatorListenerAdapter;)V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    .line 241
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_1

    .line 243
    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$bDVkgoR4VgnxnmmLNN8ZMQASWzE;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$bDVkgoR4VgnxnmmLNN8ZMQASWzE;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public final onNeedPhoneVerification()V
    .locals 1

    .line 1001
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hideActionLayout()V

    .line 1004
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hideOptionsLayout()V

    .line 1005
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showPhoneNotVerified()V

    :cond_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 1139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onOptionsClicked()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->onRideOptionsClicked()V

    :cond_0
    return-void
.end method

.method public final onPhoneNotVerifiedClicked()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->startPhoneVerificationProcedure()V

    :cond_0
    return-void
.end method

.method public final onPhoneVerificationSuccessful()V
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showActionLayout()V

    .line 1089
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showOptionsLayout()V

    .line 1090
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hidePhoneNotVerified()V

    :cond_0
    return-void
.end method

.method public final onPromoClicked()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a()V

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b()V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->onPromoIsAccessible()V

    :cond_1
    return-void
.end method

.method public final onPromoSaveClicked()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    const v1, 0x7f12019e

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(I)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->hidePromoSaveButton()V

    .line 183
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showPromoLoading()V

    .line 184
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->applyVoucher(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b()V

    :cond_1
    return-void
.end method

.method public final onShowBoxOptions()V
    .locals 5

    .line 899
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    if-eqz v0, :cond_0

    .line 904
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->k:Ljava/lang/String;

    .line 905
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%s"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setActionButtonText(Ljava/lang/String;)V

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 911
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 914
    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->m:Z

    if-eqz v1, :cond_2

    const/16 v0, 0x64

    .line 918
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v2, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$4;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final onShowRideOptions()V
    .locals 5

    .line 809
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getServiceType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x7f1200b6

    .line 811
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setActionButtonText(I)V

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 816
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 818
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 821
    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->m:Z

    if-eqz v1, :cond_2

    .line 823
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b()V

    const/16 v0, 0xc8

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v2, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c$2;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final onSnappConfirmationNeeded(Ljava/lang/String;)V
    .locals 9

    .line 1202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    const v2, 0x7f120103

    const v3, 0x7f1201c9

    const v5, 0x7f1201c9

    const v6, 0x7f120097

    new-instance v7, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$alblu4RoNUdYOPxLuq7bUZNkgFg;

    invoke-direct {v7, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$alblu4RoNUdYOPxLuq7bUZNkgFg;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    new-instance v8, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$LxuKkLcUsgipo1ZON7vs97WOwZI;

    invoke-direct {v8, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$LxuKkLcUsgipo1ZON7vs97WOwZI;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showSnappConfirmationDialog(IILjava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onSnappRoseConfirmationNeeded()V
    .locals 8

    .line 1170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    const v2, 0x7f12010a

    const v3, 0x7f1202b0

    const v4, 0x7f1202b1

    const v5, 0x7f1201c9

    const v6, 0x7f120055

    new-instance v7, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$tSz4eHPF4jgUxJdIG1_G9FgBZXM;

    invoke-direct {v7, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$tSz4eHPF4jgUxJdIG1_G9FgBZXM;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    invoke-virtual/range {v1 .. v7}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showSnappRoseConfirmationDialog(IIIIILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onTooltipDetailsClicked()V
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getSurgeText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getSurgeFooterText()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800e4

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showTooltipDetailDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "SURGE BUTTON"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_PRE_RIDE_SURGE:Ljava/lang/String;

    const-string v3, "[show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getDiscountedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getDiscountedFooterText()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800e3

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showTooltipDetailDialog(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isFreeRide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getFreeRideFooterText()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800e2

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showTooltipDetailDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Free Ride Button"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onUnknownError(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserIsBlocked(Ljava/lang/String;)V
    .locals 1

    .line 1029
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUserServiceTypeHasNoErrorForDisplayingShowCase()V
    .locals 3

    .line 1150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 1156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 1157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getOptionButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 1158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120262

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120261

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b:Lcab/snapp/passenger/f/o;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/o;->showTapTargetForRideOptions(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public final onVoucherAlreadyActivated(Ljava/lang/String;)V
    .locals 3

    .line 1042
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120123

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showInfoDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onVoucherIsNotValid(Ljava/lang/String;)V
    .locals 1

    .line 1055
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final presentPhoneVerificationUnit(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showPhoneVerificationUnitAsDialog(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog;

    return-void
.end method

.method public final setActionButtonText(I)V
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(I)V

    :cond_0
    return-void
.end method

.method public final setActionButtonText(Ljava/lang/String;)V
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->actionButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setAdapter(I)V
    .locals 5

    .line 322
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    .line 325
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    .line 329
    new-instance v2, Lcab/snapp/passenger/a/l;

    iget-object v3, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    new-instance v4, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$iTVRDykWO7CnJEYaL08LkI6v_fE;

    invoke-direct {v4, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$iTVRDykWO7CnJEYaL08LkI6v_fE;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    invoke-direct {v2, v3, p1, v4}, Lcab/snapp/passenger/a/l;-><init>(Ljava/util/List;ILcab/snapp/passenger/a/l$a;)V

    iput-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->f:Lcab/snapp/passenger/a/l;

    .line 345
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 346
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->f:Lcab/snapp/passenger/a/l;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 347
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p1, p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v1}, Lme/a/a/a/a/g;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lme/a/a/a/a/b;

    .line 348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    new-instance v0, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$OZvktmwOXFPNp16dkIQO6YDmWkM;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$c$OZvktmwOXFPNp16dkIQO6YDmWkM;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/c;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setPrice(I)V
    .locals 1

    const/4 v0, 0x1

    .line 711
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->e:Z

    .line 713
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceCountingTextView:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;->animateFromZero(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final setPromoCode(Ljava/lang/String;)V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setRequestText(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->k:Ljava/lang/String;

    return-void
.end method

.method public final showPromoLoading()V
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showPromoLoading()V

    :cond_0
    return-void
.end method

.method public final showPromoSaveButton()V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->showPromoSaveButton()V

    :cond_0
    return-void
.end method

.method public final showServiceTypes()V
    .locals 3

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->recyclerLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    .line 1364
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->smoothScrollToServiceTypeAtItem(I)V

    .line 436
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l:Z

    if-eqz v0, :cond_1

    .line 1540
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->tooltipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final startCountingPrice()V
    .locals 1

    const/4 v0, 0x0

    .line 724
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->e:Z

    .line 725
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a(Z)V

    return-void
.end method

.method public final updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->f:Lcab/snapp/passenger/a/l;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 422
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->f:Lcab/snapp/passenger/a/l;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/l;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final updateServiceType(IZ)V
    .locals 4

    .line 467
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->freeRideTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->disabledTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 472
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object v0, v0, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->priceLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    .line 475
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 477
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getServiceType()I

    move-result v2

    iget v3, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    if-ne v2, v3, :cond_0

    .line 479
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->h:Lcab/snapp/passenger/data/models/ServiceTypeModel;

    .line 480
    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->i:Lcab/snapp/passenger/data/models/price/PriceModel;

    .line 482
    iget p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->j:I

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    const p1, 0x7f1200b6

    .line 484
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setActionButtonText(I)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->k:Ljava/lang/String;

    .line 489
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getService()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setActionButtonText(Ljava/lang/String;)V

    .line 494
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->startCountingPrice()V

    const/4 p1, 0x0

    .line 496
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 499
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isSurged()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getSurgeText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 503
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->isDiscountedPrice()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getPriceTexts()Lcab/snapp/passenger/data/models/price/PriceTexts;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/price/PriceTexts;->getDiscountedText()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 511
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l:Z

    .line 512
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c()V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    const/4 p2, 0x1

    .line 516
    iput-boolean p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->l:Z

    .line 2531
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2533
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p2, p2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->tooltipsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2534
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;

    iget-object p2, p2, Lcab/snapp/passenger/units/footer/ride_request_footer/RideRequestFooterView;->shortDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :cond_5
    :goto_2
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object p2, Lcab/snapp/passenger/f/b/b/c$e;->PRICE_SHOWN:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/price/PriceModel;->getTotalPrice()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setPrice(I)V

    :cond_6
    return-void
.end method
