.class public abstract Lb/b/f/a/b;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lb/b/f/a/t;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Lb/b/f/a/k;

.field public d:Landroid/view/LayoutInflater;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lb/b/f/a/t$a;

.field public g:I

.field public h:I

.field public i:Lb/b/f/a/u;

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/b/f/a/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/b;->d:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Lb/b/f/a/b;->g:I

    .line 5
    iput p3, p0, Lb/b/f/a/b;->h:I

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 26
    instance-of v0, p2, Lb/b/f/a/u$a;

    if-eqz v0, :cond_0

    .line 27
    check-cast p2, Lb/b/f/a/u$a;

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p3}, Lb/b/f/a/b;->a(Landroid/view/ViewGroup;)Lb/b/f/a/u$a;

    move-result-object p2

    .line 29
    :goto_0
    invoke-virtual {p0, p1, p2}, Lb/b/f/a/b;->a(Lb/b/f/a/o;Lb/b/f/a/u$a;)V

    .line 30
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public a(Landroid/view/ViewGroup;)Lb/b/f/a/u$a;
    .locals 3

    .line 25
    iget-object v0, p0, Lb/b/f/a/b;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lb/b/f/a/b;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lb/b/f/a/u$a;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 35
    iput p1, p0, Lb/b/f/a/b;->j:I

    return-void
.end method

.method public a(Landroid/content/Context;Lb/b/f/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/a/b;->b:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Lb/b/f/a/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/f/a/b;->e:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lb/b/f/a/k;Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lb/b/f/a/b;->f:Lb/b/f/a/t$a;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;Z)V

    :cond_0
    return-void
.end method

.method public abstract a(Lb/b/f/a/o;Lb/b/f/a/u$a;)V
.end method

.method public a(Lb/b/f/a/t$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lb/b/f/a/b;->f:Lb/b/f/a/t$a;

    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 4
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6
    invoke-virtual {v0}, Lb/b/f/a/k;->b()V

    .line 7
    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    invoke-virtual {v0}, Lb/b/f/a/k;->n()Ljava/util/ArrayList;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/b/f/a/o;

    .line 10
    invoke-virtual {p0, v4, v5}, Lb/b/f/a/b;->a(ILb/b/f/a/o;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 12
    instance-of v7, v6, Lb/b/f/a/u$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lb/b/f/a/u$a;

    .line 13
    invoke-interface {v7}, Lb/b/f/a/u$a;->getItemData()Lb/b/f/a/o;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 14
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Lb/b/f/a/b;->a(Lb/b/f/a/o;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    .line 15
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 16
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_3

    .line 17
    invoke-virtual {p0, v8, v4}, Lb/b/f/a/b;->a(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    .line 18
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 19
    invoke-virtual {p0, p1, v1}, Lb/b/f/a/b;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public abstract a(ILb/b/f/a/o;)Z
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lb/b/f/a/A;)Z
    .locals 1

    .line 33
    iget-object v0, p0, Lb/b/f/a/b;->f:Lb/b/f/a/t$a;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1}, Lb/b/f/a/t$a;->a(Lb/b/f/a/k;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/ViewGroup;)Lb/b/f/a/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/b/f/a/b;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lb/b/f/a/b;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lb/b/f/a/u;

    iput-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    .line 3
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    iget-object v0, p0, Lb/b/f/a/b;->c:Lb/b/f/a/k;

    invoke-interface {p1, v0}, Lb/b/f/a/u;->a(Lb/b/f/a/k;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lb/b/f/a/b;->a(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lb/b/f/a/b;->i:Lb/b/f/a/u;

    return-object p1
.end method

.method public b(Lb/b/f/a/k;Lb/b/f/a/o;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Lb/b/f/a/t$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/b;->f:Lb/b/f/a/t$a;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lb/b/f/a/b;->j:I

    return v0
.end method
