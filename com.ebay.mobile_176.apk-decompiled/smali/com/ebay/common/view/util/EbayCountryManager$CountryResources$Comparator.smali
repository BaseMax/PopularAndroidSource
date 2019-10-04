.class public Lcom/ebay/common/view/util/EbayCountryManager$CountryResources$Comparator;
.super Ljava/lang/Object;
.source "EbayCountryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources$Comparator;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;)I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources$Comparator;->collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->getCountryName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;->getCountryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 318
    check-cast p1, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    check-cast p2, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/util/EbayCountryManager$CountryResources$Comparator;->compare(Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;)I

    move-result p1

    return p1
.end method
