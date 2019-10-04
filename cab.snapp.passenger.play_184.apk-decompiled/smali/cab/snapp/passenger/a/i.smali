.class public final Lcab/snapp/passenger/a/i;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/a/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryDetailRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideHistoryDetailRow;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcab/snapp/passenger/a/i;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/a/i;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcab/snapp/passenger/a/i$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/i;->onBindViewHolder(Lcab/snapp/passenger/a/i$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/a/i$a;I)V
    .locals 11

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/a/i;->b:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcab/snapp/passenger/a/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto/16 :goto_4

    .line 96
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/a/i;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;

    if-eqz v0, :cond_6

    .line 99
    iget-object v1, p1, Lcab/snapp/passenger/a/i$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "price"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1067
    invoke-static {v2}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iget-object v2, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    const v3, 0x7f1200e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, " "

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    const v4, 0x7f1201d1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 118
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_1

    .line 122
    :cond_3
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 124
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/16 v8, 0x12

    const/4 v9, 0x0

    cmpl-double v10, v4, v6

    if-nez v10, :cond_4

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v0, v9, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Lcab/snapp/c/j;->formatDouble(Ljava/lang/Double;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v0, v9, v1, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    :goto_2
    iget-object v0, p1, Lcab/snapp/passenger/a/i$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 136
    :cond_5
    iget-object v1, p1, Lcab/snapp/passenger/a/i$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryDetailRow;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_6
    :goto_3
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    .line 142
    iget-object p1, p1, Lcab/snapp/passenger/a/i$a;->a:Landroid/view/View;

    iget-object p2, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060133

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 146
    :cond_7
    iget-object p1, p1, Lcab/snapp/passenger/a/i$a;->a:Landroid/view/View;

    iget-object p2, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600ec

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/a/i;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/i$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/a/i$a;
    .locals 2

    .line 77
    iget-object p2, p0, Lcab/snapp/passenger/a/i;->a:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 79
    new-instance p2, Lcab/snapp/passenger/a/i$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/i$a;-><init>(Lcab/snapp/passenger/a/i;Landroid/view/View;)V

    return-object p2

    .line 81
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0088

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcab/snapp/passenger/a/i$a;

    invoke-direct {p2, p0, p1}, Lcab/snapp/passenger/a/i$a;-><init>(Lcab/snapp/passenger/a/i;Landroid/view/View;)V

    return-object p2
.end method
