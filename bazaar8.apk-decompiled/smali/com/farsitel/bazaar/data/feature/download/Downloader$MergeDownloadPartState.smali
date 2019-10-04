.class public final enum Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
.super Ljava/lang/Enum;
.source "Downloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/feature/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergeDownloadPartState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

.field public static final enum FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

.field public static final enum SUCCESS:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    const/4 v2, 0x0

    const-string v3, "SUCCESS"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->SUCCESS:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->FAILED:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    const/4 v2, 0x2

    const-string v3, "FAILED_STORAGE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->FAILED_STORAGE:Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->a:[Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->a:[Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/download/Downloader$MergeDownloadPartState;

    return-object v0
.end method
