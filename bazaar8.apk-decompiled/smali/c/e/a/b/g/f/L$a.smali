.class public final Lc/e/a/b/g/f/L$a;
.super Lc/e/a/b/g/f/nb$a;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb$a<",
        "Lc/e/a/b/g/f/L;",
        "Lc/e/a/b/g/f/L$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/L;->A()Lc/e/a/b/g/f/L;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/nb$a;-><init>(Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/L$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lc/e/a/b/g/f/L$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/L;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/L;->a(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Long;",
            ">;)",
            "Lc/e/a/b/g/f/L$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/L;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/L;->b(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lc/e/a/b/g/f/I;",
            ">;)",
            "Lc/e/a/b/g/f/L$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/L;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/L;->c(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final d(Ljava/lang/Iterable;)Lc/e/a/b/g/f/L$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lc/e/a/b/g/f/M;",
            ">;)",
            "Lc/e/a/b/g/f/L$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/L;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/L;->d(Lc/e/a/b/g/f/L;Ljava/lang/Iterable;)V

    return-object p0
.end method
