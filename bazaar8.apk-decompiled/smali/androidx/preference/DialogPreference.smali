.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field public N:Ljava/lang/CharSequence;

.field public O:Ljava/lang/CharSequence;

.field public P:Landroid/graphics/drawable/Drawable;

.field public Q:Ljava/lang/CharSequence;

.field public R:Ljava/lang/CharSequence;

.field public S:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 13
    sget v0, Lb/x/C;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lb/i/b/a/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Lb/x/I;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lb/x/I;->DialogPreference_dialogTitle:I

    sget p3, Lb/x/I;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->N:Ljava/lang/CharSequence;

    .line 4
    iget-object p2, p0, Landroidx/preference/DialogPreference;->N:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->N:Ljava/lang/CharSequence;

    .line 6
    :cond_0
    sget p2, Lb/x/I;->DialogPreference_dialogMessage:I

    sget p3, Lb/x/I;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->O:Ljava/lang/CharSequence;

    .line 7
    sget p2, Lb/x/I;->DialogPreference_dialogIcon:I

    sget p3, Lb/x/I;->DialogPreference_android_dialogIcon:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->P:Landroid/graphics/drawable/Drawable;

    .line 8
    sget p2, Lb/x/I;->DialogPreference_positiveButtonText:I

    sget p3, Lb/x/I;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->Q:Ljava/lang/CharSequence;

    .line 9
    sget p2, Lb/x/I;->DialogPreference_negativeButtonText:I

    sget p3, Lb/x/I;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->R:Ljava/lang/CharSequence;

    .line 10
    sget p2, Lb/x/I;->DialogPreference_dialogLayout:I

    sget p3, Lb/x/I;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    invoke-static {p1, p2, p3, p4}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/DialogPreference;->S:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public D()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Lb/x/y;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/x/y;->a(Landroidx/preference/Preference;)V

    return-void
.end method

.method public L()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DialogPreference;->P:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public M()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/DialogPreference;->S:I

    return v0
.end method

.method public N()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DialogPreference;->O:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public O()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DialogPreference;->N:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public P()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DialogPreference;->R:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public Q()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/DialogPreference;->Q:Ljava/lang/CharSequence;

    return-object v0
.end method
