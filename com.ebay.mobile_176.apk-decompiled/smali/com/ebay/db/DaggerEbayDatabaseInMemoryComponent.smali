.class public final Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;
.super Ljava/lang/Object;
.source "DaggerEbayDatabaseInMemoryComponent.java"

# interfaces
.implements Lcom/ebay/db/EbayDatabaseInMemoryComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;
    }
.end annotation


# instance fields
.field private provideEbayDatabaseProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/db/EbayDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private withContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;->initialize(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;-><init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/ebay/db/EbayDatabaseInMemoryComponent$Builder;
    .locals 2

    .line 22
    new-instance v0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;-><init>(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)V
    .locals 1

    .line 27
    invoke-static {p1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->access$100(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;->withContextProvider:Ljavax/inject/Provider;

    .line 31
    invoke-static {p1}, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;->access$200(Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent$Builder;)Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;->withContextProvider:Ljavax/inject/Provider;

    .line 30
    invoke-static {p1, v0}, Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;->create(Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseInMemoryModule_ProvideEbayDatabaseFactory;

    move-result-object p1

    .line 29
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;->provideEbayDatabaseProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getEbayDatabase()Lcom/ebay/db/EbayDatabase;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ebay/db/DaggerEbayDatabaseInMemoryComponent;->provideEbayDatabaseProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/db/EbayDatabase;

    return-object v0
.end method
