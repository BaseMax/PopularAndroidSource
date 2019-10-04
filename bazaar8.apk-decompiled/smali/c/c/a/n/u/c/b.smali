.class public final Lc/c/a/n/u/c/b;
.super Ljava/lang/Object;
.source "ThirdPartyReviewActivity.kt"

# interfaces
.implements Lc/c/a/d/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/d/f/r<",
        "Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/u/c/b;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

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

.method public a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;)V
    .locals 1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/c/b;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/n/u/c/b;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/c/b;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyPendingResult;)V

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/c/b;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->finish()V

    return-void
.end method
