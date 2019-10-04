.class public final Lcab/snapp/deeplink/models/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcab/snapp/deeplink/models/types/Scheme;

.field private b:Lcab/snapp/deeplink/models/types/Host;

.field private c:Lcab/snapp/deeplink/models/c;

.field private d:Lcab/snapp/deeplink/models/c;

.field private e:Lcab/snapp/deeplink/models/c;


# direct methods
.method public constructor <init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcab/snapp/deeplink/models/a;->a:Lcab/snapp/deeplink/models/types/Scheme;

    .line 36
    iput-object p2, p0, Lcab/snapp/deeplink/models/a;->b:Lcab/snapp/deeplink/models/types/Host;

    .line 37
    iput-object p3, p0, Lcab/snapp/deeplink/models/a;->c:Lcab/snapp/deeplink/models/c;

    .line 38
    iput-object p4, p0, Lcab/snapp/deeplink/models/a;->d:Lcab/snapp/deeplink/models/c;

    .line 39
    iput-object p5, p0, Lcab/snapp/deeplink/models/a;->e:Lcab/snapp/deeplink/models/c;

    return-void
.end method


# virtual methods
.method public final getHost()Lcab/snapp/deeplink/models/types/Host;
    .locals 1

    .line 55
    iget-object v0, p0, Lcab/snapp/deeplink/models/a;->b:Lcab/snapp/deeplink/models/types/Host;

    return-object v0
.end method

.method public final getPath1()Lcab/snapp/deeplink/models/c;
    .locals 1

    .line 61
    iget-object v0, p0, Lcab/snapp/deeplink/models/a;->c:Lcab/snapp/deeplink/models/c;

    return-object v0
.end method

.method public final getPath2()Lcab/snapp/deeplink/models/c;
    .locals 1

    .line 67
    iget-object v0, p0, Lcab/snapp/deeplink/models/a;->d:Lcab/snapp/deeplink/models/c;

    return-object v0
.end method

.method public final getPath3()Lcab/snapp/deeplink/models/c;
    .locals 1

    .line 73
    iget-object v0, p0, Lcab/snapp/deeplink/models/a;->e:Lcab/snapp/deeplink/models/c;

    return-object v0
.end method

.method public final getScheme()Lcab/snapp/deeplink/models/types/Scheme;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/deeplink/models/a;->a:Lcab/snapp/deeplink/models/types/Scheme;

    return-object v0
.end method
