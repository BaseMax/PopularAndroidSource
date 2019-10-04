.class public final Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;
.super Landroidx/preference/TwoStatePreference;
.source "ScheduleUpdatePreference.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;,
        Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;
    }
.end annotation


# instance fields
.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

.field public X:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

.field public final Y:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;-><init>(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->Y:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;

    const v0, 0x7f0d00ce

    .line 4
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->d(I)V

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Lb/x/I;->CheckBoxPreference:[I

    .line 6
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->R()V

    const/4 p2, 0x4

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->c(Ljava/lang/CharSequence;)V

    const/4 p2, 0x3

    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->e(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILh/f/b/f;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f0401f4

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final O()Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->X:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

    return-object v0
.end method

.method public final P()Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->W:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->S:I

    iget v1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->T:I

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->U:I

    iget v2, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->V:I

    invoke-virtual {p0, v1, v2}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(II)I

    move-result v1

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    rsub-int v1, v0, 0x5a0

    .line 3
    :goto_0
    div-int/lit8 v0, v1, 0x3c

    .line 4
    rem-int/lit8 v1, v1, 0x3c

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->S:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->T:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->U:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->V:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->Q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x7f1001ad

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p2

    return p1
.end method

.method public final a(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public final a(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    .line 8
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->P:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->M()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->M()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {p2}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->P:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->L()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->L()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {p2}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Ljava/lang/CharSequence;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    :cond_2
    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    .line 17
    :goto_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq v1, p2, :cond_4

    .line 18
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public a(Lb/x/B;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Lb/x/B;)V

    if-eqz p1, :cond_0

    const v0, 0x7f0a00f7

    .line 3
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->c(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->b(Lb/x/B;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->X:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

    return-void
.end method

.method public final a(Ljava/util/Calendar;)V
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->U:I

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->V:I

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->R()V

    return-void
.end method

.method public final a(Landroid/content/res/TypedArray;IIZ)Z
    .locals 0

    .line 20
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 21
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method

.method public b(Lb/x/B;)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0a0361

    .line 5
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0384

    .line 6
    invoke-virtual {p1, v1}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "timeView"

    .line 7
    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Landroid/widget/TextView;Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->c(Lb/x/B;)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->W:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

    return-void
.end method

.method public final b(Ljava/util/Calendar;)V
    .locals 1

    const-string v0, "calendar"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->S:I

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->T:I

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->R()V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 11
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->Y:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-boolean v0, p0, Landroidx/preference/TwoStatePreference;->P:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final c(Lb/x/B;)V
    .locals 4

    const v0, 0x7f0a0356

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lc/c/a/n/x/a/a;

    invoke-direct {v2, p0}, Lc/c/a/n/x/a/a;-><init>(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a015b

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lc/c/a/n/x/a/b;

    invoke-direct {v3, p0}, Lc/c/a/n/x/a/b;-><init>(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.widget.Button"

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/Button;

    .line 4
    invoke-virtual {p1, v1}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/widget/Button;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->S:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->T:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->U:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->V:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 9
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(I)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lh/f/b/n;->a:Lh/f/b/n;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%02d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
