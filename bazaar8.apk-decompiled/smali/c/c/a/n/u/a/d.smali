.class public final Lc/c/a/n/u/a/d;
.super Ljava/lang/Object;
.source "DeveloperReplyFragment.kt"

# interfaces
.implements Lc/c/a/n/u/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->tb()Lc/c/a/n/u/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/u/a/d;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewItem"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/a/d;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-static {v0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->a(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    return-void
.end method
