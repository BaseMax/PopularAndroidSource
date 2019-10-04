.class public Lcom/apptentive/android/sdk/storage/AppReleaseManager;
.super Ljava/lang/Object;
.source "AppReleaseManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCurrentAppRelease(Landroid/content/Context;Lcom/apptentive/android/sdk/ApptentiveInternal;)Lcom/apptentive/android/sdk/storage/AppRelease;
    .locals 5

    .line 23
    new-instance v0, Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/storage/AppRelease;-><init>()V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ApptentiveThemeOverride"

    const-string/jumbo v4, "style"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 28
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getApplicationInfo(Landroid/content/Context;)Lcom/apptentive/android/sdk/util/ApplicationInfo;

    move-result-object v3

    .line 30
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setAppStore(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->isDebuggable()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setDebug(Z)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/storage/AppRelease;->setIdentifier(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isAppUsingAppCompatTheme()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setInheritStyle(Z)V

    :cond_0
    if-eqz v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setOverrideStyle(Z)V

    .line 37
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->getTargetSdkVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setTargetSdkVersion(Ljava/lang/String;)V

    const-string p0, "android"

    .line 38
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setType(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->getVersionCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setVersionCode(I)V

    .line 40
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/util/ApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->setVersionName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPayload(Lcom/apptentive/android/sdk/storage/AppRelease;)Lcom/apptentive/android/sdk/model/AppReleasePayload;
    .locals 2

    .line 46
    new-instance v0, Lcom/apptentive/android/sdk/model/AppReleasePayload;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/AppReleasePayload;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getAppStore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setAppStore(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->isDebug()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setDebug(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setIdentifier(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->isInheritStyle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setInheritStyle(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->isOverrideStyle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setOverrideStyle(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getTargetSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setTargetSdkVersion(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setType(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setVersionCode(I)V

    .line 59
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/AppReleasePayload;->setVersionName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getPayload(Lcom/apptentive/android/sdk/storage/Sdk;Lcom/apptentive/android/sdk/storage/AppRelease;)Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;
    .locals 2

    .line 65
    new-instance v0, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getAuthorEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setAuthorEmail(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getAuthorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setAuthorName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistribution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setDistribution(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getDistributionVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setDistributionVersion(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setPlatform(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getProgrammingLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setProgrammingLanguage(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/storage/Sdk;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setVersion(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getAppStore()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setAppStore(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->isDebug()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setDebug(Z)V

    .line 83
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setIdentifier(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->isInheritStyle()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setInheritStyle(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->isOverrideStyle()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setOverrideStyle(Z)V

    .line 86
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getTargetSdkVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setTargetSdkVersion(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setVersionCode(I)V

    .line 89
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/model/SdkAndAppReleasePayload;->setVersionName(Ljava/lang/String;)V

    return-object v0
.end method
