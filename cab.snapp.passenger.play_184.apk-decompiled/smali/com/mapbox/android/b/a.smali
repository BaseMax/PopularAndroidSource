.class public Lcom/mapbox/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GESTURE_TYPE_DOUBLE_TAP:I = 0xa

.field public static final GESTURE_TYPE_DOUBLE_TAP_EVENT:I = 0xb

.field public static final GESTURE_TYPE_DOWN:I = 0x9

.field public static final GESTURE_TYPE_FLING:I = 0x7

.field public static final GESTURE_TYPE_LONG_PRESS:I = 0x6

.field public static final GESTURE_TYPE_MOVE:I = 0xd

.field public static final GESTURE_TYPE_MULTI_FINGER_TAP:I = 0x4

.field public static final GESTURE_TYPE_QUICK_SCALE:I = 0xf

.field public static final GESTURE_TYPE_ROTATE:I = 0x2

.field public static final GESTURE_TYPE_SCALE:I = 0x1

.field public static final GESTURE_TYPE_SCROLL:I = 0x0

.field public static final GESTURE_TYPE_SHOVE:I = 0x3

.field public static final GESTURE_TYPE_SHOW_PRESS:I = 0x8

.field public static final GESTURE_TYPE_SIDEWAYS_SHOVE:I = 0xe

.field public static final GESTURE_TYPE_SINGLE_TAP_CONFIRMED:I = 0xc

.field public static final GESTURE_TYPE_SINGLE_TAP_UP:I = 0x5


# instance fields
.field private final detectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/android/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private final moveGestureDetector:Lcom/mapbox/android/b/d;

.field private final multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

.field private final mutuallyExclusiveGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rotateGestureDetector:Lcom/mapbox/android/b/l;

.field private final shoveGestureDetector:Lcom/mapbox/android/b/m;

.field private final sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

.field private final standardGestureDetector:Lcom/mapbox/android/b/o;

