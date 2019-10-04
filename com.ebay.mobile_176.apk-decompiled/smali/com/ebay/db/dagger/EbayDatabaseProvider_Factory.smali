.class public final Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;
.super Ljava/lang/Object;
.source "EbayDatabaseProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/db/dagger/EbayDatabaseProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final migrationsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "[",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation
.end field

.field private final nonFatalReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "[",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->migrationsProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->nonFatalReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "[",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newEbayDatabaseProvider(Landroid/content/Context;[Landroidx/room/migration/Migration;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/room/migration/Migration;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseProvider;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/db/dagger/EbayDatabaseProvider;-><init>(Landroid/content/Context;[Landroidx/room/migration/Migration;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "[",
            "Landroidx/room/migration/Migration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nonfatalreporter/NonFatalReporter;",
            ">;)",
            "Lcom/ebay/db/dagger/EbayDatabaseProvider;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/ebay/db/dagger/EbayDatabaseProvider;

    .line 36
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/room/migration/Migration;

    invoke-direct {v0, p0, p1, p2}, Lcom/ebay/db/dagger/EbayDatabaseProvider;-><init>(Landroid/content/Context;[Landroidx/room/migration/Migration;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/db/dagger/EbayDatabaseProvider;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->migrationsProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->nonFatalReporterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/db/dagger/EbayDatabaseProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/db/dagger/EbayDatabaseProvider_Factory;->get()Lcom/ebay/db/dagger/EbayDatabaseProvider;

    move-result-object v0

    return-object v0
.end method
