.class public Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;
.super Le/a/a/a/a/d/c;
.source "SessionAnalyticsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/a/a/d/c<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final SESSION_ANALYTICS_TO_SEND_FILE_EXTENSION:Ljava/lang/String; = ".tap"

.field public static final SESSION_ANALYTICS_TO_SEND_FILE_PREFIX:Ljava/lang/String; = "sa"


# instance fields
.field public analyticsSettingsData:Le/a/a/a/a/g/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventTransform;Le/a/a/a/a/b/m;Le/a/a/a/a/d/d;)V
    .locals 6

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/a/a/a/d/c;-><init>(Landroid/content/Context;Le/a/a/a/a/d/a;Le/a/a/a/a/b/m;Le/a/a/a/a/d/d;I)V

    return-void
.end method


# virtual methods
.method public generateUniqueRollOverFileName()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sa"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/a/a/a/d/c;->currentTimeProvider:Le/a/a/a/a/b/m;

    .line 7
    invoke-interface {v0}, Le/a/a/a/a/b/m;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tap"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxByteSizePerFile()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Le/a/a/a/a/g/b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le/a/a/a/a/d/c;->getMaxByteSizePerFile()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Le/a/a/a/a/g/b;->c:I

    :goto_0
    return v0
.end method

.method public getMaxFilesToKeep()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Le/a/a/a/a/g/b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Le/a/a/a/a/d/c;->getMaxFilesToKeep()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Le/a/a/a/a/g/b;->e:I

    :goto_0
    return v0
.end method

.method public setAnalyticsSettingsData(Le/a/a/a/a/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->analyticsSettingsData:Le/a/a/a/a/g/b;

    return-void
.end method
