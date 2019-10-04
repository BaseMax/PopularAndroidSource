.class public final Lcab/snapp/passenger/units/tour/e;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/tour/TourView;",
        "Lcab/snapp/passenger/units/tour/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcab/snapp/passenger/units/tour/e;->b:Z

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    return v0

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcab/snapp/passenger/units/tour/e;I)I
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/tour/e;II)V
    .locals 2

    .line 1265
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1270
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result p1

    .line 1271
    invoke-direct {p0, p2}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result p2

    .line 1272
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Slide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-le p2, p1, :cond_0

    .line 1275
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string p2, "SwipeNext"

    .line 1276
    invoke-virtual {p1, v0, p2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    goto :goto_0

    .line 1280
    :cond_0
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string p2, "SwipePrevious"

    .line 1281
    invoke-virtual {p1, v0, p2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1284
    :goto_0
    iget-object p0, p0, Lcab/snapp/passenger/units/tour/e;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string p2, "JekOnboarding"

    invoke-virtual {p0, p2, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/tour/e;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcab/snapp/passenger/units/tour/e;->b:Z

    return p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/tour/e;)I
    .locals 0

    .line 30
    iget p0, p0, Lcab/snapp/passenger/units/tour/e;->c:I

    return p0
.end method

.method private b(I)V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Slide"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Show"

    .line 295
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/e;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "JekOnboarding"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/tour/e;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/tour/e;->b(I)V

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/tour/e;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcab/snapp/passenger/units/tour/e;->c:I

    return p1
.end method

.method static synthetic c(Lcab/snapp/passenger/units/tour/e;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/tour/e;)Z
    .locals 1

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcab/snapp/passenger/units/tour/e;->b:Z

    return v0
.end method


# virtual methods
.method public final addOnPageListenerForLastPageChecking()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcab/snapp/passenger/units/tour/e$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/tour/e$1;-><init>(Lcab/snapp/passenger/units/tour/e;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public final addPageTransformerForAnimations()V
    .locals 3

    .line 307
    new-instance v0, Lcab/snapp/passenger/units/tour/e$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/tour/e$2;-><init>(Lcab/snapp/passenger/units/tour/e;)V

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v1, v1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public final displayNextPage()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v1, v1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public final displayPreviousPage()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v1, v1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public final lastPageIsSelected(Z)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/tour/TourView;->showEnterButton()V

    .line 53
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/tour/TourView;->hideNextImageView()V

    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/tour/TourView;->hideEnterButton()V

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/tour/TourView;->showNextImageView()V

    return-void
.end method

.method public final onCancelTourClick()V
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/b;->onCancelTourViewClick()V

    .line 177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result v0

    .line 1182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    .line 1187
    :cond_1
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Slide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Close"

    .line 1188
    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lcab/snapp/passenger/units/tour/e;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "JekOnboarding"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onEnterButtonClick()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result v0

    .line 1079
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    .line 1084
    :cond_1
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Slide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Done"

    .line 1085
    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcab/snapp/passenger/units/tour/e;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "JekOnboarding"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/b;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/units/tour/b;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/units/tour/b;",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/units/tour/d;",
            ">;)V"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/TourView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/tour/e;)V

    .line 370
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/tour/e;->prepareTourAdapter(Lcab/snapp/passenger/units/tour/b;Ljava/util/ArrayList;)V

    .line 371
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->addOnPageListenerForLastPageChecking()V

    .line 372
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/tour/e;->selectActiveItemAccordingToLanguageDirection(I)V

    .line 374
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->addPageTransformerForAnimations()V

    .line 376
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0x32

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->rotateNextDrawableForRTLLanguages()V

    .line 380
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->setStatusBarColor()V

    return-void
.end method

.method public final onNextPageImageViewClick()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcab/snapp/passenger/units/tour/e;->b:Z

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    iget-object v0, v0, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/tour/e;->a(I)I

    move-result v0

    .line 1124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    .line 1129
    :cond_1
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Slide"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ButtonNext"

    .line 1130
    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcab/snapp/passenger/units/tour/e;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "JekOnboarding"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 101
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/b;->requestNextPage()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onTourUnitIsInForeground(Landroid/app/Activity;)V
    .locals 1

    .line 399
    instance-of v0, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1}, Lcab/snapp/passenger/activities/root/RootActivity;->hideLoadingForSnappCabItemClickedFromSnappServices()V

    return-void
.end method

.method public final prepareTourAdapter(Lcab/snapp/passenger/units/tour/b;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/units/tour/b;",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/units/tour/d;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcab/snapp/passenger/units/tour/h;

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/units/tour/h;-><init>(Lcab/snapp/passenger/units/tour/a;Ljava/util/List;)V

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object p1, p1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object p1, p1, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setPageIndicators(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final rotateNextDrawableForRTLLanguages()V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/TourView;->rotateNextImageViewForRTLLanguages()V

    return-void
.end method

.method public final selectActiveItemAccordingToLanguageDirection(I)V
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object p1, p1, Lcab/snapp/passenger/units/tour/TourView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object p1, p1, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    invoke-virtual {p1, v0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setCurrentPage(I)V

    .line 338
    iput v0, p0, Lcab/snapp/passenger/units/tour/e;->c:I

    return-void

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/tour/TourView;

    iget-object p1, p1, Lcab/snapp/passenger/units/tour/TourView;->circleIndicatorView:Lio/github/kshitij_jain/indicatorview/IndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/github/kshitij_jain/indicatorview/IndicatorView;->setCurrentPage(I)V

    .line 344
    iput v0, p0, Lcab/snapp/passenger/units/tour/e;->c:I

    const/4 p1, 0x1

    .line 345
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/tour/e;->b(I)V

    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/TourView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/e;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/TourView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/TourView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0600ec

    .line 388
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
