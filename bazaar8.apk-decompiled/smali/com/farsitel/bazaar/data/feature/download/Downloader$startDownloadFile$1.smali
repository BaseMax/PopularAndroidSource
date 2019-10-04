.class public final Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Downloader.kt"

# interfaces
.implements Lh/f/a/a;


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
        "Lh/f/a/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $destFile:Ljava/io/File;

.field public final synthetic $downloadDiffHandler:Lh/f/a/b;

.field public final synthetic $downloadHash:Ljava/math/BigInteger;

.field public final synthetic $finalizeDownloadHash:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/math/BigInteger;Lh/f/a/b;Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$destFile:Ljava/io/File;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$downloadHash:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$downloadDiffHandler:Lh/f/a/b;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$finalizeDownloadHash:Ljava/math/BigInteger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$destFile:Ljava/io/File;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$downloadHash:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lc/c/a/c/b/d;->a(Ljava/io/File;Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$downloadDiffHandler:Lh/f/a/b;

    iget-object v1, p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$startDownloadFile$1;->$finalizeDownloadHash:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lh/f/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
