.class public final Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;
.super Ljava/lang/Object;
.source "RecentSearchEntityFrom1To2_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;

    invoke-direct {v0}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;-><init>()V

    sput-object v0, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;->INSTANCE:Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;
    .locals 1

    .line 21
    sget-object v0, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;->INSTANCE:Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;

    return-object v0
.end method

.method public static newRecentSearchEntityFrom1To2()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;
    .locals 1

    .line 25
    new-instance v0, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;

    invoke-direct {v0}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;
    .locals 1

    .line 17
    new-instance v0, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;

    invoke-direct {v0}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;
    .locals 1

    .line 13
    invoke-static {}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;->provideInstance()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2_Factory;->get()Lcom/ebay/db/migrations/RecentSearchEntityFrom1To2;

    move-result-object v0

    return-object v0
.end method
