.class public final Lcab/snapp/passenger/units/top_up_payment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/text/DecimalFormat;

.field private d:Ljava/text/DecimalFormat;

.field private e:Z

.field private f:Landroid/widget/EditText;

.field private g:Z

.field private h:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 77
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->d:Ljava/text/DecimalFormat;

    .line 78
    iput-boolean v2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->e:Z

    .line 80
    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    .line 81
    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->b:Z

    .line 86
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    .line 87
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$a$gvtUlZ_FenFivPpyMI9qf1bZVrI;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$a$gvtUlZ_FenFivPpyMI9qf1bZVrI;-><init>(Lcab/snapp/passenger/units/top_up_payment/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/16 p3, 0x43

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 88
    :goto_0
    iput-boolean p2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->g:Z

    return p1
.end method

.method public static synthetic lambda$gvtUlZ_FenFivPpyMI9qf1bZVrI(Lcab/snapp/passenger/units/top_up_payment/a;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/top_up_payment/a;->a(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 117
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput-boolean v2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->g:Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 128
    iget-boolean v3, p0, Lcab/snapp/passenger/units/top_up_payment/a;->g:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "0"

    const-string v5, " "

    const-string v6, ""

    if-eqz v3, :cond_3

    .line 130
    :try_start_1
    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 132
    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v3, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 157
    :goto_0
    iput-boolean v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->g:Z

    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 164
    :goto_1
    iget-object v3, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    .line 165
    iget-object v7, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v7}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v7

    invoke-virtual {v7}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    goto :goto_2

    .line 172
    :cond_4
    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    invoke-virtual {v1, v7}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    .line 174
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 178
    iget-boolean p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->e:Z

    const v1, 0x7f1201d1

    if-eqz p1, :cond_6

    .line 180
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 182
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 186
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 192
    :cond_6
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 194
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/d;->convertEngToPersianNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 198
    :cond_7
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->d:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 202
    :goto_3
    iget-boolean v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->b:Z

    if-eqz v1, :cond_8

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_8
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    iget-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, v0

    add-int/2addr v3, p1

    if-lez v3, :cond_9

    .line 212
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-gt v3, p1, :cond_9

    .line 214
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 219
    :cond_9
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 224
    :cond_a
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :catch_0
    :goto_4
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->f:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final getPaymentAmount()Ljava/lang/Number;
    .locals 1

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/a;->h:Ljava/lang/Number;

    return-object v0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 247
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/a;->c:Ljava/text/DecimalFormat;

    .line 249
    invoke-virtual {p2}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p2

    .line 248
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcab/snapp/passenger/units/top_up_payment/a;->e:Z

    return-void
.end method
