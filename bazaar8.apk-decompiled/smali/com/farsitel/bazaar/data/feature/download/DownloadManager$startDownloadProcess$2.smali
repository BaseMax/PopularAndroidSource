.class public final Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DownloadManager.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Ljava/math/BigInteger;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $destFile:Ljava/io/File;

.field public final synthetic $downloadInfoModel:Lc/c/a/e/g/c;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Lc/c/a/e/g/c;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->$downloadInfoModel:Lc/c/a/e/g/c;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->$destFile:Ljava/io/File;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->a(Ljava/math/BigInteger;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/math/BigInteger;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-virtual {v0}, Lc/c/a/e/g/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->this$0:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->$destFile:Ljava/io/File;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->$downloadInfoModel:Lc/c/a/e/g/c;

    invoke-static {v0, v1, v2, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/io/File;Lc/c/a/e/g/c;Ljava/math/BigInteger;)Z

    move-result p1

    :goto_0
    return p1
.end method
