.class public final Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;
.super Ljava/lang/Object;
.source "SearchGsonTypeRegistrant_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;->INSTANCE:Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;
    .locals 1

    .line 20
    sget-object v0, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;->INSTANCE:Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;

    return-object v0
.end method

.method public static newSearchGsonTypeRegistrant()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;
    .locals 1

    .line 24
    new-instance v0, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;
    .locals 1

    .line 16
    new-instance v0, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;

    invoke-direct {v0}, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;
    .locals 1

    .line 12
    invoke-static {}, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;->provideInstance()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant_Factory;->get()Lcom/ebay/common/net/api/search/SearchGsonTypeRegistrant;

    move-result-object v0

    return-object v0
.end method
