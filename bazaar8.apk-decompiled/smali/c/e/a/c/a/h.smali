.class public Lc/e/a/c/a/h;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# instance fields
.field public final a:Lb/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/i<",
            "Ljava/lang/String;",
            "Lc/e/a/c/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/f/i;

    invoke-direct {v0}, Lb/f/i;-><init>()V

    iput-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lc/e/a/c/a/h;
    .locals 3

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    .line 12
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 13
    check-cast p0, Landroid/animation/AnimatorSet;

    .line 14
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/c/a/h;->a(Ljava/util/List;)Lc/e/a/c/a/h;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v1}, Lc/e/a/c/a/h;->a(Ljava/util/List;)Lc/e/a/c/a/h;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load animation resource ID #0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MotionSpec"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lc/e/a/c/a/h;
    .locals 1

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p0, p1}, Lc/e/a/c/a/h;->a(Landroid/content/Context;I)Lc/e/a/c/a/h;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Lc/e/a/c/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)",
            "Lc/e/a/c/a/h;"
        }
    .end annotation

    .line 19
    new-instance v0, Lc/e/a/c/a/h;

    invoke-direct {v0}, Lc/e/a/c/a/h;-><init>()V

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v0, v3}, Lc/e/a/c/a/h;->a(Lc/e/a/c/a/h;Landroid/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Lc/e/a/c/a/h;Landroid/animation/Animator;)V
    .locals 2

    .line 22
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 24
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lc/e/a/c/a/i;->a(Landroid/animation/ValueAnimator;)Lc/e/a/c/a/i;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/e/a/c/a/h;->a(Ljava/lang/String;Lc/e/a/c/a/i;)V

    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator must be an ObjectAnimator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()J
    .locals 9

    .line 5
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0}, Lb/f/i;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 6
    iget-object v4, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v4, v3}, Lb/f/i;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/e/a/c/a/i;

    .line 7
    invoke-virtual {v4}, Lc/e/a/c/a/i;->a()J

    move-result-wide v5

    invoke-virtual {v4}, Lc/e/a/c/a/i;->b()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public a(Ljava/lang/String;)Lc/e/a/c/a/i;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lc/e/a/c/a/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/e/a/c/a/i;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;Lc/e/a/c/a/i;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0, p1, p2}, Lb/f/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0, p1}, Lb/f/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lc/e/a/c/a/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lc/e/a/c/a/h;

    .line 3
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    iget-object p1, p1, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0, p1}, Lb/f/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0}, Lb/f/i;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    const-class v1, Lc/e/a/c/a/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timings: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lc/e/a/c/a/h;->a:Lb/f/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
