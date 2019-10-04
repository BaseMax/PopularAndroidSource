.class public final Lcom/google/android/gms/analytics/j;
.super Lcom/google/android/gms/internal/w;

# interfaces
.implements Lcom/google/android/gms/analytics/u;


# static fields
.field private static a:Ljava/text/DecimalFormat;


# instance fields
.field private final b:Lcom/google/android/gms/internal/z;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/j;-><init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/z;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/w;-><init>(Lcom/google/android/gms/internal/z;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/analytics/j;->b:Lcom/google/android/gms/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/analytics/j;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/analytics/j;->d:Landroid/net/Uri;

    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(D)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/j;->a:Ljava/text/DecimalFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/j;->a:Ljava/text/DecimalFormat;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/j;->a:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/analytics/o;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/analytics/o;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/e;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/e;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e;->zzvt()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object v4, v3

    goto :goto_1

    :cond_2
    instance-of v5, v3, Ljava/lang/Double;

    if-eqz v5, :cond_3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/analytics/j;->a(D)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v5, :cond_5

    const-string v4, "1"

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-class v1, Lcom/google/android/gms/internal/j;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/j;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "t"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvz()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sc"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwe()D

    move-result-wide v2

    const-string v4, "sf"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;D)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwd()Z

    move-result v2

    const-string v3, "ni"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwa()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwb()Z

    move-result v1

    const-string v2, "ate"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_7
    const-class v1, Lcom/google/android/gms/internal/k;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/k;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/k;->zzwf()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cd"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/k;->zzwg()I

    move-result v2

    int-to-double v2, v2

    const-string v4, "a"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;D)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/k;->zzwh()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dr"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-class v1, Lcom/google/android/gms/internal/h;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/h;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/h;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ec"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/h;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ea"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/h;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "el"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/h;->getValue()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "ev"

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;D)V

    :cond_9
    const-class v1, Lcom/google/android/gms/internal/b;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/b;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cn"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cs"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cm"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ck"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->getContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ci"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvn()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gclid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dclid"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->zzvq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aclid"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-class v1, Lcom/google/android/gms/internal/i;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/i;

    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/google/android/gms/internal/i;->zzdrs:Ljava/lang/String;

    const-string v3, "exd"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/google/android/gms/internal/i;->zzdrt:Z

    const-string v2, "exf"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Z)V

    :cond_b
    const-class v1, Lcom/google/android/gms/internal/l;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/l;

    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/google/android/gms/internal/l;->zzdsh:Ljava/lang/String;

    const-string v3, "sn"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/l;->zzdrp:Ljava/lang/String;

    const-string v3, "sa"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/l;->zzdsi:Ljava/lang/String;

    const-string v2, "st"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-class v1, Lcom/google/android/gms/internal/m;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/m;

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/google/android/gms/internal/m;->zzdsj:Ljava/lang/String;

    const-string v3, "utv"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/m;->zzdsk:J

    long-to-double v2, v2

    const-string v4, "utt"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;D)V

    iget-object v2, v1, Lcom/google/android/gms/internal/m;->mCategory:Ljava/lang/String;

    const-string v3, "utc"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/m;->zzdrq:Ljava/lang/String;

    const-string v2, "utl"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-class v1, Lcom/google/android/gms/internal/c;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/c;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/c;->zzvr()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/l;->zzaj(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_f
    const-class v1, Lcom/google/android/gms/internal/d;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/d;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/google/android/gms/internal/d;->zzvs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/l;->zzal(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/j;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_11
    const-class v1, Lcom/google/android/gms/internal/g;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/g;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->zzvu()Lcom/google/android/gms/analytics/a/b;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/a/b;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->zzvx()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/a/c;

    invoke-static {v4}, Lcom/google/android/gms/analytics/l;->zzap(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/a/c;->zzdr(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_6

    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->zzvv()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/analytics/a/a;

    invoke-static {v4}, Lcom/google/android/gms/analytics/l;->zzan(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/a/a;->zzdr(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v3

    goto :goto_7

    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->zzvw()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/analytics/l;->zzas(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x1

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/analytics/a/a;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Lcom/google/android/gms/analytics/l;->zzaq(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_16

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :cond_16
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v9, v10

    :goto_a
    invoke-virtual {v8, v9}, Lcom/google/android/gms/analytics/a/a;->zzdr(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_18
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_b
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    const-class v1, Lcom/google/android/gms/internal/f;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/f;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/f;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ul"

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/google/android/gms/internal/f;->zzdrm:I

    int-to-double v2, v2

    const-string v4, "sd"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;D)V

    iget v2, v1, Lcom/google/android/gms/internal/f;->zzchl:I

    iget v3, v1, Lcom/google/android/gms/internal/f;->zzchm:I

    const-string v4, "sr"

    invoke-static {v0, v4, v2, v3}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;II)V

    iget v2, v1, Lcom/google/android/gms/internal/f;->zzdrn:I

    iget v1, v1, Lcom/google/android/gms/internal/f;->zzdro:I

    const-string v3, "vp"

    invoke-static {v0, v3, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;II)V

    :cond_1b
    const-class v1, Lcom/google/android/gms/internal/a;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/a;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/a;->zzvi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "an"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/a;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/a;->zzvk()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aiid"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/a;->zzvj()Ljava/lang/String;

    move-result-object p0

    const-string v1, "av"

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/analytics/j;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;D)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    invoke-static {p2, p3}, Lcom/google/android/gms/analytics/j;->a(D)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string p2, "1"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/analytics/o;)V
    .locals 13

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/o;->zzuw()Z

    move-result v0

    const-string v1, "Can\'t deliver not submitted measurement"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, "deliver should be called on worker thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ap;->zzgn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/o;->zzus()Lcom/google/android/gms/analytics/o;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/j;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/o;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/analytics/j;->a(Lcom/google/android/gms/analytics/o;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without type"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/bp;->zzf(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvz()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2000
    iget-object p1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/analytics/j;->a(Lcom/google/android/gms/analytics/o;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Ignoring measurement without client id"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/bp;->zzf(Ljava/util/Map;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/j;->b:Lcom/google/android/gms/internal/z;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/z;->zzxi()Lcom/google/android/gms/analytics/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/d;->getAppOptOut()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwe()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvz()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ce;->zza(DLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "Sampling enabled. Hit sampled out. sampling rate"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/w;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/analytics/j;->a(Lcom/google/android/gms/analytics/o;)Ljava/util/Map;

    move-result-object v3

    const-string v0, "v"

    const-string v2, "1"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/y;->zzdtc:Ljava/lang/String;

    const-string v2, "_v"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    const-string v2, "tid"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->b:Lcom/google/android/gms/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/z;->zzxi()Lcom/google/android/gms/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/d;->isDryRunEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dry run is enabled. GoogleAnalytics would have sent"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/w;->zzc(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uid"

    invoke-static {v12, v2, v0}, Lcom/google/android/gms/internal/ce;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/gms/internal/a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/o;->zza(Ljava/lang/Class;)Lcom/google/android/gms/analytics/p;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->zzvi()Ljava/lang/String;

    move-result-object v2

    const-string v4, "an"

    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/ce;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "aid"

    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/ce;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->zzvj()Ljava/lang/String;

    move-result-object v2

    const-string v4, "av"

    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/ce;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->zzvk()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aiid"

    invoke-static {v12, v2, v0}, Lcom/google/android/gms/internal/ce;->zzb(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ac;

    const-wide/16 v5, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzvz()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/analytics/j;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/j;->zzwa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v9, v1, 0x1

    const-wide/16 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ac;-><init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V

    .line 3000
    iget-object v1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/o;->zza(Lcom/google/android/gms/internal/ac;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_s"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/bk;

    .line 4000
    iget-object v1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/z;->zzwt()Lcom/google/android/gms/internal/bp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/o;->zzuu()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/w;Ljava/util/Map;JZ)V

    .line 5000
    iget-object p1, p0, Lcom/google/android/gms/internal/w;->zzdta:Lcom/google/android/gms/internal/z;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/z;->zzwx()Lcom/google/android/gms/internal/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/o;->zza(Lcom/google/android/gms/internal/bk;)V

    return-void
.end method

.method public final zzup()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/j;->d:Landroid/net/Uri;

    return-object v0
.end method
