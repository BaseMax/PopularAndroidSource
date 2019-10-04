.class public final synthetic Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;
.super Lkotlin/jvm/internal/FunctionReference;
.source "Downloader.kt"

# interfaces
.implements Lh/f/a/b;


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
        "Lh/f/a/b<",
        "Ljava/util/List<",
        "+",
        "Lc/c/a/e/d/i/w;",
        ">;",
        "Lh/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lc/c/a/e/d/i/n;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/i/n;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;->this$0:Lc/c/a/e/d/i/n;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;->a(Ljava/util/List;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$6$2;->this$0:Lc/c/a/e/d/i/n;

    iget-object v0, v0, Lc/c/a/e/d/i/n;->m:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;

    .line 2
    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->a(Ljava/util/List;)V

    return-void
.end method

.method public final e()Lh/i/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke(Ljava/util/List;)V"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "handleMergePartFile"

    return-object v0
.end method
