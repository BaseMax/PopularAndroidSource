.class Lcom/ebay/mobile/camera/StorageIssueAssessor;
.super Ljava/lang/Object;
.source "StorageIssueAssessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;,
        Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method assessCause(Ljava/io/File;)Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/camera/StorageIssueAssessor;->assessCause(Ljava/io/File;Ljava/lang/String;Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;)Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    move-result-object p1

    return-object p1
.end method

.method assessCause(Ljava/io/File;Ljava/lang/String;Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;)Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    const-string v0, "mounted"

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/ebay/mobile/camera/StorageIssueAssessor$StorageChecker;->hasEnoughSpace()Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    sget-object p1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->LOW_STORAGE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 55
    :cond_1
    sget-object p1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->UNKNOWN:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-object p1

    .line 52
    :catch_0
    sget-object p1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_ACCESS_FAIL:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-object p1

    .line 43
    :cond_2
    :goto_0
    sget-object p1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-object p1
.end method
