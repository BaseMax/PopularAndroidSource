.class public final Lcom/github/ybq/android/spinkit/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/a/d$a;,
        Lcom/github/ybq/android/spinkit/a/d$c;,
        Lcom/github/ybq/android/spinkit/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/github/ybq/android/spinkit/b/f;

.field private b:Landroid/view/animation/Interpolator;

.field private c:I

.field private d:J

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/ybq/android/spinkit/a/d$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/ybq/android/spinkit/b/f;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/github/ybq/android/spinkit/a/d;->c:I

    const-wide/16 v0, 0x7d0

    .line 27
    iput-wide v0, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/a/d;->a:Lcom/github/ybq/android/spinkit/b/f;

    return-void
.end method

.method private static a(II)V
    .locals 4

    if-ne p0, p1, :cond_0

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    .line 135
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a([FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 3

    .line 123
    array-length v0, p1

    array-length v1, p3

    invoke-static {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a(II)V

    .line 124
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/ybq/android/spinkit/a/d$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/d$a;-><init>(Lcom/github/ybq/android/spinkit/a/d;[FLandroid/util/Property;[Ljava/lang/Float;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a([FLandroid/util/Property;[Ljava/lang/Integer;)V
    .locals 3

    .line 129
    array-length v0, p1

    array-length v1, p3

    invoke-static {v0, v1}, Lcom/github/ybq/android/spinkit/a/d;->a(II)V

    .line 130
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/github/ybq/android/spinkit/a/d$c;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/a/d$c;-><init>(Lcom/github/ybq/android/spinkit/a/d;[FLandroid/util/Property;[Ljava/lang/Integer;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs alpha([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 68
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->ALPHA:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final build()Landroid/animation/ObjectAnimator;
    .locals 12

    .line 180
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 182
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/ybq/android/spinkit/a/d$b;

    .line 184
    iget-object v4, v3, Lcom/github/ybq/android/spinkit/a/d$b;->b:[F

    array-length v4, v4

    new-array v4, v4, [Landroid/animation/Keyframe;

    .line 185
    iget-object v5, v3, Lcom/github/ybq/android/spinkit/a/d$b;->b:[F

    .line 186
    iget v6, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    aget v7, v5, v6

    .line 187
    :goto_1
    iget v8, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    iget-object v9, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    array-length v9, v9

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_3

    .line 188
    iget v8, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    sub-int v8, v6, v8

    .line 189
    iget-object v9, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    array-length v9, v9

    rem-int v9, v6, v9

    .line 190
    aget v10, v5, v9

    sub-float/2addr v10, v7

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_0

    .line 192
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    aget v11, v5, v11

    add-float/2addr v10, v11

    .line 194
    :cond_0
    instance-of v11, v3, Lcom/github/ybq/android/spinkit/a/d$c;

    if-eqz v11, :cond_1

    .line 195
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    goto :goto_2

    .line 196
    :cond_1
    instance-of v11, v3, Lcom/github/ybq/android/spinkit/a/d$a;

    if-eqz v11, :cond_2

    .line 197
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    goto :goto_2

    .line 199
    :cond_2
    iget-object v11, v3, Lcom/github/ybq/android/spinkit/a/d$b;->d:[Ljava/lang/Object;

    aget-object v9, v11, v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v4, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 202
    :cond_3
    iget-object v3, v3, Lcom/github/ybq/android/spinkit/a/d$b;->c:Landroid/util/Property;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_4
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->a:Lcom/github/ybq/android/spinkit/b/f;

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 208
    iget-wide v1, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 209
    iget v1, p0, Lcom/github/ybq/android/spinkit/a/d;->c:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 210
    iget-object v1, p0, Lcom/github/ybq/android/spinkit/a/d;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public final duration(J)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 159
    iput-wide p1, p0, Lcom/github/ybq/android/spinkit/a/d;->d:J

    return-object p0
.end method

.method public final varargs easeInOut([F)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 151
    invoke-static {p1}, Lcom/github/ybq/android/spinkit/a/a/b;->easeInOut([F)Lcom/github/ybq/android/spinkit/a/a/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/a/d;->interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;

    return-object p0
.end method

.method public final interpolator(Landroid/view/animation/Interpolator;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/a/d;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public final repeatCount(I)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    .line 165
    iput p1, p0, Lcom/github/ybq/android/spinkit/a/d;->c:I

    return-object p0
.end method

.method public final varargs rotate([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 108
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->ROTATE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final varargs rotateX([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 84
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->ROTATE_X:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final varargs rotateY([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 89
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->ROTATE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final varargs scale([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 63
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->SCALE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public final varargs scaleX([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 74
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->SCALE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public final varargs scaleY([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 79
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->SCALE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public final startFrame(I)Lcom/github/ybq/android/spinkit/a/d;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 174
    :cond_0
    iput p1, p0, Lcom/github/ybq/android/spinkit/a/d;->e:I

    return-object p0
.end method

.method public final varargs translateX([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 95
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->TRANSLATE_X:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final varargs translateXPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 113
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public final varargs translateY([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 102
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->TRANSLATE_Y:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Integer;)V

    return-object p0
.end method

.method public final varargs translateYPercentage([F[Ljava/lang/Float;)Lcom/github/ybq/android/spinkit/a/d;
    .locals 1

    .line 118
    sget-object v0, Lcom/github/ybq/android/spinkit/b/f;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ybq/android/spinkit/a/d;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method
