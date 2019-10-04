.class public final Lc/c/a/e/b/c;
.super Ljava/lang/Object;
.source "DeviceInfoDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/b/c$a;
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh/i/i;

.field public static final b:Lc/c/a/e/b/c$a;


# instance fields
.field public final c:Lh/c;

.field public final d:Lh/c;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Lcom/farsitel/bazaar/data/entity/Language;

.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lh/c;

.field public final m:Lh/c;

.field public final n:Lh/c;

.field public final o:Lh/c;

.field public final p:Lh/c;

.field public final q:Landroid/content/Context;

.field public final r:Lc/c/a/e/d/u/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "width"

    const-string v4, "getWidth()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "height"

    const-string v4, "getHeight()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "simNetworkDetails"

    const-string v4, "getSimNetworkDetails()[I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "simCardMcc"

    const-string v4, "getSimCardMcc()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "simCardMnc"

    const-string v4, "getSimCardMnc()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "cpu"

    const-string v4, "getCpu()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/e/b/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "dpi"

    const-string v4, "getDpi()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/e/b/c;->a:[Lh/i/i;

    new-instance v0, Lc/c/a/e/b/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/b/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/b/c;->b:Lc/c/a/e/b/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/u/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/e/b/c;->r:Lc/c/a/e/d/u/a;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;->a:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$width$2;

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->c:Lh/c;

    .line 3
    sget-object p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$height$2;->a:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$height$2;

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->d:Lh/c;

    const-string p1, "8.3.7"

    .line 4
    iput-object p1, p0, Lc/c/a/e/b/c;->e:Ljava/lang/String;

    const p1, 0xc3633

    int-to-long p1, p1

    .line 5
    iput-wide p1, p0, Lc/c/a/e/b/c;->f:J

    .line 6
    sget-object p1, Lcom/farsitel/bazaar/data/entity/Language;->Companion:Lcom/farsitel/bazaar/data/entity/Language$Companion;

    iget-object p2, p0, Lc/c/a/e/b/c;->r:Lc/c/a/e/d/u/a;

    invoke-virtual {p2}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/data/entity/Language$Companion;->fromLocale(Ljava/util/Locale;)Lcom/farsitel/bazaar/data/entity/Language;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->g:Lcom/farsitel/bazaar/data/entity/Language;

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput p1, p0, Lc/c/a/e/b/c;->h:I

    .line 8
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string p2, "UNKNOWN"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lc/c/a/e/b/c;->i:Ljava/lang/String;

    .line 9
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lc/c/a/e/b/c;->j:Ljava/lang/String;

    .line 10
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Lc/c/a/e/b/c;->k:Ljava/lang/String;

    .line 11
    new-instance p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simNetworkDetails$2;-><init>(Lc/c/a/e/b/c;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->l:Lh/c;

    .line 12
    new-instance p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMcc$2;-><init>(Lc/c/a/e/b/c;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->m:Lh/c;

    .line 13
    new-instance p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMnc$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$simCardMnc$2;-><init>(Lc/c/a/e/b/c;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->n:Lh/c;

    .line 14
    sget-object p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$cpu$2;->a:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$cpu$2;

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->o:Lh/c;

    .line 15
    new-instance p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$dpi$2;

    invoke-direct {p1, p0}, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$dpi$2;-><init>(Lc/c/a/e/b/c;)V

    invoke-static {p1}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/b/c;->p:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/b/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/e/b/c;Lh/f/a/a;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;->c:Lcom/farsitel/bazaar/data/device/DeviceInfoDataSource$getClientId$1;

    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/e/b/c;->a(Lh/f/a/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/e/b/c;)[I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/b/c;->r()[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings.Secure.getStrin\u2026ttings.Secure.ANDROID_ID)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lh/f/a/a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/f/a/a<",
            "Ljava/util/UUID;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "randomUuidGenerator"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/b/c;->r:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->i()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 5
    invoke-interface {p1}, Lh/f/a/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    .line 6
    invoke-static {p1}, Lc/c/a/c/h/i;->a(Ljava/util/UUID;)[B

    move-result-object p1

    .line 7
    invoke-static {p1, v2}, Lcom/farsitel/bazaar/common/util/Base64;->a([BZ)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Base64.encodeWebSafe(uuidArr, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    move-object v0, p1

    .line 10
    iget-object p1, p0, Lc/c/a/e/b/c;->r:Lc/c/a/e/d/u/a;

    invoke-virtual {p1, v0}, Lc/c/a/e/d/u/a;->d(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/b/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/b/c;->f:J

    return-wide v0
.end method

.method public final d()I
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkotlin/TypeCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v2, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 5
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get cid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc/c/a/c/c/a;->c(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return v1

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->o:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->p:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->d:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkotlin/TypeCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v2, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 5
    sget-object v2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get lac "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc/c/a/c/c/a;->c(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return v1

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lcom/farsitel/bazaar/data/entity/Language;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->g:Lcom/farsitel/bazaar/data/entity/Language;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    invoke-static {v0}, Lc/c/a/c/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->q:Landroid/content/Context;

    invoke-static {v0}, Lc/c/a/c/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/b/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/e/b/c;->h:I

    return v0
.end method

.method public final p()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->m:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->n:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final r()[I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->l:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final s()I
    .locals 3

    iget-object v0, p0, Lc/c/a/e/b/c;->c:Lh/c;

    sget-object v1, Lc/c/a/e/b/c;->a:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
