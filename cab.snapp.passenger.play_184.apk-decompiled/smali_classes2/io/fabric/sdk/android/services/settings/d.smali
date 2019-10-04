.class public final Lio/fabric/sdk/android/services/settings/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final icon:Lio/fabric/sdk/android/services/settings/n;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final sdkKits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation
.end field

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/n;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/n;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/k;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/d;->apiKey:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/d;->appId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/d;->displayVersion:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/d;->buildVersion:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/d;->instanceIdentifier:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/d;->name:Ljava/lang/String;

    .line 55
    iput p7, p0, Lio/fabric/sdk/android/services/settings/d;->source:I

    .line 56
    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/d;->minSdkVersion:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/d;->builtSdkVersion:Ljava/lang/String;

    .line 58
    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/d;->icon:Lio/fabric/sdk/android/services/settings/n;

    .line 59
    iput-object p11, p0, Lio/fabric/sdk/android/services/settings/d;->sdkKits:Ljava/util/Collection;

    return-void
.end method
