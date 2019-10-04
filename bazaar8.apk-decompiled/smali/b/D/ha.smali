.class public abstract Lb/D/ha;
.super Lb/D/E;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/D/ha$a;,
        Lb/D/ha$b;
    }
.end annotation


# static fields
.field public static final K:[Ljava/lang/String;


# instance fields
.field public L:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Lb/D/ha;->K:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/D/E;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lb/D/ha;->L:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;Landroid/view/View;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;
.end method

.method public a(Landroid/view/ViewGroup;Lb/D/M;ILb/D/M;I)Landroid/animation/Animator;
    .locals 2

    .line 9
    iget p3, p0, Lb/D/ha;->L:I

    const/4 p5, 0x1

    and-int/2addr p3, p5

    const/4 v0, 0x0

    if-ne p3, p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 10
    iget-object p3, p4, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    const/4 p5, 0x0

    .line 11
    invoke-virtual {p0, p3, p5}, Lb/D/E;->b(Landroid/view/View;Z)Lb/D/M;

    move-result-object v1

    .line 12
    invoke-virtual {p0, p3, p5}, Lb/D/E;->c(Landroid/view/View;Z)Lb/D/M;

    move-result-object p3

    .line 13
    invoke-virtual {p0, v1, p3}, Lb/D/ha;->b(Lb/D/M;Lb/D/M;)Lb/D/ha$b;

    move-result-object p3

    .line 14
    iget-boolean p3, p3, Lb/D/ha$b;->a:Z

    if-eqz p3, :cond_1

    return-object v0

    .line 15
    :cond_1
    iget-object p3, p4, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p3, p2, p4}, Lb/D/ha;->a(Landroid/view/ViewGroup;Landroid/view/View;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;
    .locals 8

    .line 4
    invoke-virtual {p0, p2, p3}, Lb/D/ha;->b(Lb/D/M;Lb/D/M;)Lb/D/ha$b;

    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lb/D/ha$b;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lb/D/ha$b;->e:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lb/D/ha$b;->f:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 6
    :cond_0
    iget-boolean v1, v0, Lb/D/ha$b;->b:Z

    if-eqz v1, :cond_1

    .line 7
    iget v5, v0, Lb/D/ha$b;->c:I

    iget v7, v0, Lb/D/ha$b;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lb/D/ha;->a(Landroid/view/ViewGroup;Lb/D/M;ILb/D/M;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget v3, v0, Lb/D/ha$b;->c:I

    iget v5, v0, Lb/D/ha$b;->d:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lb/D/ha;->b(Landroid/view/ViewGroup;Lb/D/M;ILb/D/M;I)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 1
    iput p1, p0, Lb/D/ha;->L:I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/D/M;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lb/D/ha;->d(Lb/D/M;)V

    return-void
.end method

.method public a(Lb/D/M;Lb/D/M;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 16
    iget-object v1, p2, Lb/D/M;->a:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 17
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lb/D/M;->a:Ljava/util/Map;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 19
    :cond_1
    invoke-virtual {p0, p1, p2}, Lb/D/ha;->b(Lb/D/M;Lb/D/M;)Lb/D/ha$b;

    move-result-object p1

    .line 20
    iget-boolean p2, p1, Lb/D/ha$b;->a:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lb/D/ha$b;->c:I

    if-eqz p2, :cond_2

    iget p1, p1, Lb/D/ha$b;->d:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public abstract b(Landroid/view/ViewGroup;Landroid/view/View;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;
.end method

.method public b(Landroid/view/ViewGroup;Lb/D/M;ILb/D/M;I)Landroid/animation/Animator;
    .locals 6

    .line 32
    iget p3, p0, Lb/D/ha;->L:I

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 33
    iget-object p3, p2, Lb/D/M;->b:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p4, :cond_2

    .line 34
    iget-object v2, p4, Lb/D/M;->b:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x4

    if-ne p5, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne p3, v2, :cond_5

    :goto_2
    move-object p3, v1

    goto/16 :goto_6

    .line 36
    :cond_5
    iget-boolean v2, p0, Lb/D/E;->z:Z

    if-eqz v2, :cond_6

    goto :goto_5

    .line 37
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 38
    invoke-static {p1, p3, v2}, Lb/D/L;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    move-object p3, v2

    :goto_4
    move-object v2, v1

    goto :goto_6

    :cond_8
    if-eqz p3, :cond_c

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_5
    goto :goto_4

    .line 40
    :cond_9
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_c

    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 42
    invoke-virtual {p0, v2, v3}, Lb/D/E;->c(Landroid/view/View;Z)Lb/D/M;

    move-result-object v4

    .line 43
    invoke-virtual {p0, v2, v3}, Lb/D/E;->b(Landroid/view/View;Z)Lb/D/M;

    move-result-object v5

    .line 44
    invoke-virtual {p0, v4, v5}, Lb/D/ha;->b(Lb/D/M;Lb/D/M;)Lb/D/ha$b;

    move-result-object v4

    .line 45
    iget-boolean v4, v4, Lb/D/ha$b;->a:Z

    if-nez v4, :cond_a

    .line 46
    invoke-static {p1, p3, v2}, Lb/D/L;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_4

    .line 47
    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_b

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    .line 49
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lb/D/E;->z:Z

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move-object p3, v1

    goto :goto_4

    :cond_c
    move-object p3, v1

    move-object v2, p3

    :goto_6
    const/4 v4, 0x0

    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    .line 50
    iget-object p5, p2, Lb/D/M;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [I

    .line 51
    aget v1, p5, v4

    .line 52
    aget p5, p5, v3

    .line 53
    new-array v0, v0, [I

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 55
    aget v2, v0, v4

    sub-int/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 56
    aget v0, v0, v3

    sub-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p3, p5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 57
    invoke-static {p1}, Lb/D/S;->a(Landroid/view/ViewGroup;)Lb/D/Q;

    move-result-object p5

    .line 58
    invoke-interface {p5, p3}, Lb/D/Q;->a(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0, p1, p3, p2, p4}, Lb/D/ha;->b(Landroid/view/ViewGroup;Landroid/view/View;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_d

    .line 60
    invoke-interface {p5, p3}, Lb/D/Q;->b(Landroid/view/View;)V

    goto :goto_7

    .line 61
    :cond_d
    new-instance p2, Lb/D/ga;

    invoke-direct {p2, p0, p5, p3}, Lb/D/ga;-><init>(Lb/D/ha;Lb/D/Q;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_7
    return-object p1

    :cond_e
    if-eqz v2, :cond_10

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result p3

    .line 63
    invoke-static {v2, v4}, Lb/D/ba;->a(Landroid/view/View;I)V

    .line 64
    invoke-virtual {p0, p1, v2, p2, p4}, Lb/D/ha;->b(Landroid/view/ViewGroup;Landroid/view/View;Lb/D/M;Lb/D/M;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 65
    new-instance p2, Lb/D/ha$a;

    invoke-direct {p2, v2, p5, v3}, Lb/D/ha$a;-><init>(Landroid/view/View;IZ)V

    .line 66
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 67
    invoke-static {p1, p2}, Lb/D/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 68
    invoke-virtual {p0, p2}, Lb/D/E;->a(Lb/D/E$c;)Lb/D/E;

    goto :goto_8

    .line 69
    :cond_f
    invoke-static {v2, p3}, Lb/D/ba;->a(Landroid/view/View;I)V

    :goto_8
    return-object p1

    :cond_10
    return-object v1
.end method

.method public final b(Lb/D/M;Lb/D/M;)Lb/D/ha$b;
    .locals 7

    .line 1
    new-instance v0, Lb/D/ha$b;

    invoke-direct {v0}, Lb/D/ha$b;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lb/D/ha$b;->a:Z

    .line 3
    iput-boolean v1, v0, Lb/D/ha$b;->b:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_0

    .line 4
    iget-object v6, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    iget-object v6, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lb/D/ha$b;->c:I

    .line 6
    iget-object v6, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lb/D/ha$b;->e:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7
    :cond_0
    iput v4, v0, Lb/D/ha$b;->c:I

    .line 8
    iput-object v3, v0, Lb/D/ha$b;->e:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p2, :cond_1

    .line 9
    iget-object v6, p2, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    iget-object v3, p2, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lb/D/ha$b;->d:I

    .line 11
    iget-object v3, p2, Lb/D/M;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lb/D/ha$b;->f:Landroid/view/ViewGroup;

    goto :goto_1

    .line 12
    :cond_1
    iput v4, v0, Lb/D/ha$b;->d:I

    .line 13
    iput-object v3, v0, Lb/D/ha$b;->f:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 14
    iget p1, v0, Lb/D/ha$b;->c:I

    iget p2, v0, Lb/D/ha$b;->d:I

    if-ne p1, p2, :cond_2

    iget-object p1, v0, Lb/D/ha$b;->e:Landroid/view/ViewGroup;

    iget-object p2, v0, Lb/D/ha$b;->f:Landroid/view/ViewGroup;

    if-ne p1, p2, :cond_2

    return-object v0

    .line 15
    :cond_2
    iget p1, v0, Lb/D/ha$b;->c:I

    iget p2, v0, Lb/D/ha$b;->d:I

    if-eq p1, p2, :cond_4

    if-nez p1, :cond_3

    .line 16
    iput-boolean v1, v0, Lb/D/ha$b;->b:Z

    .line 17
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    goto :goto_2

    :cond_3
    if-nez p2, :cond_8

    .line 18
    iput-boolean v2, v0, Lb/D/ha$b;->b:Z

    .line 19
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    goto :goto_2

    .line 20
    :cond_4
    iget-object p1, v0, Lb/D/ha$b;->f:Landroid/view/ViewGroup;

    if-nez p1, :cond_5

    .line 21
    iput-boolean v1, v0, Lb/D/ha$b;->b:Z

    .line 22
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    goto :goto_2

    .line 23
    :cond_5
    iget-object p1, v0, Lb/D/ha$b;->e:Landroid/view/ViewGroup;

    if-nez p1, :cond_8

    .line 24
    iput-boolean v2, v0, Lb/D/ha$b;->b:Z

    .line 25
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    .line 26
    iget p1, v0, Lb/D/ha$b;->d:I

    if-nez p1, :cond_7

    .line 27
    iput-boolean v2, v0, Lb/D/ha$b;->b:Z

    .line 28
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    .line 29
    iget p1, v0, Lb/D/ha$b;->c:I

    if-nez p1, :cond_8

    .line 30
    iput-boolean v1, v0, Lb/D/ha$b;->b:Z

    .line 31
    iput-boolean v2, v0, Lb/D/ha$b;->a:Z

    :cond_8
    :goto_2
    return-object v0
.end method

.method public c(Lb/D/M;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/D/ha;->d(Lb/D/M;)V

    return-void
.end method

.method public final d(Lb/D/M;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2
    iget-object v1, p1, Lb/D/M;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lb/D/M;->a:Ljava/util/Map;

    iget-object v1, p1, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [I

    .line 5
    iget-object v1, p1, Lb/D/M;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    iget-object p1, p1, Lb/D/M;->a:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public r()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lb/D/ha;->K:[Ljava/lang/String;

    return-object v0
.end method