.field private final standardScaleGestureDetector:Lcom/mapbox/android/b/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/mapbox/android/b/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;Z)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/b/a;->mutuallyExclusiveGestures:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/mapbox/android/b/a;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance p2, Lcom/mapbox/android/b/l;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/l;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->rotateGestureDetector:Lcom/mapbox/android/b/l;

    .line 124
    new-instance p2, Lcom/mapbox/android/b/p;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/p;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->standardScaleGestureDetector:Lcom/mapbox/android/b/p;

    .line 125
    new-instance p2, Lcom/mapbox/android/b/m;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/m;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->shoveGestureDetector:Lcom/mapbox/android/b/m;

    .line 126
    new-instance p2, Lcom/mapbox/android/b/n;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/n;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

    .line 127
    new-instance p2, Lcom/mapbox/android/b/g;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/g;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

    .line 128
    new-instance p2, Lcom/mapbox/android/b/d;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/d;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->moveGestureDetector:Lcom/mapbox/android/b/d;

    .line 129
    new-instance p2, Lcom/mapbox/android/b/o;

    invoke-direct {p2, p1, p0}, Lcom/mapbox/android/b/o;-><init>(Landroid/content/Context;Lcom/mapbox/android/b/a;)V

    iput-object p2, p0, Lcom/mapbox/android/b/a;->standardGestureDetector:Lcom/mapbox/android/b/o;

    .line 131
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->rotateGestureDetector:Lcom/mapbox/android/b/l;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->standardScaleGestureDetector:Lcom/mapbox/android/b/p;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->shoveGestureDetector:Lcom/mapbox/android/b/m;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->moveGestureDetector:Lcom/mapbox/android/b/d;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    iget-object p2, p0, Lcom/mapbox/android/b/a;->standardGestureDetector:Lcom/mapbox/android/b/o;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/mapbox/android/b/a;->initDefaultThresholds()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/android/b/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 104
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mapbox/android/b/a;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method private initDefaultThresholds()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/android/b/b;

    .line 146
    instance-of v2, v1, Lcom/mapbox/android/b/f;

    if-eqz v2, :cond_2

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    .line 148
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/f;

    sget v3, Lcom/mapbox/android/b/k$a;->mapbox_internalMinSpan23:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/f;->setSpanThresholdResource(I)V

    goto :goto_1

    .line 150
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/f;

    sget v3, Lcom/mapbox/android/b/k$a;->mapbox_internalMinSpan24:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/f;->setSpanThresholdResource(I)V

    .line 154
    :cond_2
    :goto_1
    instance-of v2, v1, Lcom/mapbox/android/b/p;

    if-eqz v2, :cond_3

    .line 155
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/p;

    sget v3, Lcom/mapbox/android/b/k$a;->mapbox_defaultScaleSpanSinceStartThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/p;->setSpanSinceStartThresholdResource(I)V

    .line 159
    :cond_3
    instance-of v2, v1, Lcom/mapbox/android/b/m;

    const/high16 v3, 0x41a00000    # 20.0f

    if-eqz v2, :cond_4

    .line 160
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/m;

    sget v4, Lcom/mapbox/android/b/k$a;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/b/m;->setPixelDeltaThresholdResource(I)V

    .line 161
    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/m;->setMaxShoveAngle(F)V

    .line 164
    :cond_4
    instance-of v2, v1, Lcom/mapbox/android/b/n;

    if-eqz v2, :cond_5

    .line 165
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/n;

    sget v4, Lcom/mapbox/android/b/k$a;->mapbox_defaultShovePixelThreshold:I

    invoke-virtual {v2, v4}, Lcom/mapbox/android/b/n;->setPixelDeltaThresholdResource(I)V

    .line 167
    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/n;->setMaxShoveAngle(F)V

    .line 170
    :cond_5
    instance-of v2, v1, Lcom/mapbox/android/b/g;

    if-eqz v2, :cond_6

    .line 171
    move-object v2, v1

    check-cast v2, Lcom/mapbox/android/b/g;

    sget v3, Lcom/mapbox/android/b/k$a;->mapbox_defaultMultiTapMovementThreshold:I

    invoke-virtual {v2, v3}, Lcom/mapbox/android/b/g;->setMultiFingerTapMovementThresholdResource(I)V

    const-wide/16 v3, 0x96

    .line 174
    invoke-virtual {v2, v3, v4}, Lcom/mapbox/android/b/g;->setMultiFingerTapTimeThreshold(J)V

    .line 178
    :cond_6
    instance-of v2, v1, Lcom/mapbox/android/b/l;

    if-eqz v2, :cond_0

    .line 179
    check-cast v1, Lcom/mapbox/android/b/l;

    const v2, 0x4174cccd    # 15.3f

    invoke-virtual {v1, v2}, Lcom/mapbox/android/b/l;->setAngleThreshold(F)V

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public getDetectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mapbox/android/b/b;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    return-object v0
.end method

.method public getMoveGestureDetector()Lcom/mapbox/android/b/d;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/mapbox/android/b/a;->moveGestureDetector:Lcom/mapbox/android/b/d;

    return-object v0
.end method

.method public getMultiFingerTapGestureDetector()Lcom/mapbox/android/b/g;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/mapbox/android/b/a;->multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

    return-object v0
.end method

.method public getMutuallyExclusiveGestures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/mapbox/android/b/a;->mutuallyExclusiveGestures:Ljava/util/List;

    return-object v0
.end method

.method public getRotateGestureDetector()Lcom/mapbox/android/b/l;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/mapbox/android/b/a;->rotateGestureDetector:Lcom/mapbox/android/b/l;

    return-object v0
.end method

.method public getShoveGestureDetector()Lcom/mapbox/android/b/m;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/mapbox/android/b/a;->shoveGestureDetector:Lcom/mapbox/android/b/m;

    return-object v0
.end method

