.class public final Lc/e/a/b/g/f/H$a;
.super Lc/e/a/b/g/f/nb$a;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb$a<",
        "Lc/e/a/b/g/f/H;",
        "Lc/e/a/b/g/f/H$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/H;->z()Lc/e/a/b/g/f/H;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/nb$a;-><init>(Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/H$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lc/e/a/b/g/f/H$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/H;I)V

    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/L$a;)Lc/e/a/b/g/f/H$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/H;Lc/e/a/b/g/f/L$a;)V

    return-object p0
.end method

.method public final a(Lc/e/a/b/g/f/L;)Lc/e/a/b/g/f/H$a;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/H;Lc/e/a/b/g/f/L;)V

    return-object p0
.end method

.method public final a(Z)Lc/e/a/b/g/f/H$a;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 8
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/H;->a(Lc/e/a/b/g/f/H;Z)V

    return-object p0
.end method

.method public final j()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-virtual {v0}, Lc/e/a/b/g/f/H;->t()Lc/e/a/b/g/f/L;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-virtual {v0}, Lc/e/a/b/g/f/H;->u()Z

    move-result v0

    return v0
.end method

.method public final m()Lc/e/a/b/g/f/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/H;

    invoke-virtual {v0}, Lc/e/a/b/g/f/H;->v()Lc/e/a/b/g/f/L;

    move-result-object v0

    return-object v0
.end method
