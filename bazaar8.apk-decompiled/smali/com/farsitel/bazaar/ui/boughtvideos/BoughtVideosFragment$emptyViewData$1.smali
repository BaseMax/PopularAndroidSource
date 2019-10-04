.class public final Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment$emptyViewData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BoughtVideosFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment;->qb()Lc/c/a/n/c/d/l;
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
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment$emptyViewData$1;->this$0:Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment$emptyViewData$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment$emptyViewData$1;->this$0:Lcom/farsitel/bazaar/ui/boughtvideos/BoughtVideosFragment;

    invoke-static {v0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->n()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method
