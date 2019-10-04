.class public Li/a/Ka;
.super Li/a/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lh/c/e;Z)V
    .locals 1

    const-string v0, "parentContext"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Li/a/a;-><init>(Lh/c/e;Z)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Li/a/a;->b()Lh/c/e;

    move-result-object v0

    invoke-static {v0, p1}, Li/a/E;->a(Lh/c/e;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
