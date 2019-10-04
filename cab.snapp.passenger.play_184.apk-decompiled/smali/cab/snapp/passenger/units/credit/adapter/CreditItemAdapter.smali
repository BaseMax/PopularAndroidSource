.class public final Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/g/a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;ILcab/snapp/passenger/data/models/Transaction;Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p4, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->b:Lcab/snapp/passenger/g/a;

    iget-object p1, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    invoke-interface {p4, p1, p2, p3}, Lcab/snapp/passenger/g/a;->onClick(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$Lp9jVhwqyvvVCGfRKjzLh47w_-4(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;ILcab/snapp/passenger/data/models/Transaction;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;ILcab/snapp/passenger/data/models/Transaction;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getClickListener()Lcab/snapp/passenger/g/a;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->b:Lcab/snapp/passenger/g/a;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->onBindViewHolder(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;I)V
    .locals 13

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/Transaction;

    .line 67
    iget-object v1, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 72
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    .line 75
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v3}, Lcab/snapp/c/a/b;->getJalaliTimeDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "\u200e "

    .line 76
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v3}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :goto_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 93
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getTransactionType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const v2, 0x7f120152

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const v2, 0x7f120041

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    const v2, 0x7f12007f

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    const v2, 0x7f120082

    .line 113
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_4
    const v2, 0x7f120080

    .line 116
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 110
    :pswitch_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    :pswitch_6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12007c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 104
    :pswitch_7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 101
    :pswitch_8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 98
    :pswitch_9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_1
    iget-object v3, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDescTv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getDebtor()D

    move-result-wide v2

    const/4 v4, 0x1

    const/16 v5, 0x10

    const-string v6, "  "

    const-wide/16 v7, 0x0

    const v9, 0x7f060098

    const/16 v10, 0x21

    const/4 v11, 0x0

    cmpl-double v12, v2, v7

    if-lez v12, :cond_2

    .line 134
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f06004d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDescTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getDebtor()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    .line 142
    new-instance v3, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f12007d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v3, v6, v11, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 145
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v3, v1, v11, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 147
    iget-object v1, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditActionTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 149
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getCreditor()D

    move-result-wide v2

    cmpl-double v12, v2, v7

    if-lez v12, :cond_3

    .line 151
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDateTv:Landroid/widget/TextView;

    .line 152
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f06004c

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v2, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditDescTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Transaction;->getCreditor()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f120084

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v3, v6, v11, v1, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 162
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v3, v1, v11, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 164
    iget-object v1, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditActionTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_3
    :goto_2
    iget-object v1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->b:Lcab/snapp/passenger/g/a;

    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p1, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->itemCreditContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lcab/snapp/passenger/units/credit/adapter/-$$Lambda$CreditItemAdapter$Lp9jVhwqyvvVCGfRKjzLh47w_-4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcab/snapp/passenger/units/credit/adapter/-$$Lambda$CreditItemAdapter$Lp9jVhwqyvvVCGfRKjzLh47w_-4;-><init>(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;ILcab/snapp/passenger/data/models/Transaction;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;
    .locals 3

    .line 55
    new-instance p2, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004f

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;-><init>(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setClickListener(Lcab/snapp/passenger/g/a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->b:Lcab/snapp/passenger/g/a;

    return-void
.end method

.method public final updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
