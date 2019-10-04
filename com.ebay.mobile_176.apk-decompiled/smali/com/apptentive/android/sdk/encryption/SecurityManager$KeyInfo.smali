.class Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/encryption/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyInfo"
.end annotation


# instance fields
.field final alias:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->alias:Ljava/lang/String;

    .line 148
    iput p2, p0, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->versionCode:I

    return-void

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid SDK version code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key alias name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "KeyInfo: alias=%s versionCode=%d"

    const/4 v1, 0x2

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->alias:Ljava/lang/String;

    invoke-static {v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->hideIfSanitized(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/apptentive/android/sdk/encryption/SecurityManager$KeyInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
