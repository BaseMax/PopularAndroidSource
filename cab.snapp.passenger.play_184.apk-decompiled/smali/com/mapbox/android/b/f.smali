.class public abstract Lcom/mapbox/android/b/f;
.super Lcom/mapbox/android/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/mapbox/android/b/b<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:F

.field private e:F

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/mapbox/android/b/i;",
            "Lcom/mapbox/android/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/mapbox/android/b/h;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/b;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    .line 44
    new-instance p2, Lcom/mapbox/android/b/h;

    invoke-direct {p2}, Lcom/mapbox/android/b/h;-><init>()V

    iput-object p2, p0, Lcom/mapbox/android/b/f;->h:Lcom/mapbox/android/b/h;

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 51
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    .line 52
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/mapbox/android/b/f;->i:Landroid/graphics/PointF;

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/mapbox/android/b/f;->d:F

    .line 61
    invoke-direct {p0}, Lcom/mapbox/android/b/f;->b()V

    return-void
.end method

.method private a(II)Z
    .locals 1

    if-eq p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->getPointersCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->getPointersCount()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/mapbox/android/b/f;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    .line 115
    iget-object v0, p0, Lcom/mapbox/android/b/f;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/mapbox/android/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 0

    .line 206
    invoke-super {p0, p1}, Lcom/mapbox/android/b/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->g()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/mapbox/android/b/f;->b()V

    .line 74
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    iget-object v4, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xff

    const/4 v10, 0x1

    if-nez v4, :cond_1

    move-wide v3, v6

    goto :goto_2

    :cond_1
    sub-int v11, v3, v4

    .line 1053
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v10, :cond_2

    :goto_0
    move-wide v3, v8

    goto :goto_2

    :cond_2
    if-le v3, v4, :cond_3

    const-wide/16 v3, 0x5

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    goto :goto_0

    :cond_4
    if-ne v3, v10, :cond_5

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x6

    :goto_1
    shl-long/2addr v3, v5

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    :goto_2
    int-to-long v11, v2

    const/4 v13, 0x0

    cmp-long v14, v11, v3

    if-nez v14, :cond_6

    :goto_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    cmp-long v14, v3, v6

    if-eqz v14, :cond_8

    and-long v14, v3, v8

    cmp-long v16, v11, v14

    if-nez v16, :cond_7

    goto :goto_3

    :cond_7
    shr-long/2addr v3, v5

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    :goto_5
    const/4 v4, 0x2

    if-nez v3, :cond_d

    if-ne v2, v4, :cond_c

    .line 1141
    iget-object v3, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1142
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v3, 0x1

    :goto_9
    if-eqz v3, :cond_f

    .line 79
    instance-of v5, v0, Lcom/mapbox/android/b/j;

    if-eqz v5, :cond_e

    move-object v5, v0

    check-cast v5, Lcom/mapbox/android/b/j;

    invoke-virtual {v5}, Lcom/mapbox/android/b/j;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 80
    invoke-virtual {v5}, Lcom/mapbox/android/b/j;->e()V

    .line 82
    :cond_e
    iget-object v5, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 83
    iget-object v5, v0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_f
    if-eqz v3, :cond_10

    if-nez v2, :cond_14

    .line 2131
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_13

    const/4 v6, 0x5

    if-ne v5, v6, :cond_11

    goto :goto_a

    :cond_11
    if-eq v5, v10, :cond_12

    const/4 v6, 0x6

    if-ne v5, v6, :cond_14

    .line 2136
    :cond_12
    iget-object v5, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2134
    :cond_13
    :goto_a
    iget-object v5, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_14
    :goto_b
    invoke-static/range {p1 .. p1}, Lcom/mapbox/android/b/q;->determineFocalPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/mapbox/android/b/f;->i:Landroid/graphics/PointF;

    if-eqz v3, :cond_15

    return v13

    :cond_15
    if-ne v2, v4, :cond_19

    .line 100
    iget-object v1, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->f()I

    move-result v2

    if-lt v1, v2, :cond_19

    .line 2151
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    .line 2152
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    div-float/2addr v1, v2

    const v2, 0x3f2b851f    # 0.67f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_19

    .line 2213
    iget-object v1, v0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 2215
    :goto_d
    iget-object v2, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    if-ge v1, v2, :cond_18

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 2216
    :goto_e
    iget-object v4, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    .line 2217
    iget-object v4, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2218
    iget-object v5, v0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2220
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2221
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getPreviousEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float/2addr v8, v6

    sub-float/2addr v9, v7

    .line 2227
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual {v12, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 2230
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v11, v6

    sub-float/2addr v12, v7

    .line 2234
    iget-object v6, v0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v7, Lcom/mapbox/android/b/i;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v4, v5}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v4, Lcom/mapbox/android/b/e;

    invoke-direct {v4, v8, v9, v11, v12}, Lcom/mapbox/android/b/e;-><init>(FFFF)V

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    :cond_17
    move v1, v2

    goto/16 :goto_d

    .line 102
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->g()Z

    move-result v1

    if-nez v1, :cond_19

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/mapbox/android/b/f;->c()Z

    move-result v1

    return v1

    :cond_19
    return v13
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected g()Z
    .locals 9

    .line 183
    iget-object v0, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapbox/android/b/f;->d:F

    sub-float/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/mapbox/android/b/f;->j:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mapbox/android/b/f;->d:F

    sub-float/2addr v1, v2

    .line 188
    iget-object v3, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 189
    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 190
    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/mapbox/android/b/q;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 191
    invoke-virtual {p0}, Lcom/mapbox/android/b/f;->getCurrentEvent()Landroid/view/MotionEvent;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/mapbox/android/b/q;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v4

    cmpg-float v8, v7, v2

    if-ltz v8, :cond_1

    cmpg-float v8, v4, v2

    if-ltz v8, :cond_1

    cmpl-float v7, v7, v0

    if-gtz v7, :cond_1

    cmpl-float v4, v4, v1

    if-lez v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_0

    return v6

    .line 3157
    :cond_3
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/b/e;

    .line 3158
    invoke-virtual {v1}, Lcom/mapbox/android/b/e;->getCurrFingersDiffXY()F

    move-result v1

    iget v2, p0, Lcom/mapbox/android/b/f;->e:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    return v6

    :cond_5
    return v5
