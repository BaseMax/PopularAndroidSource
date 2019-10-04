.class public final Lc/c/a/n/p/v;
.super Ljava/lang/Object;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->ab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/p/v;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 2
    invoke-static {p0}, Lc/c/a/d/f/r$a;->b(Lc/c/a/d/f/r;)V

    return-void
.end method

.method public a(Lcom/farsitel/bazaar/data/entity/None;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/n/p/v;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->b(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)Lc/c/a/n/p/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/n/p/a;->m()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/data/entity/None;

    invoke-virtual {p0, p1}, Lc/c/a/n/p/v;->a(Lcom/farsitel/bazaar/data/entity/None;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    invoke-static {p0}, Lc/c/a/d/f/r$a;->a(Lc/c/a/d/f/r;)V

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/v;->a:Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->b(Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;)Lc/c/a/n/p/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/n/p/a;->m()V

    :cond_0
    return-void
.end method
