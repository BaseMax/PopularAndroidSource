.class public final Lc/c/a/n/j/k/a;
.super Lc/c/a/n/c/d/a/g;
.source "PlayFloatingButtonScrollListener.kt"


# instance fields
.field public g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "floatingButton"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/n/c/d/a/g;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->b()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lc/c/a/n/j/k/a;->h:I

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/n/j/k/a;->g:Z

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/j/k/a;->h:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lc/c/a/n/c/d/a/g;->c()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lc/c/a/n/j/k/a;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
