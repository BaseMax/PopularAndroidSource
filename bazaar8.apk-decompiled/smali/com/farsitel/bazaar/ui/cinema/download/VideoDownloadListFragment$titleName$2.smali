.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoDownloadListFragment.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment$titleName$2;->this$0:Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadListFragment;

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
