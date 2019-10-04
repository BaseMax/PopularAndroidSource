.class final Lcom/adjust/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/b$a;
    }
.end annotation


# static fields
.field private static o:Lcom/adjust/sdk/ILogger;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/adjust/sdk/AdjustAttribution;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J

.field h:J

.field i:J

.field private j:Lcom/adjust/sdk/AdjustConfig;

.field private k:Lcom/adjust/sdk/a;

.field private l:Lcom/adjust/sdk/b$a;

.field private m:Lcom/adjust/sdk/SessionParameters;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/b;->o:Lcom/adjust/sdk/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/AdjustConfig;Lcom/adjust/sdk/a;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/SessionParameters;J)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/adjust/sdk/b;->g:J

    .line 43
    iput-wide v0, p0, Lcom/adjust/sdk/b;->h:J

    .line 44
    iput-wide v0, p0, Lcom/adjust/sdk/b;->i:J

    .line 78
    iput-object p1, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    .line 79
    iput-object p2, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    .line 80
    new-instance p1, Lcom/adjust/sdk/b$a;

    invoke-direct {p1, p0, p3}, Lcom/adjust/sdk/b$a;-><init>(Lcom/adjust/sdk/b;Lcom/adjust/sdk/ActivityState;)V

    iput-object p1, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    .line 81
    iput-object p4, p0, Lcom/adjust/sdk/b;->m:Lcom/adjust/sdk/SessionParameters;

    .line 82
    iput-wide p5, p0, Lcom/adjust/sdk/b;->n:J

    return-void
.end method

.method private a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;
    .locals 1

    .line 174
    new-instance v0, Lcom/adjust/sdk/ActivityPackage;

    invoke-direct {v0, p1}, Lcom/adjust/sdk/ActivityPackage;-><init>(Lcom/adjust/sdk/ActivityKind;)V

    .line 175
    iget-object p1, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object p1, p1, Lcom/adjust/sdk/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityPackage;->setClientSdk(Ljava/lang/String;)V

    return-object v0
.end method

