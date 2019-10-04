.class public final Lc/c/a/d/d/f;
.super Ljava/lang/Object;
.source "OtpCodeManager.kt"


# instance fields
.field public final a:Lc/c/a/c/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/c/h/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/c/h/g;

    invoke-direct {v0}, Lc/c/a/c/h/g;-><init>()V

    iput-object v0, p0, Lc/c/a/d/d/f;->a:Lc/c/a/c/h/g;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/d/d/f;->a:Lc/c/a/c/h/g;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "code"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/d/d/f;->a:Lc/c/a/c/h/g;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/d/d/f;->a:Lc/c/a/c/h/g;

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
