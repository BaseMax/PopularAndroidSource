.class public final synthetic Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "Downloader.kt"

# interfaces
.implements Lh/f/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/i/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lh/f/a/a<",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/e/d/i/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/n;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;->this$0:Lc/c/a/e/d/i/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e()Lh/i/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke()V"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "handleFailDownload"

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;->invoke()V

    sget-object v0, Lh/h;->a:Lh/h;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$1;->this$0:Lc/c/a/e/d/i/n;

    iget-object v0, v0, Lc/c/a/e/d/i/n;->l:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

    .line 2
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;->invoke()V

    return-void
.end method
