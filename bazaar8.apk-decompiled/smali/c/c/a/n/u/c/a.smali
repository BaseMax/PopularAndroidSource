.class public final Lc/c/a/n/u/c/a;
.super Ljava/lang/Object;
.source "ThirdPartyReviewActivity.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/core/model/ResourceState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/c/a;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/ResourceState;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lc/c/a/n/u/c/a;->a:Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;->a(Lcom/farsitel/bazaar/ui/reviews/thirdparty/ThirdPartyReviewActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/ResourceState;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/c/a;->a(Lcom/farsitel/bazaar/core/model/ResourceState;)V

    return-void
.end method
