.class public Lc/c/a/d/h/b/x;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/h/b/x$a;,
        Lc/c/a/d/h/b/x$b;
    }
.end annotation


# instance fields
.field public a:Lc/c/a/d/h/b/w;

.field public b:Landroid/view/animation/Interpolator;

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/c/a/d/h/b/x$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/d/h/b/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/c/a/d/h/b/x;->c:I

    const-wide/16 v0, 0x7d0

    .line 3
    iput-wide v0, p0, Lc/c/a/d/h/b/x;->d:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc/c/a/d/h/b/x;->e:I

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/d/h/b/x;->f:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lc/c/a/d/h/b/x;->a:Lc/c/a/d/h/b/w;

    return-void
.end method


# virtual methods
.method public a()Landroid/animation/ObjectAnimator;
    .locals 12

    .line 12
    iget-object v0, p0, Lc/c/a/d/h/b/x;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    .line 13
    iget-object v1, p0, Lc/c/a/d/h/b/x;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/d/h/b/x$b;

    .line 15
    iget-object v4, v3, Lc/c/a/d/h/b/x$b;->a:[F

    array-length v5, v4

    new-array v5, v5, [Landroid/animation/Keyframe;

    .line 16
    iget v6, p0, Lc/c/a/d/h/b/x;->e:I

    aget v7, v4, v6

    .line 17
    :goto_1
    iget v8, p0, Lc/c/a/d/h/b/x;->e:I

    iget-object v9, v3, Lc/c/a/d/h/b/x$b;->c:[Ljava/lang/Object;

    array-length v10, v9

    add-int/2addr v10, v8

    if-ge v6, v10, :cond_2

    sub-int v8, v6, v8

    .line 18
    array-length v9, v9

    rem-int v9, v6, v9

    .line 19
    aget v10, v4, v9

    sub-float/2addr v10, v7

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_0

    .line 20
    array-length v11, v4

    add-int/lit8 v11, v11, -0x1

    aget v11, v4, v11

    add-float/2addr v10, v11

    .line 21
    :cond_0
    instance-of v11, v3, Lc/c/a/d/h/b/x$a;

    if-eqz v11, :cond_1

    .line 22
    iget-object v11, v3, Lc/c/a/d/h/b/x$b;->c:[Ljava/lang/Object;

    aget-object v9, v11, v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v5, v8

    goto :goto_2

    .line 23
    :cond_1
    iget-object v11, v3, Lc/c/a/d/h/b/x$b;->c:[Ljava/lang/Object;

    aget-object v9, v11, v9

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    move-result-object v9

    aput-object v9, v5, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24
    :cond_2
    iget-object v3, v3, Lc/c/a/d/h/b/x$b;->b:Landroid/util/Property;

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, p0, Lc/c/a/d/h/b/x;->a:Lc/c/a/d/h/b/w;

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 26
    iget-wide v1, p0, Lc/c/a/d/h/b/x;->d:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    iget v1, p0, Lc/c/a/d/h/b/x;->c:I

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 28
    iget-object v1, p0, Lc/c/a/d/h/b/x;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public a(J)Lc/c/a/d/h/b/x;
    .locals 0

    .line 11
    iput-wide p1, p0, Lc/c/a/d/h/b/x;->d:J

    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lc/c/a/d/h/b/x;
    .locals 0

    .line 9
    iput-object p1, p0, Lc/c/a/d/h/b/x;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public varargs a([F)Lc/c/a/d/h/b/x;
    .locals 0

    .line 10
    invoke-static {p1}, Lc/c/a/d/h/b/f;->a([F)Lc/c/a/d/h/b/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/d/h/b/x;->a(Landroid/view/animation/Interpolator;)Lc/c/a/d/h/b/x;

    return-object p0
.end method

.method public varargs a([F[Ljava/lang/Float;)Lc/c/a/d/h/b/x;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/d/h/b/w;->k:Landroid/util/Property;

    invoke-virtual {p0, p1, v0, p2}, Lc/c/a/d/h/b/x;->a([FLandroid/util/Property;[Ljava/lang/Float;)V

    return-object p0
.end method

.method public final a(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]"

    .line 8
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a([FLandroid/util/Property;[Ljava/lang/Float;)V
    .locals 3

    .line 2
    array-length v0, p1

    array-length v1, p3

    invoke-virtual {p0, v0, v1}, Lc/c/a/d/h/b/x;->a(II)V

    .line 3
    iget-object v0, p0, Lc/c/a/d/h/b/x;->f:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/c/a/d/h/b/x$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lc/c/a/d/h/b/x$a;-><init>(Lc/c/a/d/h/b/x;[FLandroid/util/Property;[Ljava/lang/Float;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
