.class public final Lc/e/a/b/g/f/J$a;
.super Lc/e/a/b/g/f/nb$a;

# interfaces
.implements Lc/e/a/b/g/f/Ub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/g/f/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/g/f/nb$a<",
        "Lc/e/a/b/g/f/J;",
        "Lc/e/a/b/g/f/J$a;",
        ">;",
        "Lc/e/a/b/g/f/Ub;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lc/e/a/b/g/f/J;->q()Lc/e/a/b/g/f/J;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/g/f/nb$a;-><init>(Lc/e/a/b/g/f/nb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/O;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/J$a;-><init>()V

    return-void
.end method
