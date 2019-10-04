.class Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;
.super Ljava/lang/Object;
.source "StorageIssueAssessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/camera/StorageIssueAssessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StorageChecker"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method hasEnoughSpace()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
