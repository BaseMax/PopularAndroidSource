.class public final Lc/c/a/n/i/d;
.super Ljava/lang/Object;
.source "BazaarForceUpdateDialogFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/i/f;->_a()V
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
        "Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/i/f;


# direct methods
.method public constructor <init>(Lc/c/a/n/i/f;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/i/d;->a:Lc/c/a/n/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/i/d;->a:Lc/c/a/n/i/f;

    invoke-static {v0}, Lc/c/a/n/i/f;->b(Lc/c/a/n/i/f;)Lc/c/a/f/g;

    move-result-object v0

    iget-object v0, v0, Lc/c/a/f/g;->B:Landroid/widget/ProgressBar;

    const-string v1, "dataBinding.appDownloadProgressBar"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    invoke-virtual {p0, p1}, Lc/c/a/n/i/d;->a(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method
