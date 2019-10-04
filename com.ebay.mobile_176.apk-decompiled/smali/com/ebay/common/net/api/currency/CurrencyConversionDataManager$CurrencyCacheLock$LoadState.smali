.class public final enum Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;
.super Ljava/lang/Enum;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "LoadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

.field public static final enum DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

.field public static final enum NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

.field public static final enum PENDING:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    const-string v1, "NEVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    const-string v1, "PENDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->PENDING:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    const/4 v0, 0x3

    .line 104
    new-array v0, v0, [Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->NEVER:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->PENDING:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->DONE:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->$VALUES:[Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;
    .locals 1

    .line 104
    const-class v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;
    .locals 1

    .line 104
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->$VALUES:[Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    invoke-virtual {v0}, [Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$CurrencyCacheLock$LoadState;

    return-object v0
.end method
