.class public Lb/w/r;
.super Lb/w/o;
.source "NavGraph.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/w/o;",
        "Ljava/lang/Iterable<",
        "Lb/w/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Lb/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/j<",
            "Lb/w/o;",
            ">;"
        }
    .end annotation
.end field

.field public k:I

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/w/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w/K<",
            "+",
            "Lb/w/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/w/o;-><init>(Lb/w/K;)V

    .line 2
    new-instance p1, Lb/f/j;

    invoke-direct {p1}, Lb/f/j;-><init>()V

    iput-object p1, p0, Lb/w/r;->j:Lb/f/j;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lb/w/o$a;
    .locals 4

    .line 8
    invoke-super {p0, p1}, Lb/w/o;->a(Landroid/net/Uri;)Lb/w/o$a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lb/w/r;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/w/o;

    .line 10
    invoke-virtual {v2, p1}, Lb/w/o;->a(Landroid/net/Uri;)Lb/w/o$a;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v2, v0}, Lb/w/o$a;->a(Lb/w/o$a;)I

    move-result v3

    if-lez v3, :cond_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(IZ)Lb/w/o;
    .locals 1

    .line 20
    iget-object v0, p0, Lb/w/r;->j:Lb/f/j;

    invoke-virtual {v0, p1}, Lb/f/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    invoke-virtual {p0}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/w/r;->f(I)Lb/w/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lb/w/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lb/w/a/a;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget v0, Lb/w/a/a;->NavGraphNavigator_startDestination:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lb/w/r;->g(I)V

    .line 6
    iget v0, p0, Lb/w/r;->k:I

    invoke-static {p1, v0}, Lb/w/o;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/w/r;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Lb/w/o;)V
    .locals 2

    .line 12
    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lb/w/r;->j:Lb/f/j;

    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/f/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/w/o;

    if-ne v0, p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lb/w/o;->getParent()Lb/w/r;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lb/w/o;->a(Lb/w/r;)V

    .line 16
    :cond_1
    invoke-virtual {p1, p0}, Lb/w/o;->a(Lb/w/r;)V

    .line 17
    iget-object v0, p0, Lb/w/r;->j:Lb/f/j;

    invoke-virtual {p1}, Lb/w/o;->d()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lb/f/j;->c(ILjava/lang/Object;)V

    return-void

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Destinations must have an id. Call setId() or include an android:id in your navigation XML."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/w/o;->d()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lb/w/o;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "the root navigation"

    :goto_0
    return-object v0
.end method

.method public final f(I)Lb/w/o;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lb/w/r;->a(IZ)Lb/w/o;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lb/w/r;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lb/w/r;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/w/r;->l:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/w/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/w/r;->k:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb/w/r;->l:Ljava/lang/String;

    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lb/w/r;->k:I

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lb/w/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/w/q;

    invoke-direct {v0, p0}, Lb/w/q;-><init>(Lb/w/r;)V

    return-object v0
.end method
