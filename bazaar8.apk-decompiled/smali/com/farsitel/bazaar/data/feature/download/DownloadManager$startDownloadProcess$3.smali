.class public final synthetic Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;
.super Lkotlin/jvm/internal/FunctionReference;
.source "DownloadManager.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lc/c/a/e/g/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lh/f/a/b<",
        "Ljava/math/BigInteger;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $downloadDiffHandler$2:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;->$downloadDiffHandler$2:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;->a(Ljava/math/BigInteger;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/math/BigInteger;)Z
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$3;->$downloadDiffHandler$2:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$startDownloadProcess$2;->a(Ljava/math/BigInteger;)Z

    move-result p1

    return p1
.end method

.method public final e()Lh/i/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "invoke(Ljava/math/BigInteger;)Z"

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "downloadDiffHandler"

    return-object v0
.end method
