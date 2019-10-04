.class public Lcom/apptentive/android/sdk/util/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"


# static fields
.field static final NULL:Lcom/apptentive/android/sdk/util/ApplicationInfo;


# instance fields
.field private final debuggable:Z

.field private final targetSdkVersion:I

.field private final versionCode:I

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/apptentive/android/sdk/util/ApplicationInfo;

    const-string v1, "0"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/apptentive/android/sdk/util/ApplicationInfo;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->NULL:Lcom/apptentive/android/sdk/util/ApplicationInfo;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionName:Ljava/lang/String;

    .line 13
    iput p2, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionCode:I

    .line 14
    iput p3, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->targetSdkVersion:I

    .line 15
    iput-boolean p4, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->debuggable:Z

    return-void
.end method


# virtual methods
.method public getTargetSdkVersion()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->targetSdkVersion:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isDebuggable()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->debuggable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s: versionName=%s versionCode=%d targetSdkVersion=%s debuggable=%b"

    const/4 v1, 0x5

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/apptentive/android/sdk/util/ApplicationInfo;->debuggable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
