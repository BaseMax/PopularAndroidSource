.class public Lb/b/f/h;
.super Lb/i/k/K;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lb/b/f/i;


# direct methods
.method public constructor <init>(Lb/b/f/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/h;->c:Lb/b/f/i;

    invoke-direct {p0}, Lb/i/k/K;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb/b/f/h;->a:Z

    .line 3
    iput p1, p0, Lb/b/f/h;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/b/f/h;->b:I

    .line 2
    iput-boolean v0, p0, Lb/b/f/h;->a:Z

    .line 3
    iget-object v0, p0, Lb/b/f/h;->c:Lb/b/f/i;

    invoke-virtual {v0}, Lb/b/f/i;->b()V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lb/b/f/h;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/f/h;->b:I

    iget-object v0, p0, Lb/b/f/h;->c:Lb/b/f/i;

    iget-object v0, v0, Lb/b/f/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lb/b/f/h;->c:Lb/b/f/i;

    iget-object p1, p1, Lb/b/f/i;->d:Lb/i/k/J;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lb/i/k/J;->b(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/b/f/h;->a()V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lb/b/f/h;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lb/b/f/h;->a:Z

    .line 3
    iget-object p1, p0, Lb/b/f/h;->c:Lb/b/f/i;

    iget-object p1, p1, Lb/b/f/i;->d:Lb/i/k/J;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lb/i/k/J;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method