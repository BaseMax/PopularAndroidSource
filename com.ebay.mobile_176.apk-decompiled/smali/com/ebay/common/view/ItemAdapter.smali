.class public abstract Lcom/ebay/common/view/ItemAdapter;
.super Ljava/lang/Object;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final resources:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ebay/common/view/ItemAdapter;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected final formatCurrency(DLjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-static {p3, p1, p2, p4}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final formatCurrency(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 61
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ebay/common/view/ItemAdapter;->formatCurrency(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Lcom/ebay/common/view/ViewCache;)V
    .locals 0

    return-void
.end method

.method public abstract markItemAsVisited(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;)V"
        }
    .end annotation
.end method

.method public refresh(Landroid/widget/AbsListView;)V
    .locals 0

    return-void
.end method

.method public refresh(Landroid/widget/ExpandableListView;)V
    .locals 0

    return-void
.end method

.method public abstract setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;)V"
        }
    .end annotation
.end method

.method public abstract setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/view/ViewCache;",
            "TItem;I)V"
        }
    .end annotation
.end method
