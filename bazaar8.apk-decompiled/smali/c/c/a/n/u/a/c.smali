.class public final Lc/c/a/n/u/a/c;
.super Ljava/lang/Object;
.source "DeveloperReplyFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->jb()Lc/c/a/n/u/a/j;
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
        "Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/a/c;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/a/c;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->qb()Lc/c/a/f/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/c/a/f/o;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/a/c;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->qb()Lc/c/a/f/o;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->g()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/a/c;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    return-void
.end method
