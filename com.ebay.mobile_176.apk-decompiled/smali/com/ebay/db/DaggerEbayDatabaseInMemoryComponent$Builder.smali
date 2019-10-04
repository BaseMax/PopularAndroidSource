.class final Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerEbayDatabaseInMemoryComponent.java"

# interfaces
.implements Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private ebayDatabaseInMemoryModule:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

.field private withContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->withContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->ebayDatabaseInMemoryModule:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/ebay/db/EbayDatabaseInMemoryComponent;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->ebayDatabaseInMemoryModule:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    invoke-direct {v0}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->ebayDatabaseInMemoryModule:Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->withContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;-><init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$1;)V

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;
    .locals 0

    .line 57
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->withContext:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic withContext(Landroid/content/Context;)Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->withContext(Landroid/content/Context;)Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;

    move-result-object p1

    return-object p1
.end method
