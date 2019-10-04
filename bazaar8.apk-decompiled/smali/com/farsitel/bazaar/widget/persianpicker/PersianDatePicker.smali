.class public Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;
.super Landroid/widget/LinearLayout;
.source "PersianDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;
    }
.end annotation


# instance fields
.field public final a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

.field public g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

.field public h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Landroid/widget/NumberPicker$OnValueChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    .line 5
    new-instance p3, Lc/c/a/o/b/f;

    invoke-direct {p3, p0}, Lc/c/a/o/b/f;-><init>(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)V

    iput-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->m:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d010d

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a040a

    .line 7
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    const v0, 0x7f0a021d

    .line 8
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iput-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    const v0, 0x7f0a011c

    .line 9
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iput-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    .line 10
    iget-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    sget-object v0, Lc/c/a/o/b/c;->a:Lc/c/a/o/b/c;

    invoke-virtual {p3, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 11
    iget-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    sget-object v0, Lc/c/a/o/b/a;->a:Lc/c/a/o/b/a;

    invoke-virtual {p3, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 12
    iget-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    sget-object v0, Lc/c/a/o/b/b;->a:Lc/c/a/o/b/b;

    invoke-virtual {p3, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 13
    new-instance p3, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-direct {p3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;-><init>()V

    iput-object p3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    return-object p0
.end method

.method public static synthetic a(I)Ljava/lang/String;
    .locals 1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/o/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    return-object p0
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/o/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;)Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    return-object p0
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/o/b/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 23
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->k:I

    if-lez v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {p0, v1, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(Landroid/widget/NumberPicker;I)V

    .line 25
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(Landroid/widget/NumberPicker;I)V

    .line 26
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a(Landroid/widget/NumberPicker;I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 28
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 29
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    if-le v0, v1, :cond_1

    .line 30
    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    .line 31
    :cond_1
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    if-ge v0, v1, :cond_2

    .line 32
    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 34
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->m:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 35
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 36
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 37
    iget-boolean v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->e:Z

    if-eqz v0, :cond_3

    .line 38
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    sget-object v3, Lc/c/a/o/b/d;->a:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 39
    :cond_3
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b:I

    const/4 v3, 0x0

    if-lt v0, v1, :cond_8

    if-gt v0, v2, :cond_8

    .line 40
    iget-object v4, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v4, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 41
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget-object v4, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->m:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 43
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    const/16 v4, 0x1f

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 44
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    if-gt v0, v4, :cond_7

    if-lt v0, v1, :cond_7

    .line 45
    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b:I

    const/4 v3, 0x6

    const/16 v5, 0x1e

    if-le v1, v3, :cond_4

    if-ge v1, v2, :cond_4

    if-ne v0, v4, :cond_4

    .line 46
    iput v5, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    goto :goto_0

    .line 47
    :cond_4
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    invoke-static {v0}, Lc/c/a/o/b/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    if-ne v0, v4, :cond_5

    .line 49
    iput v5, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    goto :goto_0

    .line 50
    :cond_5
    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_6

    .line 51
    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    .line 52
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 53
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->m:Landroid/widget/NumberPicker$OnValueChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void

    .line 54
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Selected day (%d) must be between 1 and 31"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Selected month (%d) must be between 1 and 12"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    sget-object v0, Lc/c/a/f;->PersianDatePicker:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->j()I

    move-result p2

    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    .line 4
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->e:Z

    .line 5
    iget-object p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->g()I

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    .line 6
    iget-object p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->j()I

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    .line 7
    iget-object p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a:Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-virtual {p2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->h()I

    move-result p2

    iput p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b:I

    .line 8
    iget p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    if-le p2, v0, :cond_0

    .line 9
    iget p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    .line 10
    :cond_0
    iget p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    iget v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    if-ge p2, v0, :cond_1

    .line 11
    iget p2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final a(Landroid/widget/NumberPicker;I)V
    .locals 6

    .line 14
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mSelectionDivider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 18
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getDisplayDate()Ljava/util/Date;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-direct {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(III)V

    .line 3
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPersianDate()Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;
    .locals 4

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-direct {v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v3}, Landroid/widget/NumberPicker;->getValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->a(III)V

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;->a:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->setDisplayDate(Ljava/util/Date;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->getDisplayDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker$SavedState;->a:J

    return-object v1
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setBackgroundColor(I)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setBackgroundColor(I)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setBackgroundColor(I)V

    return-void
.end method

.method public setDisplayDate(Ljava/util/Date;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->setDisplayPersianDate(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;)V

    return-void
.end method

.method public setDisplayPersianDate(Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->j()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->h()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/farsitel/bazaar/widget/persianpicker/PersianCalendar;->g()I

    move-result p1

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    const/16 v4, 0x1d

    const/4 v5, 0x6

    if-le v1, v5, :cond_0

    const/16 v5, 0xc

    if-ge v1, v5, :cond_0

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lc/c/a/o/b/e;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    if-le p1, v4, :cond_2

    const/16 v2, 0x1d

    goto :goto_0

    :cond_2
    move v2, p1

    .line 5
    :goto_0
    iput v0, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    .line 6
    iput v1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->b:I

    .line 7
    iput v2, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->d:I

    .line 8
    iget p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    iget v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    if-le p1, v3, :cond_3

    .line 9
    iget p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 11
    :cond_3
    iget p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    iget v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->c:I

    if-ge p1, v3, :cond_4

    .line 12
    iget p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->l:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    .line 13
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    iget v3, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    invoke-virtual {p1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->f:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {p1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 15
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->g:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {p1, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 16
    iget-object p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->h:Lcom/farsitel/bazaar/widget/persianpicker/NumberPickerWithCustomFont;

    invoke-virtual {p1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->k:I

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a()V

    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->j:I

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a()V

    return-void
.end method

.method public setMinYear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/widget/persianpicker/PersianDatePicker;->a()V

    return-void
.end method
