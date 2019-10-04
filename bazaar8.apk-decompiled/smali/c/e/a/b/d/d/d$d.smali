.class public Lc/e/a/b/d/d/d$d;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/d/d/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/b/d/d/d;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/d/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/d/d$d;->a:Lc/e/a/b/d/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/e/a/b/d/d/d$d;->a:Lc/e/a/b/d/d/d;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lc/e/a/b/d/d/d;->q()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/e/a/b/d/d/d;->a(Lc/e/a/b/d/d/l;Ljava/util/Set;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/e/a/b/d/d/d$d;->a:Lc/e/a/b/d/d/d;

    invoke-static {v0}, Lc/e/a/b/d/d/d;->g(Lc/e/a/b/d/d/d;)Lc/e/a/b/d/d/d$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/b/d/d/d$d;->a:Lc/e/a/b/d/d/d;

    invoke-static {v0}, Lc/e/a/b/d/d/d;->g(Lc/e/a/b/d/d/d;)Lc/e/a/b/d/d/d$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/e/a/b/d/d/d$b;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
