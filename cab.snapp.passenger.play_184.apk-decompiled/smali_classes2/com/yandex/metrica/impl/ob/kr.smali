.class public Lcom/yandex/metrica/impl/ob/kr;
.super Lcom/yandex/metrica/impl/ob/kt;
.source "SourceFile"


# static fields
.field private static final f:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/DeferredDeeplinkParametersListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/AppMetricaDeviceIDListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Lcom/yandex/metrica/ReporterConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Lcom/yandex/metrica/impl/ob/pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/pa<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ou;

    const-string v2, "Native crash"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ou;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->f:Lcom/yandex/metrica/impl/ob/pa;

    .line 32
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Activity"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->g:Lcom/yandex/metrica/impl/ob/pa;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Application"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->h:Lcom/yandex/metrica/impl/ob/pa;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Context"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->i:Lcom/yandex/metrica/impl/ob/pa;

    .line 41
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Deeplink listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->j:Lcom/yandex/metrica/impl/ob/pa;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "DeviceID listener"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->k:Lcom/yandex/metrica/impl/ob/pa;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ov;

    const-string v2, "Reporter Config"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ov;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->l:Lcom/yandex/metrica/impl/ob/pa;

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ou;

    const-string v2, "Deeplink"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ou;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->m:Lcom/yandex/metrica/impl/ob/pa;

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/ou;

    const-string v2, "Referral url"

    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/ou;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->n:Lcom/yandex/metrica/impl/ob/pa;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/ob/ow;

    new-instance v1, Lcom/yandex/metrica/impl/ob/pb;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/pb;-><init>()V

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/ow;-><init>(Lcom/yandex/metrica/impl/ob/pa;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/kr;->o:Lcom/yandex/metrica/impl/ob/pa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/kt;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->g:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Landroid/app/Application;)V
    .locals 1

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->h:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->i:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->i:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 107
    sget-object p1, Lcom/yandex/metrica/impl/ob/kr;->l:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->i:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    .line 102
    sget-object p1, Lcom/yandex/metrica/impl/ob/kr;->o:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {p1, p2}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->k:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Lcom/yandex/metrica/DeferredDeeplinkParametersListener;)V
    .locals 1

    .line 90
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->j:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->f:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->i:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->m:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ob/kr;->n:Lcom/yandex/metrica/impl/ob/pa;

    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/pa;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/oy;

    return-void
.end method
