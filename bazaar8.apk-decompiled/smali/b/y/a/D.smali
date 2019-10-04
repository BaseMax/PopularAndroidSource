.class public abstract Lb/y/a/D;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$i;

.field public b:I

.field public final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lb/y/a/D;->b:I

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/y/a/D;->c:Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, Lb/y/a/D;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;Lb/y/a/B;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/y/a/D;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;)Lb/y/a/D;
    .locals 1

    .line 4
    new-instance v0, Lb/y/a/B;

    invoke-direct {v0, p0}, Lb/y/a/B;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;I)Lb/y/a/D;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {p0}, Lb/y/a/D;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Lb/y/a/D;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    invoke-static {p0}, Lb/y/a/D;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Lb/y/a/D;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$i;)Lb/y/a/D;
    .locals 1

    .line 1
    new-instance v0, Lb/y/a/C;

    invoke-direct {v0, p0}, Lb/y/a/C;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g()I
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lb/y/a/D;->b:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/y/a/D;->g()I

    move-result v0

    iget v1, p0, Lb/y/a/D;->b:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/y/a/D;->g()I

    move-result v0

    iput v0, p0, Lb/y/a/D;->b:I

    return-void
.end method
