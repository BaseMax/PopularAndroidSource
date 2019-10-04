.class public Li/a/ta;
.super Li/a/xa;
.source "JobSupport.kt"

# interfaces
.implements Li/a/u;


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Li/a/ra;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Li/a/xa;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Li/a/xa;->a(Li/a/ra;)V

    .line 3
    invoke-virtual {p0}, Li/a/ta;->n()Z

    move-result p1

    iput-boolean p1, p0, Li/a/ta;->b:Z

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/a/ta;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()Z
    .locals 4

    .line 1
    iget-object v0, p0, Li/a/xa;->parentHandle:Li/a/o;

    instance-of v1, v0, Li/a/p;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Li/a/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Li/a/wa;->d:Li/a/ra;

    check-cast v0, Li/a/xa;

    if-eqz v0, :cond_3

    .line 2
    :goto_0
    invoke-virtual {v0}, Li/a/xa;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, v0, Li/a/xa;->parentHandle:Li/a/o;

    instance-of v3, v0, Li/a/p;

    if-nez v3, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Li/a/p;

    if-eqz v0, :cond_3

    iget-object v0, v0, Li/a/wa;->d:Li/a/ra;

    check-cast v0, Li/a/xa;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1
.end method
