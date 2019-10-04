.class public final Lcab/snapp/passenger/units/main/d;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/units/main/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/main/MainView;",
        "Lcab/snapp/passenger/units/main/b;",
        ">;",
        "Lcab/snapp/passenger/units/main/a/b;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Z

.field h:Z

.field private final i:F

.field private j:Lcab/snapp/passenger/data/models/OptionalConfig;

.field private k:Z

.field private l:Lcab/snapp/passenger/units/main/a/c;

.field private m:Lcab/snapp/passenger/units/main/a/d;

.field private n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcab/snapp/passenger/units/main/a/e;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 54
    iput v0, p0, Lcab/snapp/passenger/units/main/d;->i:F

    .line 75
    new-instance v0, Lcab/snapp/passenger/units/main/-$$Lambda$d$EOVUrpO85oDfhli3goRSMECAiao;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$EOVUrpO85oDfhli3goRSMECAiao;-><init>(Lcab/snapp/passenger/units/main/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->a:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcab/snapp/passenger/units/main/-$$Lambda$d$fGJEdk_MoBYym7SBAOrWWjr-rDc;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$fGJEdk_MoBYym7SBAOrWWjr-rDc;-><init>(Lcab/snapp/passenger/units/main/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->b:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lcab/snapp/passenger/units/main/-$$Lambda$d$iSVIjxSyPsOq0NQP70fqTz08OMo;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$iSVIjxSyPsOq0NQP70fqTz08OMo;-><init>(Lcab/snapp/passenger/units/main/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->c:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcab/snapp/passenger/units/main/-$$Lambda$d$xp4zSyKH95WMwDTsoUaw8rM8-jA;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$xp4zSyKH95WMwDTsoUaw8rM8-jA;-><init>(Lcab/snapp/passenger/units/main/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->d:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->v:Z

    return-void
.end method

.method static synthetic A(Lcab/snapp/passenger/units/main/d;)Z
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->v:Z

    return v0
.end method

.method static synthetic B(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 483
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 484
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideLocationSelectorShadow()V

    .line 485
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideLocationSelectorDot()V

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1187
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->cancelUpdateDialog()V

    .line 1190
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->hideUpdateBanner()V

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->denyUpdate()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/main/b;->contentSelected(Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V
    .locals 2

    .line 1042
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1047
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 1086
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1088
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    goto :goto_0

    .line 1080
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1082
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void

    .line 1074
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1076
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void

    .line 1068
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1070
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void

    .line 1062
    :cond_4
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1064
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->chargeItemClicked(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void

    .line 1056
    :cond_5
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1058
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/b;->webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void

    .line 1050
    :cond_6
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isActive()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1052
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->itemCabClicked()V

    :cond_7
    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/google/android/gms/common/api/k;Landroid/view/View;)V
    .locals 0

    .line 986
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 988
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/main/MainView;->cancelNoLocationDialog()V

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 992
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/main/b;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;)V

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroid/content/DialogInterface;)V
    .locals 1

    .line 948
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 950
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 952
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/main/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/ChangeLogItem;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ChangeLogItem;->getVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/main/b;->handleSeenChangeLog(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroid/view/View;)V
    .locals 1

    .line 935
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 937
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 939
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/main/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/ChangeLogItem;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ChangeLogItem;->getVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/main/b;->handleSeenChangeLog(I)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 944
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->cancelWhatsNewDialog()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/d;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->r:Z

    return p1
.end method

.method static synthetic b(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 494
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->showLocationSelectorShadow()V

    .line 499
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->showLocationSelectorDot()V

    .line 500
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->cancelUpdateDialog()V

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->startUpdate()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/main/d;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->q:Z

    return p1
.end method

.method private c()Landroid/view/View;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getLocationSelectorImageButton()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->reportPopUpLocationNegativeButtonClickedToAppMetrica()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d()V
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->s:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->openJekBottomSheet()V

    :cond_0
    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->reportPopUpLocationPositiveButtonClickedToAppMetrica()V

    .line 96
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/b;->reportPopUpLocationNegativeButtonClickedToAppMetrica()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->reportPopUpLocationPositiveButtonClickedToAppMetrica()V

    .line 79
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method static synthetic g(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$8LgvCJXIcBq3i-tj1_Hyz3FUVkU(Lcab/snapp/passenger/units/main/d;Lcom/google/android/gms/common/api/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/main/d;->a(Lcom/google/android/gms/common/api/k;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$8O_QG7rOVf4qTH2nCZc6tGeEjpM(Lcab/snapp/passenger/units/main/d;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/main/d;->a(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$EOVUrpO85oDfhli3goRSMECAiao(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$aMvINYiEuzrYfmW-_XzfRBHh5o8(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fGJEdk_MoBYym7SBAOrWWjr-rDc(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hM45OOKiK-Vwa-ZAqpYpPRaSgzU(Lcab/snapp/passenger/units/main/d;Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V

    return-void
.end method

.method public static synthetic lambda$iSVIjxSyPsOq0NQP70fqTz08OMo(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$l4HFBs9fIe1N1FBh0UDyKl6wup8(Lcab/snapp/passenger/units/main/d;Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->a(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V

    return-void
.end method

.method public static synthetic lambda$m3bze91ZNA8VsYVIcbsS187wu4c(Lcab/snapp/passenger/units/main/d;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->d()V

    return-void
.end method

.method public static synthetic lambda$ozxVKtlgbP2tpmb5mXng2qtrHaY(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$paPv_3EcAChrSlbvymGnT0Iduik(Lcab/snapp/passenger/units/main/d;Ljava/util/List;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/main/d;->a(Ljava/util/List;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$xp4zSyKH95WMwDTsoUaw8rM8-jA(Lcab/snapp/passenger/units/main/d;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcab/snapp/passenger/units/main/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcab/snapp/passenger/units/main/d;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcab/snapp/passenger/units/main/d;->v:Z

    return p0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .line 1112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    .line 4085
    iget-object v1, v0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/d;->getServiceTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 4088
    iget-object v1, v0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/d;->getServiceTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;

    .line 4155
    :try_start_0
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "Services"

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getAppmetricaTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v1

    .line 4156
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "JekHome"

    invoke-virtual {v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 4161
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 4091
    :goto_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->isShouldRedirectToPWA()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4093
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4095
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4096
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONTENT_URL_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4097
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->isTopBarHidden()Z

    move-result p1

    const-string v2, "IS_TOP_BAR_HIDDEN"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4098
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/main/f;->routeToWebHost(Landroid/os/Bundle;)V

    return-void

    .line 4103
    :cond_0
    iget-object v1, v0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/c/g;->setDefaultServiceType(I)V

    .line 4104
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->itemCabClicked()V

    .line 4105
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4107
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    .line 5123
    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5128
    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->isFirstItemInJekCompletelyVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5130
    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    return-void

    .line 5134
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->scrollJekRecyclerViewToTop()V

    const/4 v0, 0x1

    .line 5135
    iput-boolean v0, p1, Lcab/snapp/passenger/units/main/d;->h:Z

    :cond_2
    return-void
.end method

.method public final closeBottomSheet()V
    .locals 1

    .line 357
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->closeBottomSheet()V

    return-void
.end method

.method public final closeJekBottomSheet()V
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->h:Z

    .line 318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 319
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->m:Lcab/snapp/passenger/units/main/a/d;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/a/d;->hideHeader()V

    :cond_1
    return-void
.end method

.method public final getFooterContainerView()Landroid/view/View;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getFooterContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderContainerView()Landroid/view/View;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getHeaderContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final handleInaccurateOriginSelectedLocation()V
    .locals 1

    .line 1202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->showInaccurateOriginLocationDialog()V

    const/4 v0, 0x1

    .line 1205
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->o:Z

    :cond_0
    return-void
.end method

.method public final isBottomSheetOpened()Z
    .locals 1

    .line 1235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->isBottomSheetOpened()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDrawerOpened()Z
    .locals 1

    .line 1225
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->q:Z

    return v0
.end method

.method public final isEverInaccurateOriginDialogShown()Z
    .locals 1

    .line 1211
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->o:Z

    return v0
.end method

.method public final isJekBottomSheetOpened()Z
    .locals 1

    .line 1230
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->r:Z

    return v0
.end method

.method public final onClosingSideMenu()V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->closeDrawer()V

    :cond_0
    return-void
.end method

.method public final onDestinationSelected()V
    .locals 1

    .line 591
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->a()V

    .line 592
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 593
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideMyLocation()V

    :cond_0
    return-void
.end method

.method public final onDriverArrived()V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 622
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->a()V

    .line 625
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideMyLocation()V

    :cond_0
    return-void
.end method

.method public final onFinished(I)V
    .locals 0

    .line 651
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->b(I)V

    .line 652
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 654
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->b()V

    .line 655
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->showMyLocation()V

    :cond_0
    return-void
.end method

.method public final onHandleShowCase()V
    .locals 3

    .line 888
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 893
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->shouldShowShowCase()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->r:Z

    if-nez v0, :cond_1

    .line 897
    new-instance v0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 898
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 899
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 900
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12019a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12019b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Lcab/snapp/passenger/units/main/d;->e:Lcab/snapp/passenger/f/o;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/o;->showTapTargetForOriginPin(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onHideUpdateBanner()V
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideUpdateBanner()V

    :cond_0
    return-void
.end method

.method public final onIdle(I)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->b(I)V

    .line 561
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->b()V

    .line 565
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->showMyLocation()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Z)V
    .locals 1

    .line 666
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/main/d;)V

    .line 670
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->k:Z

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->showMapBoxCopyright()V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->hideMapBoxCopyright()V

    .line 680
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    new-instance v0, Lcab/snapp/passenger/units/main/d$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/d$2;-><init>(Lcab/snapp/passenger/units/main/d;)V

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/MainView;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 720
    new-instance p1, Lcab/snapp/passenger/units/main/d$3;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/main/d$3;-><init>(Lcab/snapp/passenger/units/main/d;)V

    iput-object p1, p0, Lcab/snapp/passenger/units/main/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 758
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 760
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public final onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V
    .locals 2

    .line 968
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 973
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 978
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->g:Z

    if-nez p1, :cond_2

    .line 981
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/main/MainView;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void

    .line 985
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    new-instance v1, Lcab/snapp/passenger/units/main/-$$Lambda$d$8LgvCJXIcBq3i-tj1_Hyz3FUVkU;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/main/-$$Lambda$d$8LgvCJXIcBq3i-tj1_Hyz3FUVkU;-><init>(Lcab/snapp/passenger/units/main/d;Lcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcab/snapp/passenger/units/main/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/main/MainView;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onLocationSelectorClick()V
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->handleLocationSelected()V

    :cond_0
    return-void
.end method

.method public final onMapStartMoving()V
    .locals 1

    .line 770
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->makePinSmall()V

    :cond_0
    return-void
.end method

.method public final onMapStoppedMoving()V
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->makePinNormal()V

    :cond_0
    return-void
.end method

.method public final onMyLocationClicked()V
    .locals 4

    .line 1155
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "GPS Icon"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->g:Z

    .line 1159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->requestMyLocation()V

    :cond_0
    return-void
.end method

.method public final onNavigatingToRatingUnit()V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->e:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 1262
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onOptionalConfigIsReady(Lcab/snapp/passenger/data/models/OptionalConfig;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcab/snapp/passenger/units/main/d;->j:Lcab/snapp/passenger/data/models/OptionalConfig;

    return-void
.end method

.method public final onOriginSelected(I)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/d;->b(I)V

    .line 577
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->b()V

    .line 578
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 579
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->showMyLocation()V

    :cond_0
    return-void
.end method

.method public final onPassengerBoarded()V
    .locals 1

    .line 635
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 637
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->a()V

    .line 640
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideMyLocation()V

    :cond_0
    return-void
.end method

.method public final onPermissionRequestIsDenied()V
    .locals 3

    .line 1003
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1008
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->g:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1013
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->g:Z

    .line 1014
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/d;->c:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/main/MainView;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onRideAccepted()V
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 607
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/d;->a()V

    .line 610
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->hideMyLocation()V

    :cond_0
    return-void
.end method

.method public final onShowUpdateBannerBeforeRide()V
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->r:Z

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->showUpdateBannerAtTop()V

    :cond_0
    return-void
.end method

.method public final onShowUpdateBannerInRide()V
    .locals 1

    .line 814
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->r:Z

    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->showUpdateBannerAtBottom()V

    :cond_0
    return-void
.end method

.method public final onSnappJekDataProvided(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/BannerItem;",
            ">;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;",
            ">;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;",
            ">;)V"
        }
    .end annotation

    .line 372
    new-instance v0, Lcab/snapp/passenger/units/main/a/e;

    invoke-direct {v0, p1, p2, p3}, Lcab/snapp/passenger/units/main/a/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    if-eqz p3, :cond_7

    .line 3381
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 3386
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 3404
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3405
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3406
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3399
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3400
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3401
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3394
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3395
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3396
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3389
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3390
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    iget-object p1, p1, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItem:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3410
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 3413
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;

    if-nez v2, :cond_4

    .line 3417
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3418
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3419
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->firstServiceTypeItemImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_4
    if-ne v2, v1, :cond_5

    .line 3424
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3425
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3426
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->secondServiceTypeItemImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_5
    if-ne v2, p2, :cond_6

    .line 3431
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3432
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceTypeItem;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3433
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3434
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->thirdServiceTypeItemImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public final onToggleDrawer()V
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->toggleDrawer()V

    :cond_0
    return-void
.end method

.method public final onUpdateBannerNewFeaturesBtnClicked()V
    .locals 9

    .line 1168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->j:Lcab/snapp/passenger/data/models/OptionalConfig;

    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    const v2, 0x7f080185

    .line 1172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120274

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcab/snapp/passenger/units/main/d;->j:Lcab/snapp/passenger/data/models/OptionalConfig;

    .line 1173
    invoke-virtual {v5}, Lcab/snapp/passenger/data/models/OptionalConfig;->getVersionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1172
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 5832
    :cond_0
    invoke-static {v0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 1172
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->j:Lcab/snapp/passenger/data/models/OptionalConfig;

    .line 1174
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/OptionalConfig;->getChanges()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12024d

    new-instance v6, Lcab/snapp/passenger/units/main/-$$Lambda$d$aMvINYiEuzrYfmW-_XzfRBHh5o8;

    invoke-direct {v6, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$aMvINYiEuzrYfmW-_XzfRBHh5o8;-><init>(Lcab/snapp/passenger/units/main/d;)V

    const v7, 0x7f120099

    new-instance v8, Lcab/snapp/passenger/units/main/-$$Lambda$d$ozxVKtlgbP2tpmb5mXng2qtrHaY;

    invoke-direct {v8, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$ozxVKtlgbP2tpmb5mXng2qtrHaY;-><init>(Lcab/snapp/passenger/units/main/d;)V

    .line 1170
    invoke-virtual/range {v1 .. v8}, Lcab/snapp/passenger/units/main/MainView;->showUpdateDialog(ILjava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;ILandroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final onUpdateLocationSelectorContentDescription(I)V
    .locals 1

    .line 512
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/MainView;->setLocationSelectorContentDescription(I)V

    :cond_0
    return-void
.end method

.method public final onUpdateMapBoxCopyRightStatus(Ljava/lang/Boolean;)V
    .locals 1

    .line 866
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 872
    iget-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->k:Z

    if-eqz p1, :cond_2

    .line 874
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->showMapBoxCopyright()V

    return-void

    .line 879
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/MainView;->hideMapBoxCopyright()V

    :cond_2
    return-void
.end method

.method public final onWhatsNewDataReady(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/ChangeLogItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 914
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 918
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/ChangeLogItem;

    if-eqz v1, :cond_1

    .line 921
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ChangeLogItem;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ChangeLogItem;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 923
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/ChangeLogItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 926
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 928
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 930
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    const/high16 v2, 0x7f0f0000

    .line 931
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120162

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f1200f4

    new-instance v6, Lcab/snapp/passenger/units/main/-$$Lambda$d$8O_QG7rOVf4qTH2nCZc6tGeEjpM;

    invoke-direct {v6, p0, p1}, Lcab/snapp/passenger/units/main/-$$Lambda$d$8O_QG7rOVf4qTH2nCZc6tGeEjpM;-><init>(Lcab/snapp/passenger/units/main/d;Ljava/util/List;)V

    new-instance v7, Lcab/snapp/passenger/units/main/-$$Lambda$d$paPv_3EcAChrSlbvymGnT0Iduik;

    invoke-direct {v7, p0, p1}, Lcab/snapp/passenger/units/main/-$$Lambda$d$paPv_3EcAChrSlbvymGnT0Iduik;-><init>(Lcab/snapp/passenger/units/main/d;Ljava/util/List;)V

    .line 930
    invoke-virtual/range {v1 .. v7}, Lcab/snapp/passenger/units/main/MainView;->showWhatsNewDialog(ILjava/lang/String;Ljava/util/ArrayList;ILandroid/view/View$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final openBottomSheet()V
    .locals 1

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->openBottomSheet()V

    return-void
.end method

.method public final openJekBottomSheet()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 304
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final reachedTop()V
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->h:Z

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 1249
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/d;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final scrollJekRecyclerViewToTop()V
    .locals 4

    .line 331
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/MainView;

    iget-object v1, v1, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setHasDeeplink(Z)V
    .locals 0

    .line 1244
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->u:Z

    return-void
.end method

.method public final setShouldShowJek(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->s:Z

    return-void
.end method

.method public final setUserType(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/d;->p:Z

    return-void
.end method

.method public final viewIsReady()V
    .locals 10

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->p:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_2

    .line 153
    new-instance v9, Lcab/snapp/passenger/units/main/d$1;

    invoke-direct {v9, p0}, Lcab/snapp/passenger/units/main/d$1;-><init>(Lcab/snapp/passenger/units/main/d;)V

    .line 219
    new-instance v0, Lcab/snapp/passenger/units/main/a/c;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    .line 220
    invoke-virtual {v2}, Lcab/snapp/passenger/units/main/MainView;->getWindowHeightWithoutStatusBarAndToolbar()F

    move-result v3

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    .line 221
    invoke-virtual {v2}, Lcab/snapp/passenger/units/main/MainView;->getHeaderHeight()F

    move-result v4

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    .line 222
    invoke-virtual {v2}, Lcab/snapp/passenger/units/main/MainView;->getAppbarHeight()F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    iget-object v7, v2, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    iget-object v8, v2, Lcab/snapp/passenger/units/main/MainView;->mapLayout:Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcab/snapp/passenger/units/main/a/c;-><init>(FFFFLandroid/view/View;Landroid/view/View;Lcab/snapp/passenger/units/main/a/a;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->l:Lcab/snapp/passenger/units/main/a/c;

    .line 228
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->l:Lcab/snapp/passenger/units/main/a/c;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    .line 230
    new-instance v0, Lcab/snapp/passenger/units/main/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    .line 231
    invoke-virtual {v2}, Lcab/snapp/passenger/units/main/MainView;->getAppbarHeight()F

    move-result v4

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    .line 232
    invoke-virtual {v2}, Lcab/snapp/passenger/units/main/MainView;->getHeaderStateChangeHeight()F

    move-result v5

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    iget-object v6, v2, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesControl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/main/MainView;

    iget-object v8, v2, Lcab/snapp/passenger/units/main/MainView;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-object v3, v0

    move-object v7, p0

    invoke-direct/range {v3 .. v8}, Lcab/snapp/passenger/units/main/a/d;-><init>(FFLandroid/view/View;Lcab/snapp/passenger/units/main/a/b;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/d;->m:Lcab/snapp/passenger/units/main/a/d;

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$d$m3bze91ZNA8VsYVIcbsS187wu4c;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$m3bze91ZNA8VsYVIcbsS187wu4c;-><init>(Lcab/snapp/passenger/units/main/d;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    .line 2030
    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$d$hM45OOKiK-Vwa-ZAqpYpPRaSgzU;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$hM45OOKiK-Vwa-ZAqpYpPRaSgzU;-><init>(Lcab/snapp/passenger/units/main/d;)V

    .line 245
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/a/e;->setContentOnClickListener(Lcab/snapp/passenger/units/main/a/e$d;)V

    .line 246
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    .line 2040
    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$d$l4HFBs9fIe1N1FBh0UDyKl6wup8;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$d$l4HFBs9fIe1N1FBh0UDyKl6wup8;-><init>(Lcab/snapp/passenger/units/main/d;)V

    .line 246
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/a/e;->setItemOnClickListener(Lcab/snapp/passenger/units/main/a/e$e;)V

    .line 247
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    .line 3024
    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$q1zYgk8jHOWwvghP9PgL07boUac;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$q1zYgk8jHOWwvghP9PgL07boUac;-><init>(Lcab/snapp/passenger/units/main/d;)V

    .line 247
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/a/e;->setRideItemOnClickListener(Lcab/snapp/passenger/units/main/a/e$f;)V

    .line 248
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->l:Lcab/snapp/passenger/units/main/a/c;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/a/e;->setSnappJekBottomSheetCallback(Lcab/snapp/passenger/units/main/a/c;)V

    .line 249
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->m:Lcab/snapp/passenger/units/main/a/d;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/a/e;->setSnappJekBottomSheetScrollListener(Lcab/snapp/passenger/units/main/a/d;)V

    .line 251
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->t:Lcab/snapp/passenger/units/main/a/e;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/MainView;->displaySnappServices(Lcab/snapp/passenger/units/main/a/e;)V

    .line 252
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/d;->m:Lcab/snapp/passenger/units/main/a/d;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 254
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/d;->u:Z

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    .line 261
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekServiceTypesControl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcab/snapp/passenger/units/main/d;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/main/MainView;

    iget-object v0, v0, Lcab/snapp/passenger/units/main/MainView;->snappJekFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    return-void
.end method
