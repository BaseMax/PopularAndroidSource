.class final Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerEbayDatabaseComponent.java"

# interfaces
.implements Lcom/ebay/db/EbayDatabaseComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/db/DaggerEbayDatabaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private ebayDatabaseModule:Lcom/ebay/db/dagger/EbayDatabaseModule;

.field private withContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$1;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)Landroid/content/Context;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->withContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;)Lcom/ebay/db/dagger/EbayDatabaseModule;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->ebayDatabaseModule:Lcom/ebay/db/dagger/EbayDatabaseModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/ebay/db/EbayDatabaseComponent;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->ebayDatabaseModule:Lcom/ebay/db/dagger/EbayDatabaseModule;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseModule;

    invoke-direct {v0}, Lcom/ebay/db/dagger/EbayDatabaseModule;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->ebayDatabaseModule:Lcom/ebay/db/dagger/EbayDatabaseModule;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->withContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcom/ebay/db/DaggerEbayDatabaseComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ebay/db/DaggerEbayDatabaseComponent;-><init>(Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;Lcom/ebay/db/DaggerEbayDatabaseComponent$1;)V

    return-object v0

    .line 99
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

.method public withContext(Landroid/content/Context;)Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;
    .locals 0

    .line 106
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->withContext:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic withContext(Landroid/content/Context;)Lcom/ebay/db/EbayDatabaseComponent$Builder;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;->withContext(Landroid/content/Context;)Lcom/ebay/db/DaggerEbayDatabaseComponent$Builder;

    move-result-object p1

    return-object p1
.end method
