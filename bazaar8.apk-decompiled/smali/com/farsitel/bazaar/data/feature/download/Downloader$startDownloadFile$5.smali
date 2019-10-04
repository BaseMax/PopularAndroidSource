.class public final Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;
.super Lkotlin/jvm/internal/Lambda;
.source "Downloader.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/Downloader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/math/BigInteger;Ljava/math/BigInteger;Li/a/b/x;Li/a/b/x;Lh/f/a/b;ILjavax/crypto/Cipher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
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
.field public final synthetic $destFile:Ljava/io/File;

.field public final synthetic $encryptCipher:Ljavax/crypto/Cipher;

.field public final synthetic $handleCompleteDownload$2:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;

.field public final synthetic $handleFailDownload$3:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

.field public final synthetic $handleFailStorageDownload$4:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;

.field public final synthetic this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/Downloader;Ljava/io/File;Ljavax/crypto/Cipher;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$destFile:Ljava/io/File;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$encryptCipher:Ljavax/crypto/Cipher;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleCompleteDownload$2:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;

    iput-object p5, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleFailDownload$3:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

    iput-object p6, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleFailStorageDownload$4:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->a(Ljava/util/List;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/i/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parts"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->this$0:Lcom/farsitel/bazaar/data/feature/download/Downloader;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/download/Downloader;->b(Lcom/farsitel/bazaar/data/feature/download/Downloader;)Lc/c/a/e/d/i/u;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$destFile:Ljava/io/File;

    iget-object v2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, v1, v2}, Lc/c/a/e/d/i/u;->a(Ljava/util/List;Ljava/io/File;Ljavax/crypto/Cipher;)Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    move-result-object p1

    sget-object v0, Lc/c/a/e/d/i/l;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleFailStorageDownload$4:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$4;->invoke()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleFailDownload$3:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$3;->invoke()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$5;->$handleCompleteDownload$2:Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$2;->invoke()V

    :goto_0
    return-void
.end method
