.class public final Lcab/snapp/passenger/units/ride_rating/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/ride_rating/RideRatingView;",
        "Lcab/snapp/passenger/units/ride_rating/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected d:I

.field protected e:Lcab/snapp/passenger/data/models/RideRatingModel;

.field protected f:Lcab/snapp/passenger/a/k;

.field protected g:Landroid/text/TextWatcher;

.field protected h:Lcab/snapp/passenger/a/k$a;

.field protected i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x3

    .line 42
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->a:I

    const/16 v0, 0x21

    .line 46
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->b:I

    const/16 v0, 0x14d

    .line 50
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->c:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    .line 66
    new-instance v1, Lcab/snapp/passenger/units/ride_rating/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_rating/c$1;-><init>(Lcab/snapp/passenger/units/ride_rating/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->g:Landroid/text/TextWatcher;

    .line 94
    new-instance v1, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$c$zV03AbytHzfKaR1RTWx1jucEx5s;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$c$zV03AbytHzfKaR1RTWx1jucEx5s;-><init>(Lcab/snapp/passenger/units/ride_rating/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->h:Lcab/snapp/passenger/a/k$a;

    .line 110
    new-instance v1, Lcab/snapp/passenger/units/ride_rating/c$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_rating/c$2;-><init>(Lcab/snapp/passenger/units/ride_rating/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 132
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_rating/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private static a(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/a/k$b;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 425
    new-instance v1, Lcab/snapp/passenger/a/k$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcab/snapp/passenger/a/k$b;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_0

    .line 429
    new-instance p0, Lcab/snapp/passenger/a/k$b;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcab/snapp/passenger/a/k$b;-><init>(Z)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showFeedBackScene()V

    const/16 v0, 0x21

    .line 2201
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    .line 2261
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2265
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCancelBtnIcon(I)V

    .line 2267
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->b()V

    .line 2268
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1201d9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setToolbarTitle(I)V

    .line 2270
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2272
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1200a2

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setWriteCommetButtonText(I)V

    goto :goto_0

    .line 2276
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f120253

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setWriteCommetButtonText(I)V

    .line 2279
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->hasReasons()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2281
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showFakeCommentView()V

    .line 2282
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setFakeCommentTextChangeListener(Landroid/text/TextWatcher;)V

    .line 2283
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setStarRate(I)V

    .line 2284
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideTabLayout()V

    return-void

    .line 2288
    :cond_2
    new-instance v0, Lcab/snapp/passenger/a/k;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_rating/c;->h:Lcab/snapp/passenger/a/k$a;

    invoke-direct {v0, v1, v2, v3}, Lcab/snapp/passenger/a/k;-><init>(Lcab/snapp/passenger/data/models/RideRatingModel;Ljava/util/List;Lcab/snapp/passenger/a/k$a;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->f:Lcab/snapp/passenger/a/k;

    .line 2289
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->f:Lcab/snapp/passenger/a/k;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPagerAdapterForReasonPages(Lcab/snapp/passenger/a/k;)V

    .line 2290
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->i:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setReasonPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 2292
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setStarRate(I)V

    .line 2293
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    new-instance v1, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$2gdxNIyopNr1EPU_ZfVlHGECkp4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$2gdxNIyopNr1EPU_ZfVlHGECkp4;-><init>(Lcab/snapp/passenger/units/ride_rating/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setOnStarRateSelectedListener(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;)V

    .line 2295
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->c()V

    .line 2297
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2299
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCurrentReasonPage(I)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;ZLcab/snapp/passenger/a/j;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/units/ride_rating/a;->toggleReason(Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;Ljava/lang/Boolean;)V

    .line 98
    invoke-virtual {p3}, Lcab/snapp/passenger/a/j;->notifyDataSetChanged()V

    .line 99
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->d()V

    .line 101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/ride_rating/a;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/ride_rating/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideTitle()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setRideTitleText(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120267

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideDestination()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setAddressText(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getCurrentReasonPage()I

    move-result v0

    .line 358
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->f:Lcab/snapp/passenger/a/k;

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcab/snapp/passenger/units/ride_rating/c;->a(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/a/k;->setItems(Ljava/util/List;)V

    .line 359
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/c;->f:Lcab/snapp/passenger/a/k;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPagerAdapterForReasonPages(Lcab/snapp/passenger/a/k;)V

    .line 360
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCurrentReasonPage(I)V

    .line 363
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v0

    if-gtz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/data/models/RideRatingModel;->setStarRate(I)V

    .line 365
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v2

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setRateDescriptionText(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f060030

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setRateDescriptionTextColor(I)V

    .line 368
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->d()V

    :cond_3
    :goto_1
    return-void
.end method

.method private d()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 381
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->addNegativeTabView()V

    .line 382
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showNegativeTabBadge()V

    .line 383
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getNumberOfSelectedReasons(Z)I

    move-result v0

    .line 384
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v2, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setNegativeTabBadge(I)V

    if-nez v0, :cond_1

    .line 387
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideNegativeTabBadge()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 392
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v2, 0x7f1202a7

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setNegativeTabText(I)V

    .line 393
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showRedDivider()V

    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v2, 0x7f1201a8

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setNegativeTabText(I)V

    .line 398
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideRedDivider()V

    .line 401
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 403
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->addPositiveTabView()V

    .line 404
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showPositiveTabBadge()V

    .line 405
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getNumberOfSelectedReasons(Z)I

    move-result v0

    .line 406
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPositiveTabBadge(I)V

    if-nez v0, :cond_3

    .line 409
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hidePositiveTabBadge()V

    .line 413
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getCurrentReasonPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_rating/c;->a(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private e()Landroid/content/Context;
    .locals 1

    .line 441
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private f()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    .line 462
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/a;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/a;->requestRate(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$zV03AbytHzfKaR1RTWx1jucEx5s(Lcab/snapp/passenger/units/ride_rating/c;Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;ZLcab/snapp/passenger/a/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/ride_rating/c;->a(Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;ZLcab/snapp/passenger/a/j;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f06004d

    const v1, 0x7f06003a

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setNegativeTabTextColor(I)V

    .line 178
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPositiveTabTextColor(I)V

    .line 179
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v0, 0x7f06004b

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setTabIndicatorColor(I)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setNegativeTabTextColor(I)V

    .line 184
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setPositiveTabTextColor(I)V

    .line 185
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v0, 0x7f06004c

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setTabIndicatorColor(I)V

    .line 188
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 190
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setTabIndicatorColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected final a(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar;F)V
    .locals 0

    .line 605
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/a;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/ride_rating/a;->updateStarRate(I)V

    .line 612
    iget p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 614
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->a()V

    return-void

    :cond_1
    const/16 p2, 0x21

    if-ne p1, p2, :cond_2

    .line 618
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->c()V

    :cond_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->onToolbarCancelButtonClicked()V

    return-void
.end method

.method public final onBeforeRate()V
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final onCommentSubmitClicked()V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->f()V

    return-void
.end method

.method public final onFakeCommentSubmitClicked()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->f()V

    return-void
.end method

.method public final onHasRatedBefore()V
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideLoading()V

    .line 486
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1200c4

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showToastMessage(II)V

    :cond_0
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/data/models/RideRatingModel;)V
    .locals 4

    .line 144
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz p1, :cond_1

    .line 145
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz p1, :cond_1

    .line 147
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showStarScene()V

    const/4 p1, 0x3

    .line 1201
    iput p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    .line 1235
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v0, 0x7f1201d9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setToolbarTitle(I)V

    .line 1241
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    new-instance v0, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$2gdxNIyopNr1EPU_ZfVlHGECkp4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$2gdxNIyopNr1EPU_ZfVlHGECkp4;-><init>(Lcab/snapp/passenger/units/ride_rating/c;)V

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setOnStarRateSelectedListener(Lcab/snapp/snappuikit/ratingbar/BaseRatingBar$a;)V

    .line 1243
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->b()V

    .line 1244
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1202af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideRatingModel;->getDriverName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideRatingModel;->getDriverVehicle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setDriverInfoText(Ljava/lang/String;)V

    .line 1245
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getDriverImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1247
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getDriverImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setDriverImage(Ljava/lang/String;)V

    .line 151
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->setStatusBarColor()V

    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideLoading()V

    .line 474
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onRateError()V
    .locals 3

    .line 495
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideLoading()V

    .line 499
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->hasReasons()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    if-nez v0, :cond_1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1200b9

    const v2, 0x7f06004b

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showToastMessage(II)V

    :cond_1
    return-void
.end method

.method public final onRateSuccess()V
    .locals 3

    .line 519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->hideLoading()V

    .line 522
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1202ba

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showToastMessage(II)V

    :cond_0
    return-void
.end method

.method public final onSubmitClicked()V
    .locals 2

    .line 577
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    .line 580
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/a;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/a;->requestRate(Z)V

    :cond_0
    return-void
.end method

.method public final onToolbarCancelButtonClicked()V
    .locals 3

    .line 534
    iget v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    const/16 v1, 0x14d

    if-ne v0, v1, :cond_0

    .line 536
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/c;->a()V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1202b6

    const v2, 0x7f06004d

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showToastMessage(II)V

    .line 543
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/a;->finish()V

    return-void

    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    .line 551
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/a;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->j:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/a;->requestRate(Z)V

    :cond_2
    return-void
.end method

.method public final onWantToWriteCommentClicked()V
    .locals 2

    .line 3222
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_2

    .line 3224
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->showCommentScene()V

    const/16 v0, 0x14d

    .line 4201
    iput v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->d:I

    .line 4324
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 4329
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4331
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->e:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCommentText(Ljava/lang/String;)V

    .line 4332
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f1200a2

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setToolbarTitle(I)V

    .line 4333
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCommentSubmitButtonText(I)V

    goto :goto_0

    .line 4337
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f120253

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setToolbarTitle(I)V

    .line 4338
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCommentSubmitButtonText(I)V

    .line 4341
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/c;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCommentTextChangeListener(Landroid/text/TextWatcher;)V

    .line 4342
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->setCancelBtnIcon(I)V

    .line 590
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 592
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/ride_rating/a;->a()V

    :cond_3
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 159
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
