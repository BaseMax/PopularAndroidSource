.class public final Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;
.super Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;
.source "CurrencyConversionDataManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams<",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 609
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams$1;

    invoke-direct {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams$1;-><init>()V

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
    .locals 2

    .line 603
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$1;)V

    return-object v0
.end method

.method protected bridge synthetic createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/DataManager;
    .locals 0

    .line 590
    invoke-virtual {p0, p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;->createManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    move-result-object p1

    return-object p1
.end method
