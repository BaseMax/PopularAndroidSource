.class public final Lc/e/a/b/i/c;
.super Lc/e/a/b/d/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/d/a/a$a<",
        "Lc/e/a/b/i/a/a;",
        "Lc/e/a/b/i/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/d/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lc/e/a/b/d/d/e;Ljava/lang/Object;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)Lc/e/a/b/d/a/a$f;
    .locals 8

    .line 1
    check-cast p4, Lc/e/a/b/i/a;

    if-nez p4, :cond_0

    .line 2
    sget-object p4, Lc/e/a/b/i/a;->a:Lc/e/a/b/i/a;

    :cond_0
    move-object v5, p4

    .line 3
    new-instance p4, Lc/e/a/b/i/a/a;

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lc/e/a/b/i/a/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLc/e/a/b/d/d/e;Lc/e/a/b/i/a;Lc/e/a/b/d/a/d$a;Lc/e/a/b/d/a/d$b;)V

    return-object p4
.end method
