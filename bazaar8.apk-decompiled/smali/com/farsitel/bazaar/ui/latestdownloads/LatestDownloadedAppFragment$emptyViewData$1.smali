.class public final Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment$emptyViewData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LatestDownloadedAppFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;->qb()Lc/c/a/n/c/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment$emptyViewData$1;->this$0:Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment$emptyViewData$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment$emptyViewData$1;->this$0:Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;

    const v1, 0x7f1001fb

    .line 3
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.title_action_top_chart_empty)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lc/c/a/c/d/c$g;

    invoke-direct {v2}, Lc/c/a/c/d/c$g;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lc/c/a/c/d/d;->a(Lc/c/a/c/d/d;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "top-popular"

    .line 5
    invoke-static {v0, v3, v1, v2}, Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;->a(Lcom/farsitel/bazaar/ui/latestdownloads/LatestDownloadedAppFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
