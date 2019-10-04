.class public final Lc/e/a/b/g/f/I$a;
.super Lc/e/a/b/g/f/nb$a;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb$a<",
        "Lc/e/a/b/g/f/I;",
        "Lc/e/a/b/g/f/I$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/I;->v()Lc/e/a/b/g/f/I;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/nb$a;-><init>(Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/I$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lc/e/a/b/g/f/I$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/I;

    invoke-static {v0, p1}, Lc/e/a/b/g/f/I;->a(Lc/e/a/b/g/f/I;I)V

    return-object p0
.end method

.method public final a(J)Lc/e/a/b/g/f/I$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lc/e/a/b/g/f/nb$a;->g()V

    .line 4
    iget-object v0, p0, Lc/e/a/b/g/f/nb$a;->b:Lc/e/a/b/g/f/nb;

    check-cast v0, Lc/e/a/b/g/f/I;

    invoke-static {v0, p1, p2}, Lc/e/a/b/g/f/I;->a(Lc/e/a/b/g/f/I;J)V

    return-object p0
.end method
