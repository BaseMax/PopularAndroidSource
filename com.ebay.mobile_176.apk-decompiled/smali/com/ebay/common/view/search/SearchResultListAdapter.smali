.class public Lcom/ebay/common/view/search/SearchResultListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchResultListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/ebay/nautilus/domain/data/EbaySearchListItem;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TItem;>;"
    }
.end annotation


# static fields
.field private static final currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field protected final inflater:Landroid/view/LayoutInflater;

.field private final itemAdapter:Lcom/ebay/common/view/ItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/common/view/ItemAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final itemCount:I

.field private layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CurrencyConversion"

    const-string v2, "Log CurrencyConversion"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/search/SearchResultListAdapter;->currencyLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;IZILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;IZI",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation

    .line 69
    new-instance v7, Lcom/ebay/common/view/DefaultItemAdapter;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, v7

    move-object v1, p1

    move v2, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/view/DefaultItemAdapter;-><init>(Landroid/app/Activity;ZZZIZ)V

    invoke-direct {p0, p1, v7, p2, p5}, Lcom/ebay/common/view/search/SearchResultListAdapter;-><init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZILjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">(TA;ZI",
            "Ljava/util/List<",
            "TItem;>;Z)V"
        }
    .end annotation

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/view/search/SearchResultListAdapter;-><init>(Landroid/app/Activity;IZILjava/util/List;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/common/view/ItemAdapter<",
            "TItem;>;I",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const v0, 0x7f0d00fc

    .line 115
    invoke-direct {p0, p1, v0, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->layout:I

    const-string p4, "layout_inflater"

    .line 116
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 117
    iput-object p2, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    .line 118
    iput p3, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/common/view/ItemAdapter<",
            "TItem;>;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 84
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ebay/common/view/search/SearchResultListAdapter;-><init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/common/view/ItemAdapter<",
            "TItem;>;",
            "Ljava/util/List<",
            "TItem;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 98
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ebay/common/view/search/SearchResultListAdapter;-><init>(Landroid/content/Context;Lcom/ebay/common/view/ItemAdapter;ILjava/util/List;)V

    if-eqz p4, :cond_0

    .line 101
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->layout:I

    :cond_0
    return-void
.end method

.method private final getItemCountHeader(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d010b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 208
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 210
    iget v3, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    const v1, 0x7f10003d

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .line 221
    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 3

    .line 240
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 244
    iget v1, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/ebay/nautilus/domain/data/EbaySearchListItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 124
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return-object v1

    .line 126
    :cond_0
    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 127
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    sub-int/2addr p1, v2

    .line 130
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchResultListAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchResultListAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    move-result-object v0

    if-nez v0, :cond_0

    rsub-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    return-wide v0

    .line 139
    :cond_0
    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/EbaySearchListItem;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 145
    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 149
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    .line 160
    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    invoke-direct {p0, p3}, Lcom/ebay/common/view/search/SearchResultListAdapter;->getItemCountHeader(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 168
    iget-object p2, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 169
    new-instance p3, Lcom/ebay/common/view/ViewCache;

    invoke-direct {p3, p2}, Lcom/ebay/common/view/ViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v0, p3}, Lcom/ebay/common/view/ItemAdapter;->init(Lcom/ebay/common/view/ViewCache;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/common/view/ViewCache;

    .line 178
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/common/view/search/SearchResultListAdapter;->getItem(I)Lcom/ebay/nautilus/domain/data/EbaySearchListItem;

    move-result-object v0

    .line 179
    iput-object v0, p3, Lcom/ebay/common/view/ViewCache;->object:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 181
    iget-object v1, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v1, p3, v0, p1}, Lcom/ebay/common/view/ItemAdapter;->setItem(Lcom/ebay/common/view/ViewCache;Ljava/lang/Object;I)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const v0, 0x7f0802ee

    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageResource(I)V

    .line 187
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setTag(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object p1, p3, Lcom/ebay/common/view/ViewCache;->specialText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 227
    iget v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 234
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public markItemAsVisited(Landroid/view/View;Lcom/ebay/nautilus/domain/data/EbaySearchListItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TItem;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/common/view/ItemAdapter;->markItemAsVisited(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final refresh(Landroid/widget/AbsListView;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->itemAdapter:Lcom/ebay/common/view/ItemAdapter;

    invoke-virtual {v0, p1}, Lcom/ebay/common/view/ItemAdapter;->refresh(Landroid/widget/AbsListView;)V

    return-void
.end method

.method protected setLayout(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/ebay/common/view/search/SearchResultListAdapter;->layout:I

    return-void
.end method