.end method

.method public getCurrentSpan(II)F
    .locals 3

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 264
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 266
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getCurrFingersDiffXY()F

    move-result p1

    return p1

    .line 260
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentSpanX(II)F
    .locals 3

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 315
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 317
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getCurrFingersDiffX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 311
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentSpanY(II)F
    .locals 3

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 340
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 339
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 342
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getCurrFingersDiffY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 336
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFocalPoint()Landroid/graphics/PointF;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/mapbox/android/b/f;->i:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPointersCount()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPreviousSpan(II)F
    .locals 3

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 290
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 292
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getPrevFingersDiffXY()F

    move-result p1

    return p1

    .line 286
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreviousSpanX(II)F
    .locals 3

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 365
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 367
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getPrevFingersDiffX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 361
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreviousSpanY(II)F
    .locals 3

    .line 385
    invoke-direct {p0, p1, p2}, Lcom/mapbox/android/b/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/mapbox/android/b/f;->g:Ljava/util/HashMap;

    new-instance v1, Lcom/mapbox/android/b/i;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    .line 390
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mapbox/android/b/f;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v1, p1, p2}, Lcom/mapbox/android/b/i;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 389
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/android/b/e;

    .line 392
    invoke-virtual {p1}, Lcom/mapbox/android/b/e;->getPrevFingersDiffY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    return p1

    .line 386
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "There is no such pair of pointers!"

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpanThreshold()F
    .locals 1

    .line 424
    iget v0, p0, Lcom/mapbox/android/b/f;->e:F

    return v0
.end method

.method public setSpanThreshold(F)V
    .locals 0

    .line 435
    iput p1, p0, Lcom/mapbox/android/b/f;->e:F

    return-void
.end method

.method public setSpanThresholdResource(I)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/mapbox/android/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/f;->setSpanThreshold(F)V

    return-void
.end method
