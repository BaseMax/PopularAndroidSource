.class public final Lcab/snapp/passenger/a/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/g$a;,
        Lcab/snapp/passenger/a/g$c;,
        Lcab/snapp/passenger/a/g$b;,
        Lcab/snapp/passenger/a/g$e;,
        Lcab/snapp/passenger/a/g$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_FAVORITE:I = 0x3

.field public static final TYPE_GEOCODE:I = 0x2

.field public static final TYPE_HEADER:I = 0x1


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/GeocodeMasterModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcab/snapp/passenger/a/g$d;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;ZLcab/snapp/passenger/a/g$d;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcab/snapp/passenger/a/g;->e:Z

    .line 83
    iput-object p1, p0, Lcab/snapp/passenger/a/g;->a:Landroid/content/Context;

    .line 84
    iput-object p4, p0, Lcab/snapp/passenger/a/g;->d:Lcab/snapp/passenger/a/g$d;

    .line 85
    iput-boolean p3, p0, Lcab/snapp/passenger/a/g;->e:Z

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;->getFavoriteModelList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;->getFavoriteModelList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZLcab/snapp/passenger/a/g$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/GeocodeMasterModel;",
            ">;Z",
            "Lcab/snapp/passenger/a/g$d;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcab/snapp/passenger/a/g;->e:Z

    .line 102
    iput-object p1, p0, Lcab/snapp/passenger/a/g;->a:Landroid/content/Context;

    .line 103
    iput-object p4, p0, Lcab/snapp/passenger/a/g;->d:Lcab/snapp/passenger/a/g$d;

    .line 104
    iput-object p2, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    .line 105
    iput-boolean p3, p0, Lcab/snapp/passenger/a/g;->e:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/a/g;)Lcab/snapp/passenger/a/g$d;
    .locals 0

    .line 25
    iget-object p0, p0, Lcab/snapp/passenger/a/g;->d:Lcab/snapp/passenger/a/g$d;

    return-object p0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 355
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 357
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 378
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 382
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 387
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcab/snapp/passenger/a/g$e;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/g;->onBindViewHolder(Lcab/snapp/passenger/a/g$e;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/g$e;I)V
    .locals 11

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->a:Landroid/content/Context;

    if-eqz v0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 202
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/a/g$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 204
    iget-object p2, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    const/4 v0, 0x4

    if-eqz p2, :cond_2

    .line 206
    check-cast p1, Lcab/snapp/passenger/a/g$c;

    iget-object p2, p1, Lcab/snapp/passenger/a/g$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v2, 0x7f1201f4

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 207
    iget-boolean p2, p0, Lcab/snapp/passenger/a/g;->e:Z

    if-eqz p2, :cond_1

    .line 209
    iget-object p1, p1, Lcab/snapp/passenger/a/g$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 213
    :cond_1
    iget-object p1, p1, Lcab/snapp/passenger/a/g$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 216
    :cond_2
    iget-object p2, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    if-eqz p2, :cond_f

    .line 218
    check-cast p1, Lcab/snapp/passenger/a/g$c;

    iget-object p2, p1, Lcab/snapp/passenger/a/g$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f1200d1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 219
    iget-object p1, p1, Lcab/snapp/passenger/a/g$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 222
    :cond_3
    instance-of v0, p1, Lcab/snapp/passenger/a/g$b;

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    if-eqz v0, :cond_f

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 228
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    .line 230
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/g$b;

    iget-object v0, v0, Lcab/snapp/passenger/a/g$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1119
    invoke-static {v4}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName_en()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 240
    :cond_5
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/g$b;

    iget-object v0, v0, Lcab/snapp/passenger/a/g$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName_en()Ljava/lang/String;

    move-result-object v4

    .line 3119
    invoke-static {v4}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :cond_6
    :goto_0
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/g$b;

    iget-object v0, v0, Lcab/snapp/passenger/a/g$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2119
    invoke-static {v4}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/g$b;

    iget-object v4, v0, Lcab/snapp/passenger/a/g$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 4119
    invoke-static {v5}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getDistance()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 246
    iget-object v1, v0, Lcab/snapp/passenger/a/g$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 250
    :cond_7
    iget-object v4, v0, Lcab/snapp/passenger/a/g$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 251
    iget-object v4, v0, Lcab/snapp/passenger/a/g$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getDistance()I

    move-result v5

    if-gez v5, :cond_8

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_9

    .line 4136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_9
    const/16 v7, 0x2710

    const-string v8, " km"

    if-ge v5, v7, :cond_c

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 4141
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v6

    const-string v7, "%.1f"

    if-ne v6, v3, :cond_a

    .line 4143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Locale;

    const-string v9, "fa"

    const-string v10, "IR"

    invoke-direct {v6, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4145
    :cond_a
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v3

    const/16 v6, 0x1e

    if-ne v3, v6, :cond_b

    .line 4147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Locale;

    const-string v9, "fr"

    const-string v10, "FR"

    invoke-direct {v6, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4151
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Locale;

    const-string v9, "en"

    const-string v10, "GB"

    invoke-direct {v6, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4156
    :cond_c
    div-int/2addr v5, v6

    const/16 v1, 0x64

    if-lt v5, v1, :cond_d

    const-string v1, "+99 km"

    goto :goto_2

    .line 4163
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5119
    :goto_2
    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    :goto_3
    iget-object v1, v0, Lcab/snapp/passenger/a/g$b;->d:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/f/d;->getIcon(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, v0, Lcab/snapp/passenger/a/g$b;->a:Landroid/view/View;

    new-instance v1, Lcab/snapp/passenger/a/g$1;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/passenger/a/g$1;-><init>(Lcab/snapp/passenger/a/g;Lcab/snapp/passenger/a/g$e;Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 266
    :cond_e
    instance-of v0, p1, Lcab/snapp/passenger/a/g$a;

    if-eqz v0, :cond_f

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    if-eqz v0, :cond_f

    sub-int/2addr p2, v2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/data/models/FavoriteModel;

    .line 271
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/a/g$a;

    iget-object v1, v0, Lcab/snapp/passenger/a/g$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6119
    invoke-static {v2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, v0, Lcab/snapp/passenger/a/g$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    .line 7119
    invoke-static {v2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, v0, Lcab/snapp/passenger/a/g$a;->a:Landroid/view/View;

    new-instance v1, Lcab/snapp/passenger/a/g$2;

    invoke-direct {v1, p0, p1, p2}, Lcab/snapp/passenger/a/g$2;-><init>(Lcab/snapp/passenger/a/g;Lcab/snapp/passenger/a/g$e;Lcab/snapp/passenger/data/models/FavoriteModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    :goto_4
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/g$e;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/g$e;
    .locals 4

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/a/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v2, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    return-object v1

    .line 189
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0047

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 190
    new-instance p2, Lcab/snapp/passenger/a/g$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/g$a;-><init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V

    return-object p2

    .line 186
    :cond_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0048

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 187
    new-instance p2, Lcab/snapp/passenger/a/g$b;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/g$b;-><init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V

    return-object p2

    .line 183
    :cond_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0049

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 184
    new-instance p2, Lcab/snapp/passenger/a/g$c;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/g$c;-><init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V

    return-object p2
.end method
