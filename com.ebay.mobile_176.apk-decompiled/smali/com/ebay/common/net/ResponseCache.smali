.class public Lcom/ebay/common/net/ResponseCache;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/ResponseCache$ResponseDbHelper;,
        Lcom/ebay/common/net/ResponseCache$RequestCacheDao;
    }
.end annotation


# static fields
.field public static final EXPIRATION_ONE_DAY:J = 0x5265c00L

.field public static final EXPIRATION_SIXTY_DAY:J = 0x134fd9000L

.field private static initialize:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;-><init>(Landroid/content/Context;Lcom/ebay/common/net/ResponseCache$1;)V

    .line 44
    :try_start_0
    sget-boolean p0, Lcom/ebay/common/net/ResponseCache;->initialize:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 46
    sput-boolean p0, Lcom/ebay/common/net/ResponseCache;->initialize:Z

    .line 47
    invoke-virtual {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->deleteExpiredResponses()V

    .line 49
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->getResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-static {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V

    .line 57
    throw p0

    .line 56
    :catch_0
    invoke-static {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static setResponse(Landroid/content/Context;Ljava/lang/String;[BJ)V
    .locals 2

    .line 27
    new-instance v0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;-><init>(Landroid/content/Context;Lcom/ebay/common/net/ResponseCache$1;)V

    .line 30
    :try_start_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p1, p0, p3, p4}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->setResponse(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V

    .line 35
    throw p0
.end method
