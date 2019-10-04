.class public final Lcab/snapp/passenger/a/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/h$a;,
        Lcab/snapp/passenger/a/h$d;,
        Lcab/snapp/passenger/a/h$b;,
        Lcab/snapp/passenger/a/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_HEADER:I = 0x0

.field public static final ITEM_TYPE_ITEM:I = 0x1

.field public static final ITEM_TYPE_LOADING:I = 0x2


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j/b<",
            "Lcab/snapp/passenger/a/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/h$a;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    invoke-static {}, Lio/reactivex/j/b;->create()Lio/reactivex/j/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/a/h;->b:Lio/reactivex/j/b;

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/a/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/a/h$a;Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p2, p0, Lcab/snapp/passenger/a/h;->b:Lio/reactivex/j/b;

    invoke-virtual {p2, p1}, Lio/reactivex/j/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$-uguQ3mt45udZB8VfXaCRwx533w(Lcab/snapp/passenger/a/h;Lcab/snapp/passenger/a/h$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/h;->a(Lcab/snapp/passenger/a/h$a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemClicks()Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/a/h$a;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcab/snapp/passenger/a/h;->b:Lio/reactivex/j/b;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcab/snapp/passenger/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/a/h$a;

    invoke-virtual {p1}, Lcab/snapp/passenger/a/h$a;->getType()I

    move-result p1

    return p1
.end method

.method public final getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/a/h$a;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/a/h;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 147
    iget-object v0, p0, Lcab/snapp/passenger/a/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/a/h$a;

    .line 148
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcab/snapp/passenger/a/-$$Lambda$h$-uguQ3mt45udZB8VfXaCRwx533w;

    invoke-direct {v2, p0, p2}, Lcab/snapp/passenger/a/-$$Lambda$h$-uguQ3mt45udZB8VfXaCRwx533w;-><init>(Lcab/snapp/passenger/a/h;Lcab/snapp/passenger/a/h$a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p2}, Lcab/snapp/passenger/a/h$a;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    instance-of v1, p1, Lcab/snapp/passenger/a/h$c;

    if-eqz v1, :cond_7

    .line 158
    check-cast p1, Lcab/snapp/passenger/a/h$c;

    .line 159
    iget-object v1, p2, Lcab/snapp/passenger/a/h$a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    .line 161
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u060c \u062a\u0647\u0631\u0627\u0646\u060c \u062a\u0647\u0631\u0627\u0646\u060c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "\u062a\u0647\u0631\u0627\u0646\u060c"

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->setOriginFormattedAddress(Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->setDestinationFormattedAddress(Ljava/lang/String;)V

    .line 172
    :cond_2
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getFinalPrice()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_3

    .line 179
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getFinalPrice()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->d:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1200e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcab/snapp/passenger/a/h$a;->getRideHistoryInfo()Lcab/snapp/passenger/data/models/RideHistoryInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getMap_url()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 233
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p2

    const v2, 0x7f080279

    invoke-virtual {p2, v2}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->fit()Lcom/squareup/picasso/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/squareup/picasso/x;->centerInside()Lcom/squareup/picasso/x;

    move-result-object p2

    iget-object v2, p1, Lcab/snapp/passenger/a/h$c;->g:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 237
    :cond_4
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result p2

    const/4 v2, 0x7

    if-eq p2, v2, :cond_6

    .line 238
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result p2

    const/4 v2, 0x6

    if-eq p2, v2, :cond_6

    .line 239
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 245
    :cond_5
    iget-object p1, p1, Lcab/snapp/passenger/a/h$c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06004c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void

    .line 241
    :cond_6
    :goto_1
    iget-object p1, p1, Lcab/snapp/passenger/a/h$c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060103

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 252
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 255
    :cond_7
    invoke-virtual {p2}, Lcab/snapp/passenger/a/h$a;->getType()I

    move-result v0

    if-nez v0, :cond_a

    instance-of v0, p1, Lcab/snapp/passenger/a/h$b;

    if-eqz v0, :cond_a

    .line 257
    check-cast p1, Lcab/snapp/passenger/a/h$b;

    .line 258
    iget-object p2, p2, Lcab/snapp/passenger/a/h$a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    .line 260
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSnappDuration()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 262
    iget-object v0, p1, Lcab/snapp/passenger/a/h$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSnappDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_8
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSnappMileage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p1, Lcab/snapp/passenger/a/h$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSnappMileage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_9
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSuccessfulRides()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 272
    iget-object p1, p1, Lcab/snapp/passenger/a/h$b;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getSuccessfulRides()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d008a

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 128
    new-instance p2, Lcab/snapp/passenger/a/h$c;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/h$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0089

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    new-instance p2, Lcab/snapp/passenger/a/h$b;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/h$b;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0087

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 138
    new-instance p2, Lcab/snapp/passenger/a/h$d;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/a/h$d;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