.method private a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->a(Ljava/util/Map;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->c(Ljava/util/Map;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->d(Ljava/util/Map;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->e(Ljava/util/Map;)V

    .line 203
    invoke-static {v0}, Lcom/adjust/sdk/b;->f(Ljava/util/Map;)V

    return-object v0
.end method

.method private a(Z)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/adjust/sdk/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget-wide v1, v1, Lcom/adjust/sdk/b$a;->a:J

    const-string v3, "last_interval"

    invoke-static {v0, v3, v1, v2}, Lcom/adjust/sdk/b;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 182
    iget-object v1, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->defaultTracker:Ljava/lang/String;

    const-string v2, "default_tracker"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v1, v1, Lcom/adjust/sdk/a;->A:Ljava/lang/String;

    const-string v2, "installed_at"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v1, v1, Lcom/adjust/sdk/a;->B:Ljava/lang/String;

    const-string v2, "updated_at"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/adjust/sdk/b;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object p1, p1, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    const-string v1, "callback_params"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    iget-object p1, p0, Lcom/adjust/sdk/b;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object p1, p1, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    const-string v1, "partner_params"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lcom/adjust/sdk/b;->b(Ljava/util/Map;)V

    .line 222
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->f:Ljava/lang/String;

    const-string v1, "fb_id"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->h:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->i:Ljava/lang/String;

    const-string v1, "app_version"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->j:Ljava/lang/String;

    const-string v1, "device_type"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    const-string v1, "device_name"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    const-string v1, "device_manufacturer"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->m:Ljava/lang/String;

    const-string v1, "os_name"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->n:Ljava/lang/String;

    const-string v1, "os_version"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->o:Ljava/lang/String;

    const-string v1, "api_level"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    const-string v1, "language"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->q:Ljava/lang/String;

    const-string v1, "country"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->r:Ljava/lang/String;

    const-string v1, "screen_size"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->s:Ljava/lang/String;

    const-string v1, "screen_format"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->t:Ljava/lang/String;

    const-string v1, "screen_density"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->u:Ljava/lang/String;

    const-string v1, "display_width"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->v:Ljava/lang/String;

    const-string v1, "display_height"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->w:Ljava/lang/String;

    const-string v1, "hardware_name"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->x:Ljava/lang/String;

    const-string v1, "cpu_type"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->y:Ljava/lang/String;

    const-string v1, "os_build"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->z:Ljava/lang/String;

    const-string v1, "vm_isa"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getConnectivityType(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "connectivity_type"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    .line 245
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "network_type"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    .line 246
    invoke-direct {p0, p1}, Lcom/adjust/sdk/b;->g(Ljava/util/Map;)V

    return-void
.end method

.method public static addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-long v0, p2

    .line 412
    invoke-static {p0, p1, v0, v1}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static addDate(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 377
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Util;->dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 378
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addDateInMilliseconds(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 360
    invoke-static {p0, p1, v0}, Lcom/adjust/sdk/b;->addDate(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static addDateInSeconds(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    mul-long p2, p2, v1

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 369
    invoke-static {p0, p1, v0}, Lcom/adjust/sdk/b;->addDate(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "%.5f"

    .line 418
    invoke-static {p2, v0}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 420
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addDuration(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    .line 386
    div-long/2addr p2, v0

    .line 387
    invoke-static {p0, p1, p2, p3}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method public static addLong(Ljava/util/Map;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 395
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 399
    :cond_1
    new-instance v0, Lorg/a/c;

    invoke-direct {v0, p2}, Lorg/a/c;-><init>(Ljava/util/Map;)V

    .line 400
    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    .line 402
    invoke-static {p0, p1, p2}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 338
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->b(Ljava/util/Map;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->c(Ljava/util/Map;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->e(Ljava/util/Map;)V

    .line 215
    invoke-static {v0}, Lcom/adjust/sdk/b;->f(Ljava/util/Map;)V

    return-object v0
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v1, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v1, v1, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/a;->a(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->b:Ljava/lang/Boolean;

    const-string v1, "tracking_enabled"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->a:Ljava/lang/String;

    const-string v1, "gps_adid"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->c:Ljava/lang/String;

    const-string v1, "mac_sha1"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->d:Ljava/lang/String;

    const-string v1, "mac_md5"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->e:Ljava/lang/String;

    const-string v1, "android_id"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->appToken:Ljava/lang/String;

    const-string v1, "app_token"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->environment:Ljava/lang/String;

    const-string v1, "environment"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->deviceKnown:Ljava/lang/Boolean;

    const-string v1, "device_known"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 267
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->eventBufferingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "event_buffering_enabled"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 268
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget-object v0, v0, Lcom/adjust/sdk/b$a;->h:Ljava/lang/String;

    const-string v1, "push_token"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getFireAdvertisingId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fire_adid"

    .line 271
    invoke-static {p1, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getFireTrackingEnabled(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fire_tracking_enabled"

    .line 273
    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->secretId:Ljava/lang/String;

    const-string v1, "secret_id"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->appSecret:Ljava/lang/String;

    const-string v1, "app_secret"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-boolean v0, v0, Lcom/adjust/sdk/AdjustConfig;->readMobileEquipmentIdentity:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/adjust/sdk/b;->j:Lcom/adjust/sdk/AdjustConfig;

    iget-object v0, v0, Lcom/adjust/sdk/AdjustConfig;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 280
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getTelephonyIds(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_ids"

    invoke-static {p1, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getIMEIs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imeis"

    invoke-static {p1, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getMEIDs(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meids"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget-object v0, v0, Lcom/adjust/sdk/b$a;->c:Ljava/lang/String;

    const-string v1, "android_uuid"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget v0, v0, Lcom/adjust/sdk/b$a;->d:I

    int-to-long v0, v0

    const-string v2, "session_count"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    .line 289
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget v0, v0, Lcom/adjust/sdk/b$a;->e:I

    int-to-long v0, v0

    const-string v2, "subsession_count"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    .line 290
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget-wide v0, v0, Lcom/adjust/sdk/b$a;->f:J

    const-string v2, "session_length"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    .line 291
    iget-object v0, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget-wide v0, v0, Lcom/adjust/sdk/b$a;->g:J

    const-string v2, "time_spent"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addDuration(Ljava/util/Map;Ljava/lang/String;J)V

    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-wide v0, p0, Lcom/adjust/sdk/b;->n:J

    const-string v2, "created_at"

    invoke-static {p1, v2, v0, v1}, Lcom/adjust/sdk/b;->addDateInMilliseconds(Ljava/util/Map;Ljava/lang/String;J)V

    .line 296
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "attribution_deeplink"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "needs_response_details"

    invoke-static {p1, v1, v0}, Lcom/adjust/sdk/b;->addBoolean(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static f(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mac_sha1"

    .line 311
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mac_md5"

    .line 312
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android_id"

    .line 313
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gps_adid"

    .line 314
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 315
    sget-object p0, Lcom/adjust/sdk/b;->o:Lcom/adjust/sdk/ILogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Missing device id\'s. Please check if Proguard is correctly set with Adjust SDK"

    invoke-interface {p0, v1, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->C:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/b;->k:Lcom/adjust/sdk/a;

    iget-object v0, v0, Lcom/adjust/sdk/a;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final buildAttributionPackage()Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    .line 163
    invoke-direct {p0}, Lcom/adjust/sdk/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->ATTRIBUTION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/b;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "attribution"

    .line 166
    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v2, ""

    .line 167
    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v1
.end method

.method public final buildClickPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;
    .locals 3

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->a(Z)Ljava/util/Map;

    move-result-object v0

    const-string v1, "source"

    .line 127
    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-wide v1, p0, Lcom/adjust/sdk/b;->g:J

    const-string p1, "click_time"

    invoke-static {v0, p1, v1, v2}, Lcom/adjust/sdk/b;->addDateInMilliseconds(Ljava/util/Map;Ljava/lang/String;J)V

    .line 129
    iget-object v1, p0, Lcom/adjust/sdk/b;->c:Ljava/lang/String;

    const-string v2, "reftag"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/adjust/sdk/b;->a:Ljava/util/Map;

    const-string v2, "params"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 131
    iget-object v1, p0, Lcom/adjust/sdk/b;->d:Ljava/lang/String;

    const-string v2, "referrer"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/adjust/sdk/b;->e:Ljava/lang/String;

    const-string v2, "raw_referrer"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/adjust/sdk/b;->f:Ljava/lang/String;

    const-string v2, "deeplink"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-wide v1, p0, Lcom/adjust/sdk/b;->h:J

    invoke-static {v0, p1, v1, v2}, Lcom/adjust/sdk/b;->addDateInSeconds(Ljava/util/Map;Ljava/lang/String;J)V

    .line 135
    iget-wide v1, p0, Lcom/adjust/sdk/b;->i:J

    const-string p1, "install_begin_time"

    invoke-static {v0, p1, v1, v2}, Lcom/adjust/sdk/b;->addDateInSeconds(Ljava/util/Map;Ljava/lang/String;J)V

    .line 2301
    iget-object p1, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/AdjustAttribution;

    if-eqz p1, :cond_0

    .line 2304
    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    const-string v1, "tracker"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    iget-object p1, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    const-string v1, "campaign"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-object p1, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    const-string v1, "adgroup"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 2307
    iget-object p1, p0, Lcom/adjust/sdk/b;->b:Lcom/adjust/sdk/AdjustAttribution;

    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    const-string v1, "creative"

    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    sget-object p1, Lcom/adjust/sdk/ActivityKind;->CLICK:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/b;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    const-string v1, "/sdk_click"

    .line 139
    invoke-virtual {p1, v1}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v1, ""

    .line 140
    invoke-virtual {p1, v1}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 141
    iget-wide v1, p0, Lcom/adjust/sdk/b;->g:J

    invoke-virtual {p1, v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setClickTimeInMilliseconds(J)V

    .line 142
    iget-wide v1, p0, Lcom/adjust/sdk/b;->h:J

    invoke-virtual {p1, v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setClickTimeInSeconds(J)V

    .line 143
    iget-wide v1, p0, Lcom/adjust/sdk/b;->i:J

    invoke-virtual {p1, v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setInstallBeginTimeInSeconds(J)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object p1
.end method

.method public final buildEventPackage(Lcom/adjust/sdk/AdjustEvent;Z)Lcom/adjust/sdk/ActivityPackage;
    .locals 6

    .line 99
    invoke-direct {p0}, Lcom/adjust/sdk/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/adjust/sdk/b;->l:Lcom/adjust/sdk/b$a;

    iget v1, v1, Lcom/adjust/sdk/b$a;->b:I

    int-to-long v1, v1

    const-string v3, "event_count"

    invoke-static {v0, v3, v1, v2}, Lcom/adjust/sdk/b;->addLong(Ljava/util/Map;Ljava/lang/String;J)V

    .line 101
    iget-object v1, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    const-string v2, "event_token"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    const-string v2, "revenue"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addDouble(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Double;)V

    .line 103
    iget-object v1, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    const-string v2, "currency"

    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/adjust/sdk/b;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v1, v1, Lcom/adjust/sdk/SessionParameters;->callbackParameters:Ljava/util/Map;

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    const-string v3, "Callback"

    .line 107
    invoke-static {v1, v2, v3}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "callback_params"

    .line 106
    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    iget-object v1, p0, Lcom/adjust/sdk/b;->m:Lcom/adjust/sdk/SessionParameters;

    iget-object v1, v1, Lcom/adjust/sdk/SessionParameters;->partnerParameters:Ljava/util/Map;

    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    const-string v3, "Partner"

    .line 109
    invoke-static {v1, v2, v3}, Lcom/adjust/sdk/Util;->mergeParameters(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "partner_params"

    .line 108
    invoke-static {v0, v2, v1}, Lcom/adjust/sdk/b;->addMapJson(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    :cond_0
    sget-object v1, Lcom/adjust/sdk/ActivityKind;->EVENT:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v1}, Lcom/adjust/sdk/b;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v1

    const-string v2, "/event"

    .line 112
    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    .line 1330
    iget-object v2, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-array v2, v3, [Ljava/lang/Object;

    .line 1331
    iget-object v3, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "\'%s\'"

    invoke-static {v3, v2}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1333
    iget-object v5, p1, Lcom/adjust/sdk/AdjustEvent;->revenue:Ljava/lang/Double;

    aput-object v5, v2, v4

    iget-object v4, p1, Lcom/adjust/sdk/AdjustEvent;->currency:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/adjust/sdk/AdjustEvent;->eventToken:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "(%.5f %s, \'%s\')"

    invoke-static {v3, v2}, Lcom/adjust/sdk/Util;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    :goto_0
    invoke-virtual {v1, v2}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    if-eqz p2, :cond_2

    .line 117
    iget-object p2, p1, Lcom/adjust/sdk/AdjustEvent;->callbackParameters:Ljava/util/Map;

    invoke-virtual {v1, p2}, Lcom/adjust/sdk/ActivityPackage;->setCallbackParameters(Ljava/util/Map;)V

    .line 118
    iget-object p1, p1, Lcom/adjust/sdk/AdjustEvent;->partnerParameters:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/adjust/sdk/ActivityPackage;->setPartnerParameters(Ljava/util/Map;)V

    :cond_2
    return-object v1
.end method

.method public final buildInfoPackage(Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/adjust/sdk/b;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "source"

    .line 152
    invoke-static {v0, v1, p1}, Lcom/adjust/sdk/b;->addString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object p1, Lcom/adjust/sdk/ActivityKind;->INFO:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, p1}, Lcom/adjust/sdk/b;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object p1

    const-string v1, "/sdk_info"

    .line 155
    invoke-virtual {p1, v1}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v1, ""

    .line 156
    invoke-virtual {p1, v1}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1, v0}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object p1
.end method

.method public final buildSessionPackage(Z)Lcom/adjust/sdk/ActivityPackage;
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Lcom/adjust/sdk/b;->a(Z)Ljava/util/Map;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/adjust/sdk/ActivityKind;->SESSION:Lcom/adjust/sdk/ActivityKind;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/b;->a(Lcom/adjust/sdk/ActivityKind;)Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    const-string v1, "/session"

    .line 90
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setPath(Ljava/lang/String;)V

    const-string v1, ""

    .line 91
    invoke-virtual {v0, v1}, Lcom/adjust/sdk/ActivityPackage;->setSuffix(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityPackage;->setParameters(Ljava/util/Map;)V

    return-object v0
.end method
