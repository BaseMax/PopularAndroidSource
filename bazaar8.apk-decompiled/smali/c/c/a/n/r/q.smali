.class public final Lc/c/a/n/r/q;
.super Lc/c/a/d/f/p;
.source "MyBazaarViewModel.kt"


# instance fields
.field public final d:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>(Lc/c/a/d/c/b;)V
    .locals 1

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/p;-><init>()V

    iput-object p1, p0, Lc/c/a/n/r/q;->d:Lc/c/a/d/c/b;

    return-void
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/farsitel/bazaar/common/model/user/User;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/r/q;->d:Lc/c/a/d/c/b;

    invoke-virtual {v0}, Lc/c/a/d/c/b;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
