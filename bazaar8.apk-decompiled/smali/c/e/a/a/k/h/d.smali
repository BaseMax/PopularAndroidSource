.class public final Lc/e/a/a/k/h/d;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:F

.field public p:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lc/e/a/a/k/h/d;->l()V

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 12
    iget-boolean v0, p0, Lc/e/a/a/k/h/d;->i:Z

    if-eqz v0, :cond_0

    .line 13
    iget v0, p0, Lc/e/a/a/k/h/d;->h:I

    return v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lc/e/a/a/k/h/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/k/h/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/k/h/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/a/a/k/h/d;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lc/e/a/a/k/h/d;->a:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lc/e/a/a/k/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 6
    iget-object v0, p0, Lc/e/a/a/k/h/d;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lc/e/a/a/k/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object p2, p0, Lc/e/a/a/k/h/d;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lc/e/a/a/k/h/d;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 8
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lc/e/a/a/k/h/d;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lc/e/a/a/k/h/d;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public a(I)Lc/e/a/a/k/h/d;
    .locals 0

    .line 15
    iput p1, p0, Lc/e/a/a/k/h/d;->h:I

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lc/e/a/a/k/h/d;->i:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/e/a/a/k/h/d;
    .locals 0

    .line 11
    invoke-static {p1}, Lc/e/a/a/o/I;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/k/h/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lc/e/a/a/k/h/d;
    .locals 0

    .line 10
    iput p1, p0, Lc/e/a/a/k/h/d;->l:I

    return-object p0
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/k/h/d;->c:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 2

    .line 3
    iget-boolean v0, p0, Lc/e/a/a/k/h/d;->g:Z

    if-eqz v0, :cond_0

    .line 4
    iget v0, p0, Lc/e/a/a/k/h/d;->f:I

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Lc/e/a/a/k/h/d;
    .locals 0

    .line 6
    iput p1, p0, Lc/e/a/a/k/h/d;->f:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lc/e/a/a/k/h/d;->g:Z

    return-object p0
.end method

.method public b(Z)Lc/e/a/a/k/h/d;
    .locals 0

    .line 2
    iput p1, p0, Lc/e/a/a/k/h/d;->m:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/k/h/d;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)Lc/e/a/a/k/h/d;
    .locals 0

    .line 2
    iput p1, p0, Lc/e/a/a/k/h/d;->k:I

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/a/k/h/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/k/h/d;->b:Ljava/lang/String;

    return-void
.end method

.method public d()F
    .locals 1

    .line 2
    iget v0, p0, Lc/e/a/a/k/h/d;->o:F

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/k/h/d;->d:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/d;->n:I

    return v0
.end method

.method public f()I
    .locals 4

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/d;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lc/e/a/a/k/h/d;->m:I

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lc/e/a/a/k/h/d;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lc/e/a/a/k/h/d;->m:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public g()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/h/d;->p:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/k/h/d;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/e/a/a/k/h/d;->g:Z

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/d;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/e/a/a/k/h/d;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lc/e/a/a/k/h/d;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lc/e/a/a/k/h/d;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc/e/a/a/k/h/d;->c:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lc/e/a/a/k/h/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc/e/a/a/k/h/d;->e:Ljava/lang/String;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lc/e/a/a/k/h/d;->g:Z

    .line 7
    iput-boolean v1, p0, Lc/e/a/a/k/h/d;->i:Z

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lc/e/a/a/k/h/d;->j:I

    .line 9
    iput v1, p0, Lc/e/a/a/k/h/d;->k:I

    .line 10
    iput v1, p0, Lc/e/a/a/k/h/d;->l:I

    .line 11
    iput v1, p0, Lc/e/a/a/k/h/d;->m:I

    .line 12
    iput v1, p0, Lc/e/a/a/k/h/d;->n:I

    .line 13
    iput-object v0, p0, Lc/e/a/a/k/h/d;->p:Landroid/text/Layout$Alignment;

    return-void
.end method
