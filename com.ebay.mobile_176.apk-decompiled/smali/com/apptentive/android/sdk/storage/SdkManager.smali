.class public Lcom/apptentive/android/sdk/storage/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCurrentSdk(Landroid/content/Context;)Lcom/apptentive/android/sdk/storage/Sdk;
    .locals 4

    .line 20
    new-instance v0, Lcom/apptentive/android/sdk/storage/Sdk;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/Sdk;-><init>()V

    .line 23
    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Sdk;->setVersion(Ljava/lang/String;)V

    const-string v1, "Android"

    .line 24
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Sdk;->setPlatform(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 28
    sget v1, Lcom/apptentive/android/sdk/R$string;->apptentive_distribution:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/Sdk;->setDistribution(Ljava/lang/String;)V

    .line 29
    sget v1, Lcom/apptentive/android/sdk/R$string;->apptentive_distribution_version:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/Sdk;->setDistributionVersion(Ljava/lang/String;)V

    const-string p0, "SDK: %s:%s"

    const/4 v1, 0x2

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistribution()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistributionVersion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v1}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getPayload(Lcom/apptentive/android/sdk/storage/Sdk;)Lcom/apptentive/android/sdk/model/SdkPayload;
    .locals 2

    .line 35
    new-instance v0, Lcom/apptentive/android/sdk/model/SdkPayload;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/SdkPayload;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setAuthorEmail(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setAuthorName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistribution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setDistribution(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistributionVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setDistributionVersion(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setPlatform(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getProgrammingLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkPayload;->setProgrammingLanguage(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkPayload;->setVersion(Ljava/lang/String;)V

    return-object v0
.end method
