.class synthetic Lcom/ebay/mobile/camera/BaseCameraFragment$3;
.super Ljava/lang/Object;
.source "BaseCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/camera/BaseCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 220
    invoke-static {}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->values()[Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    :try_start_0
    sget-object v0, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-virtual {v1}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_ACCESS_FAIL:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-virtual {v1}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->LOW_STORAGE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-virtual {v1}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ebay/mobile/camera/BaseCameraFragment$3;->$SwitchMap$com$ebay$mobile$camera$StorageIssueAssessor$Cause:[I

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->UNKNOWN:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-virtual {v1}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
