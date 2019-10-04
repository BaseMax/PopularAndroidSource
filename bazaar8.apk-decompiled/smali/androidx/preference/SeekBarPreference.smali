.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Landroid/widget/SeekBar;

.field public T:Landroid/widget/TextView;

.field public U:Z

.field public V:Z

.field public W:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public X:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 12
    sget v0, Lb/x/C;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Lb/x/J;

    invoke-direct {v0, p0}, Lb/x/J;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3
    new-instance v0, Lb/x/K;

    invoke-direct {v0, p0}, Lb/x/K;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/view/View$OnKeyListener;

    .line 4
    sget-object v0, Lb/x/I;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lb/x/I;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->O:I

    .line 6
    sget p2, Lb/x/I;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->g(I)V

    .line 7
    sget p2, Lb/x/I;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->h(I)V

    .line 8
    sget p2, Lb/x/I;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->U:Z

    .line 9
    sget p2, Lb/x/I;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->V:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public F()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->F()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->a:I

    .line 5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->O:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    .line 6
    iget v0, p0, Landroidx/preference/SeekBarPreference;->P:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    return-object v1
.end method

.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(IZ)V
    .locals 2

    .line 21
    iget v0, p0, Landroidx/preference/SeekBarPreference;->O:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 22
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->P:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 23
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    if-eq p1, v0, :cond_3

    .line 24
    iput p1, p0, Landroidx/preference/SeekBarPreference;->N:I

    .line 25
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 26
    iget v1, p0, Landroidx/preference/SeekBarPreference;->N:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(I)Z

    if-eqz p2, :cond_3

    .line 28
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_3
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Landroid/os/Parcelable;)V

    return-void

    .line 36
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 37
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 38
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->a:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    .line 39
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->O:I

    .line 40
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->P:I

    .line 41
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    return-void
.end method

.method public a(Landroid/widget/SeekBar;)V
    .locals 2

    .line 29
    iget v0, p0, Landroidx/preference/SeekBarPreference;->O:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    iget v1, p0, Landroidx/preference/SeekBarPreference;->N:I

    if-eq v0, v1, :cond_1

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->a(IZ)V

    goto :goto_0

    .line 33
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->O:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lb/x/B;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Lb/x/B;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->X:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3
    sget v0, Lb/x/E;->seekbar:I

    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    .line 4
    sget v0, Lb/x/E;->seekbar_value:I

    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    .line 5
    iget-boolean p1, p0, Landroidx/preference/SeekBarPreference;->V:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    .line 9
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->W:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->P:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->O:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 13
    iget p1, p0, Landroidx/preference/SeekBarPreference;->Q:I

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->Q:I

    .line 16
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->O:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->T:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 18
    iget v0, p0, Landroidx/preference/SeekBarPreference;->N:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_3
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->S:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->i(I)V

    return-void
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->O:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->P:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/preference/SeekBarPreference;->P:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_1
    return-void
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->Q:I

    if-eq p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->P:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->O:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->Q:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->a(IZ)V

    return-void
.end method
