.class public final Lc/e/a/b/g/f/K$a;
.super Lc/e/a/b/g/f/nb$a;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb$a<",
        "Lc/e/a/b/g/f/K;",
        "Lc/e/a/b/g/f/K$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/K;->C()Lc/e/a/b/g/f/K;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/nb$a;-><init>(Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/K$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(D)Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 6
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/K;->a(Lc/e/a/b/g/f/K;D)V

    return-object p0
.end method

.method public final a(J)Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/K;->a(Lc/e/a/b/g/f/K;J)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/K;->a(Lc/e/a/b/g/f/K;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/K;->b(Lc/e/a/b/g/f/K;Ljava/lang/String;)V

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-virtual {v0}, Lc/e/a/b/g/f/K;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0}, Lc/e/a/b/g/f/K;->a(Lc/e/a/b/g/f/K;)V

    return-object p0
.end method

.method public final m()Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0}, Lc/e/a/b/g/f/K;->b(Lc/e/a/b/g/f/K;)V

    return-object p0
.end method

.method public final p()Lc/e/a/b/g/f/K$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/K;

    invoke-static {v0}, Lc/e/a/b/g/f/K;->c(Lc/e/a/b/g/f/K;)V

    return-object p0
.end method
