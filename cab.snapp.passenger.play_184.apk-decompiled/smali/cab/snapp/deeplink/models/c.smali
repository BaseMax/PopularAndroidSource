.class public final Lcab/snapp/deeplink/models/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/deeplink/models/types/PathType;

.field private b:Lcab/snapp/deeplink/models/b;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcab/snapp/deeplink/models/types/PathType;Lcab/snapp/deeplink/models/b;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcab/snapp/deeplink/models/c;->a:Lcab/snapp/deeplink/models/types/PathType;

    .line 44
    iput-object p2, p0, Lcab/snapp/deeplink/models/c;->b:Lcab/snapp/deeplink/models/b;

    .line 45
    iput-object p3, p0, Lcab/snapp/deeplink/models/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLocation()Lcab/snapp/deeplink/models/b;
    .locals 1

    .line 61
    iget-object v0, p0, Lcab/snapp/deeplink/models/c;->b:Lcab/snapp/deeplink/models/b;

    return-object v0
.end method

.method public final getType()Lcab/snapp/deeplink/models/types/PathType;
    .locals 1

    .line 55
    iget-object v0, p0, Lcab/snapp/deeplink/models/c;->a:Lcab/snapp/deeplink/models/types/PathType;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/deeplink/models/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getZoom()I
    .locals 1

    .line 77
    iget v0, p0, Lcab/snapp/deeplink/models/c;->d:I

    return v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcab/snapp/deeplink/models/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final setZoom(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcab/snapp/deeplink/models/c;->d:I

    return-void
.end method
