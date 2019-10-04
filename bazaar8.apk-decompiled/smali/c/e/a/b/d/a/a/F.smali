.class public final Lc/e/a/b/d/a/a/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/d/a/a/E;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/F;->a:Lc/e/a/b/d/a/a/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/F;->a:Lc/e/a/b/d/a/a/E;

    invoke-static {v0}, Lc/e/a/b/d/a/a/E;->a(Lc/e/a/b/d/a/a/E;)Lc/e/a/b/d/a/a/H;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lc/e/a/b/d/a/a/H;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
