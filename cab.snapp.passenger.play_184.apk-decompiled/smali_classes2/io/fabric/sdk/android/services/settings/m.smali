.class public final Lio/fabric/sdk/android/services/settings/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final collectAnalytics:Z

.field public final collectLoggedException:Z

.field public final collectReports:Z

.field public final promptEnabled:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lio/fabric/sdk/android/services/settings/m;->promptEnabled:Z

    .line 32
    iput-boolean p2, p0, Lio/fabric/sdk/android/services/settings/m;->collectLoggedException:Z

    .line 33
    iput-boolean p3, p0, Lio/fabric/sdk/android/services/settings/m;->collectReports:Z

    .line 34
    iput-boolean p4, p0, Lio/fabric/sdk/android/services/settings/m;->collectAnalytics:Z

    return-void
.end method
