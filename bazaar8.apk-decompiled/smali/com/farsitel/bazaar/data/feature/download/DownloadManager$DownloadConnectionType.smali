.class public final enum Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;
.super Ljava/lang/Enum;
.source "DownloadManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/data/feature/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PARALLEL_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

.field public static final enum SINGLE_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;


# instance fields
.field public final connectionCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "SINGLE_CONNECTION"

    .line 1
    invoke-direct {v1, v4, v2, v3}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->SINGLE_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    invoke-static {}, Lc/c/a/c/h/d;->c()I

    move-result v2

    const-string v4, "PARALLEL_CONNECTION"

    invoke-direct {v1, v4, v3, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->PARALLEL_CONNECTION:Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->a:[Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->connectionCount:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->a:[Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/feature/download/DownloadManager$DownloadConnectionType;->connectionCount:I

    return v0
.end method
