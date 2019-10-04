.class final Lcab/snapp/mapmodule/units/googlemap/b;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/mapmodule/units/googlemap/GoogleMapView;",
        "Lcab/snapp/mapmodule/units/googlemap/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 1109
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x3ff8cccccccccccdL    # 1.55

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method static synthetic a(Lcab/snapp/mapmodule/units/googlemap/b;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/mapmodule/units/googlemap/b;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->b:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_5

    .line 1087
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    goto :goto_0

    .line 1090
    :cond_1
    iget v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1102
    iput v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    goto :goto_0

    .line 1098
    :cond_3
    iput v1, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    .line 72
    :goto_0
    iget v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->a:I

    if-le v0, v1, :cond_4

    .line 74
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-virtual {v0}, Lcab/snapp/mapmodule/units/googlemap/a;->disableScrolling()V

    .line 75
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 79
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-virtual {p1}, Lcab/snapp/mapmodule/units/googlemap/a;->enableScrolling()V

    :cond_5
    return-void
.end method

.method public final initScaleGestureDetector(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcab/snapp/mapmodule/units/googlemap/b$1;

    invoke-direct {v1, p0}, Lcab/snapp/mapmodule/units/googlemap/b$1;-><init>(Lcab/snapp/mapmodule/units/googlemap/b;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/b;->b:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public final onMapReady(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/mapmodule/units/googlemap/b;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-virtual {v0, p1}, Lcab/snapp/mapmodule/units/googlemap/a;->setMap(Lcom/google/android/gms/maps/c;)V

    :cond_0
    return-void
.end method
