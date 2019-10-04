.class public final Lio/fabric/sdk/android/services/settings/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

.field public final appData:Lio/fabric/sdk/android/services/settings/e;

.field public final betaSettingsData:Lio/fabric/sdk/android/services/settings/f;

.field public final cacheDuration:I

.field public final expiresAtMillis:J

.field public final featuresData:Lio/fabric/sdk/android/services/settings/m;

.field public final promptData:Lio/fabric/sdk/android/services/settings/o;

.field public final sessionData:Lio/fabric/sdk/android/services/settings/p;

.field public final settingsVersion:I


# direct methods
.method public constructor <init>(JLio/fabric/sdk/android/services/settings/e;Lio/fabric/sdk/android/services/settings/p;Lio/fabric/sdk/android/services/settings/o;Lio/fabric/sdk/android/services/settings/m;Lio/fabric/sdk/android/services/settings/b;Lio/fabric/sdk/android/services/settings/f;II)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lio/fabric/sdk/android/services/settings/s;->expiresAtMillis:J

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/s;->appData:Lio/fabric/sdk/android/services/settings/e;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/s;->sessionData:Lio/fabric/sdk/android/services/settings/p;

    .line 43
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/s;->promptData:Lio/fabric/sdk/android/services/settings/o;

    .line 44
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/s;->featuresData:Lio/fabric/sdk/android/services/settings/m;

    .line 45
    iput p9, p0, Lio/fabric/sdk/android/services/settings/s;->settingsVersion:I

    .line 46
    iput p10, p0, Lio/fabric/sdk/android/services/settings/s;->cacheDuration:I

    .line 47
    iput-object p7, p0, Lio/fabric/sdk/android/services/settings/s;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/b;

    .line 48
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/s;->betaSettingsData:Lio/fabric/sdk/android/services/settings/f;

    return-void
.end method


# virtual methods
.method public final isExpired(J)Z
    .locals 3

    .line 52
    iget-wide v0, p0, Lio/fabric/sdk/android/services/settings/s;->expiresAtMillis:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
