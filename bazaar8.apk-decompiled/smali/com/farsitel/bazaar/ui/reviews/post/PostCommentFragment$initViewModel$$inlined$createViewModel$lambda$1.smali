.class public final Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PostCommentFragment.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/u/b/a;->jb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Lcom/farsitel/bazaar/core/model/ResourceState;",
        ">;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/n/u/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/n/u/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;->this$0:Lc/c/a/n/u/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Lcom/farsitel/bazaar/core/model/ResourceState;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    sget-object v0, Lcom/farsitel/bazaar/core/model/PostCommentState$OpenNickName;->a:Lcom/farsitel/bazaar/core/model/PostCommentState$OpenNickName;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;->this$0:Lc/c/a/n/u/b/a;

    invoke-virtual {p1}, Lc/c/a/n/u/b/a;->kb()V

    goto :goto_1

    .line 5
    :cond_1
    sget-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/post/PostCommentFragment$initViewModel$$inlined$createViewModel$lambda$1;->this$0:Lc/c/a/n/u/b/a;

    invoke-virtual {p1}, Lc/c/a/n/u/b/a;->ib()V

    :cond_2
    :goto_1
    return-void
.end method
