.class Lcom/yandex/metrica/impl/ob/eu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/yandex/metrica/impl/ob/eu$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(IJLandroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/yandex/metrica/impl/ob/eu$a;->a:I

    .line 45
    iput-wide p2, p0, Lcom/yandex/metrica/impl/ob/eu$a;->b:J

    .line 46
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/eu$a;->c:Landroid/content/pm/ResolveInfo;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/yandex/metrica/impl/ob/ff;)V
    .locals 4

    .line 1075
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1077
    invoke-static {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1079
    invoke-static {p1, v0, v3}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 1081
    invoke-static {p1, v0, v3}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    const-string v3, "android.permission.INTERNET"

    .line 1082
    invoke-static {p1, v0, v3}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    .line 1083
    iget-boolean v0, p3, Lcom/yandex/metrica/impl/ob/ff;->d:Z

    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v1, v0

    .line 1090
    iget-object v0, p3, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/yandex/metrica/impl/ob/ff;->a:Lcom/yandex/metrica/impl/ob/fi;

    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/fi;->i:Z

    :goto_0
    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v1, v0

    .line 1094
    iget-object v0, p3, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p3, Lcom/yandex/metrica/impl/ob/ff;->b:Lcom/yandex/metrica/impl/ob/fe;

    iget-boolean v2, p3, Lcom/yandex/metrica/impl/ob/fe;->i:Z

    :goto_1
    mul-int/lit8 v2, v2, 0x40

    add-int/2addr v1, v2

    .line 40
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)J

    move-result-wide v2

    .line 39
    invoke-direct {p0, v1, v2, v3, p2}, Lcom/yandex/metrica/impl/ob/eu$a;-><init>(IJLandroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)J
    .locals 2

    .line 63
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 64
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 101
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/eu$a;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/yandex/metrica/impl/ob/eu$a;->a:I

    return p0
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/eu$a;)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/eu$a;->c:Landroid/content/pm/ResolveInfo;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/eu$a;)I
    .locals 5

    .line 51
    iget v0, p0, Lcom/yandex/metrica/impl/ob/eu$a;->a:I

    iget v1, p1, Lcom/yandex/metrica/impl/ob/eu$a;->a:I

    if-eq v0, v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/yandex/metrica/impl/ob/eu$a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/eu$a;->b:J

    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/eu$a;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p1, Lcom/yandex/metrica/impl/ob/eu$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/eu$a;->c:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/eu$a;->c:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/yandex/metrica/impl/ob/eu$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/eu$a;->a(Lcom/yandex/metrica/impl/ob/eu$a;)I

    move-result p1

    return p1
.end method
