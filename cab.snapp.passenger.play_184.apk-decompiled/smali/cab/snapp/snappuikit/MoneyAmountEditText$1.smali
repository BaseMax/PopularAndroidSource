.class final Lcab/snapp/snappuikit/MoneyAmountEditText$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/MoneyAmountEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field final synthetic e:Lcab/snapp/snappuikit/MoneyAmountEditText;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/MoneyAmountEditText;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a:I

    const/4 p1, -0x1

    .line 86
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->b:I

    .line 87
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->c:I

    const-string p1, ""

    .line 88
    iput-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(I)V
    .locals 5

    .line 107
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->b:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    const/16 v1, 0x20

    iget v2, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->b:I

    invoke-static {v0, v1, v2}, Lcab/snapp/snappuikit/c/b;->replaceCharAt(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    iget-object v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getAmount(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 116
    iget-object v2, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v2, v0, v1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->getFormattedText(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 119
    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    .line 123
    :goto_0
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    iget v1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/b;->getCursorPositionForNumeralAt(Ljava/lang/CharSequence;I)I

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->c:I

    return-void
.end method

.method private synthetic a(IIILjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->b:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 96
    invoke-interface {p4, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Lcab/snapp/snappuikit/c/b;->isNumeral(C)Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 98
    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->b:I

    .line 100
    :cond_0
    invoke-static {p4, p1}, Lcab/snapp/snappuikit/c/b;->getNumeralsCountBeforePosition(Ljava/lang/CharSequence;I)I

    move-result p1

    iput p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a:I

    return-void
.end method

.method private synthetic a(Landroid/text/Editable;)V
    .locals 7

    .line 130
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 132
    invoke-interface {p1}, Landroid/text/Editable;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 136
    instance-of v6, v5, Landroid/text/method/DigitsKeyListener;

    if-nez v6, :cond_0

    .line 137
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 141
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/InputFilter;

    .line 142
    invoke-interface {p1, v2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    if-eqz v0, :cond_3

    .line 148
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 151
    :cond_3
    iget v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->c:I

    if-ltz v0, :cond_4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 152
    iget-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    iget v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->c:I

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setSelection(I)V

    .line 154
    :cond_4
    iget-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-static {p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->a(Lcab/snapp/snappuikit/MoneyAmountEditText;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0, p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 82
    iget-object p1, p0, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->e:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {p1, p0}, Lcab/snapp/snappuikit/MoneyAmountEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$7MWu5XQqF6mpdNY4Nz8eb79JgRo(Lcab/snapp/snappuikit/MoneyAmountEditText$1;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(I)V

    return-void
.end method

.method public static synthetic lambda$CpHm6o3FoBvp_SEmTb_Iydw7QsU(Lcab/snapp/snappuikit/MoneyAmountEditText$1;IIILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(IIILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$LlGtjcaLcCgbsKWNP5GCsVE54xM(Lcab/snapp/snappuikit/MoneyAmountEditText$1;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(Landroid/text/Editable;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 129
    new-instance v0, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$LlGtjcaLcCgbsKWNP5GCsVE54xM;

    invoke-direct {v0, p0, p1}, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$LlGtjcaLcCgbsKWNP5GCsVE54xM;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText$1;Landroid/text/Editable;)V

    invoke-direct {p0, v0}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7

    .line 92
    new-instance v6, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$CpHm6o3FoBvp_SEmTb_Iydw7QsU;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$CpHm6o3FoBvp_SEmTb_Iydw7QsU;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText$1;IIILjava/lang/CharSequence;)V

    invoke-direct {p0, v6}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 106
    new-instance p1, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$7MWu5XQqF6mpdNY4Nz8eb79JgRo;

    invoke-direct {p1, p0, p4}, Lcab/snapp/snappuikit/-$$Lambda$MoneyAmountEditText$1$7MWu5XQqF6mpdNY4Nz8eb79JgRo;-><init>(Lcab/snapp/snappuikit/MoneyAmountEditText$1;I)V

    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText$1;->a(Ljava/lang/Runnable;)V

    return-void
.end method
