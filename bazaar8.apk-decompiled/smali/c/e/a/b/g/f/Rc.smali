.class public abstract Lc/e/a/b/g/f/Rc;
.super Lc/e/a/b/g/f/Wc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lc/e/a/b/g/f/Rc<",
        "TM;>;>",
        "Lc/e/a/b/g/f/Wc;"
    }
.end annotation


# instance fields
.field public b:Lc/e/a/b/g/f/Tc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/g/f/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v2}, Lc/e/a/b/g/f/Tc;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v2, v1}, Lc/e/a/b/g/f/Tc;->c(I)Lc/e/a/b/g/f/Uc;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lc/e/a/b/g/f/Uc;->b()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public a(Lc/e/a/b/g/f/Qc;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1}, Lc/e/a/b/g/f/Tc;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {v1, v0}, Lc/e/a/b/g/f/Tc;->c(I)Lc/e/a/b/g/f/Uc;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lc/e/a/b/g/f/Uc;->a(Lc/e/a/b/g/f/Qc;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lc/e/a/b/g/f/Pc;I)Z
    .locals 3

    .line 9
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->a()I

    move-result v0

    .line 10
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/Pc;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    .line 11
    invoke-virtual {p1}, Lc/e/a/b/g/f/Pc;->a()I

    move-result v2

    sub-int/2addr v2, v0

    .line 12
    invoke-virtual {p1, v0, v2}, Lc/e/a/b/g/f/Pc;->a(II)[B

    move-result-object p1

    .line 13
    new-instance v0, Lc/e/a/b/g/f/Yc;

    invoke-direct {v0, p2, p1}, Lc/e/a/b/g/f/Yc;-><init>(I[B)V

    const/4 p1, 0x0

    .line 14
    iget-object p2, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    if-nez p2, :cond_1

    .line 15
    new-instance p2, Lc/e/a/b/g/f/Tc;

    invoke-direct {p2}, Lc/e/a/b/g/f/Tc;-><init>()V

    iput-object p2, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p2, v1}, Lc/e/a/b/g/f/Tc;->b(I)Lc/e/a/b/g/f/Uc;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 17
    new-instance p1, Lc/e/a/b/g/f/Uc;

    invoke-direct {p1}, Lc/e/a/b/g/f/Uc;-><init>()V

    .line 18
    iget-object p2, p0, Lc/e/a/b/g/f/Rc;->b:Lc/e/a/b/g/f/Tc;

    invoke-virtual {p2, v1, p1}, Lc/e/a/b/g/f/Tc;->a(ILc/e/a/b/g/f/Uc;)V

    .line 19
    :cond_2
    invoke-virtual {p1, v0}, Lc/e/a/b/g/f/Uc;->a(Lc/e/a/b/g/f/Yc;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic c()Lc/e/a/b/g/f/Wc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Rc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/Rc;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lc/e/a/b/g/f/Wc;->c()Lc/e/a/b/g/f/Wc;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/Rc;

    .line 2
    invoke-static {p0, v0}, Lc/e/a/b/g/f/Vc;->a(Lc/e/a/b/g/f/Rc;Lc/e/a/b/g/f/Rc;)V

    return-object v0
.end method