.method public getSidewaysShoveGestureDetector()Lcom/mapbox/android/b/n;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/mapbox/android/b/a;->sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

    return-object v0
.end method

.method public getStandardGestureDetector()Lcom/mapbox/android/b/o;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardGestureDetector:Lcom/mapbox/android/b/o;

    return-object v0
.end method

.method public getStandardScaleGestureDetector()Lcom/mapbox/android/b/p;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardScaleGestureDetector:Lcom/mapbox/android/b/p;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/mapbox/android/b/a;->detectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/android/b/b;

    .line 1037
    invoke-virtual {v2, p1}, Lcom/mapbox/android/b/b;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public removeMoveGestureListener()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/mapbox/android/b/a;->moveGestureDetector:Lcom/mapbox/android/b/d;

    invoke-virtual {v0}, Lcom/mapbox/android/b/d;->a()V

    return-void
.end method

.method public removeMultiFingerTapGestureListener()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/mapbox/android/b/a;->multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

    invoke-virtual {v0}, Lcom/mapbox/android/b/g;->a()V

    return-void
.end method

.method public removeRotateGestureListener()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/mapbox/android/b/a;->rotateGestureDetector:Lcom/mapbox/android/b/l;

    invoke-virtual {v0}, Lcom/mapbox/android/b/l;->a()V

    return-void
.end method

.method public removeShoveGestureListener()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/mapbox/android/b/a;->shoveGestureDetector:Lcom/mapbox/android/b/m;

    invoke-virtual {v0}, Lcom/mapbox/android/b/m;->a()V

    return-void
.end method

.method public removeSidewaysShoveGestureListener()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/mapbox/android/b/a;->sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

    invoke-virtual {v0}, Lcom/mapbox/android/b/n;->a()V

    return-void
.end method

.method public removeStandardGestureListener()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardGestureDetector:Lcom/mapbox/android/b/o;

    invoke-virtual {v0}, Lcom/mapbox/android/b/o;->a()V

    return-void
.end method

.method public removeStandardScaleGestureListener()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardScaleGestureDetector:Lcom/mapbox/android/b/p;

    invoke-virtual {v0}, Lcom/mapbox/android/b/p;->a()V

    return-void
.end method

.method public setMoveGestureListener(Lcom/mapbox/android/b/d$a;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/mapbox/android/b/a;->moveGestureDetector:Lcom/mapbox/android/b/d;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiFingerTapGestureListener(Lcom/mapbox/android/b/g$a;)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/mapbox/android/b/a;->multiFingerTapGestureDetector:Lcom/mapbox/android/b/g;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setMutuallyExclusiveGestures(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/mapbox/android/b/a;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    iget-object v0, p0, Lcom/mapbox/android/b/a;->mutuallyExclusiveGestures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final varargs setMutuallyExclusiveGestures([Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 408
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/android/b/a;->setMutuallyExclusiveGestures(Ljava/util/List;)V

    return-void
.end method

.method public setRotateGestureListener(Lcom/mapbox/android/b/l$a;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/mapbox/android/b/a;->rotateGestureDetector:Lcom/mapbox/android/b/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/l;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setShoveGestureListener(Lcom/mapbox/android/b/m$a;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/mapbox/android/b/a;->shoveGestureDetector:Lcom/mapbox/android/b/m;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/m;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setSidewaysShoveGestureListener(Lcom/mapbox/android/b/n$a;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/mapbox/android/b/a;->sidewaysShoveGestureDetector:Lcom/mapbox/android/b/n;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardGestureListener(Lcom/mapbox/android/b/o$b;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardGestureDetector:Lcom/mapbox/android/b/o;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/o;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setStandardScaleGestureListener(Lcom/mapbox/android/b/p$b;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/mapbox/android/b/a;->standardScaleGestureDetector:Lcom/mapbox/android/b/p;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/b/p;->a(Ljava/lang/Object;)V

    return-void
.end method
