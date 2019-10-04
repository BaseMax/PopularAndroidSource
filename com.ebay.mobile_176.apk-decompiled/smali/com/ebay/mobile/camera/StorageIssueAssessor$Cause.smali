.class public final enum Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
.super Ljava/lang/Enum;
.source "StorageIssueAssessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/camera/StorageIssueAssessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

.field public static final enum EXTERNAL_ACCESS_FAIL:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

.field public static final enum EXTERNAL_STORAGE_UNAVAILABLE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

.field public static final enum LOW_STORAGE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

.field public static final enum UNKNOWN:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->UNKNOWN:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    .line 19
    new-instance v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    const-string v1, "LOW_STORAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->LOW_STORAGE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    .line 20
    new-instance v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    const-string v1, "EXTERNAL_STORAGE_UNAVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    .line 21
    new-instance v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    const-string v1, "EXTERNAL_ACCESS_FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_ACCESS_FAIL:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->UNKNOWN:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->LOW_STORAGE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_STORAGE_UNAVAILABLE:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->EXTERNAL_ACCESS_FAIL:Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->$VALUES:[Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    .locals 1

    .line 16
    const-class v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;
    .locals 1

    .line 16
    sget-object v0, Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->$VALUES:[Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    invoke-virtual {v0}, [Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/camera/StorageIssueAssessor$Cause;

    return-object v0
.end method
