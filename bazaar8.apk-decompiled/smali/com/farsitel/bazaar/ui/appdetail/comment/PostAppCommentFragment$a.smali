.class public final Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;
.super Ljava/lang/Object;
.source "PostAppCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/n/b/b/a;)Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;
    .locals 1

    const-string v0, "postCommentFragmentArgs"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;

    invoke-direct {v0}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;-><init>()V

    .line 2
    invoke-virtual {p1}, Lc/c/a/n/b/b/a;->e()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    return-object v0
.end method
