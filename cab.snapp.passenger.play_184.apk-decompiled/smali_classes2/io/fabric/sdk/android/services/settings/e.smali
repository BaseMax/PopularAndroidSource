.class public final Lio/fabric/sdk/android/services/settings/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_ACTIVATED:Ljava/lang/String; = "activated"

.field public static final STATUS_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final STATUS_NEW:Ljava/lang/String; = "new"


# instance fields
.field public final icon:Lio/fabric/sdk/android/services/settings/c;

.field public final identifier:Ljava/lang/String;

.field public final reportsUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final updateRequired:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/c;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/e;->identifier:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/e;->status:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/e;->url:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/e;->reportsUrl:Ljava/lang/String;

    .line 43
    iput-boolean p5, p0, Lio/fabric/sdk/android/services/settings/e;->updateRequired:Z

    .line 44
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/e;->icon:Lio/fabric/sdk/android/services/settings/c;

    return-void
.end method
