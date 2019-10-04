.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$a;,
        Landroidx/preference/Preference$c;,
        Landroidx/preference/Preference$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:Landroidx/preference/Preference$a;

.field public I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public J:Landroidx/preference/PreferenceGroup;

.field public K:Z

.field public L:Z

.field public final M:Landroid/view/View$OnClickListener;

.field public a:Landroid/content/Context;

.field public b:Lb/x/y;

.field public c:Lb/x/n;

.field public d:J

.field public e:Z

.field public f:Landroidx/preference/Preference$b;

.field public g:Landroidx/preference/Preference$c;

.field public h:I

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Ljava/lang/String;

.field public o:Landroid/content/Intent;

.field public p:Ljava/lang/String;

.field public q:Landroid/os/Bundle;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/Object;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Lb/x/C;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Lb/i/b/a/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->h:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroidx/preference/Preference;->i:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroidx/preference/Preference;->r:Z

    .line 5
    iput-boolean v2, p0, Landroidx/preference/Preference;->s:Z

    .line 6
    iput-boolean v2, p0, Landroidx/preference/Preference;->t:Z

    .line 7
    iput-boolean v2, p0, Landroidx/preference/Preference;->w:Z

    .line 8
    iput-boolean v2, p0, Landroidx/preference/Preference;->x:Z

    .line 9
    iput-boolean v2, p0, Landroidx/preference/Preference;->y:Z

    .line 10
    iput-boolean v2, p0, Landroidx/preference/Preference;->z:Z

    .line 11
    iput-boolean v2, p0, Landroidx/preference/Preference;->A:Z

    .line 12
    iput-boolean v2, p0, Landroidx/preference/Preference;->C:Z

    .line 13
    iput-boolean v2, p0, Landroidx/preference/Preference;->E:Z

    .line 14
    sget v3, Lb/x/F;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->F:I

    .line 15
    new-instance v3, Lb/x/l;

    invoke-direct {v3, p0}, Lb/x/l;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->M:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 17
    sget-object v3, Lb/x/I;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lb/x/I;->Preference_icon:I

    sget p3, Lb/x/I;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->l:I

    .line 19
    sget p2, Lb/x/I;->Preference_key:I

    sget p3, Lb/x/I;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    .line 20
    sget p2, Lb/x/I;->Preference_title:I

    sget p3, Lb/x/I;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    .line 21
    sget p2, Lb/x/I;->Preference_summary:I

    sget p3, Lb/x/I;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 22
    sget p2, Lb/x/I;->Preference_order:I

    sget p3, Lb/x/I;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->h:I

    .line 23
    sget p2, Lb/x/I;->Preference_fragment:I

    sget p3, Lb/x/I;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    .line 24
    sget p2, Lb/x/I;->Preference_layout:I

    sget p3, Lb/x/I;->Preference_android_layout:I

    sget p4, Lb/x/F;->preference:I

    invoke-static {p1, p2, p3, p4}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->F:I

    .line 25
    sget p2, Lb/x/I;->Preference_widgetLayout:I

    sget p3, Lb/x/I;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->G:I

    .line 26
    sget p2, Lb/x/I;->Preference_enabled:I

    sget p3, Lb/x/I;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->r:Z

    .line 27
    sget p2, Lb/x/I;->Preference_selectable:I

    sget p3, Lb/x/I;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->s:Z

    .line 28
    sget p2, Lb/x/I;->Preference_persistent:I

    sget p3, Lb/x/I;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->t:Z

    .line 29
    sget p2, Lb/x/I;->Preference_dependency:I

    sget p3, Lb/x/I;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Lb/i/b/a/i;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    .line 30
    sget p2, Lb/x/I;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->s:Z

    invoke-static {p1, p2, p2, p3}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->z:Z

    .line 31
    sget p2, Lb/x/I;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->s:Z

    invoke-static {p1, p2, p2, p3}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->A:Z

    .line 32
    sget p2, Lb/x/I;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p2, Lb/x/I;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    sget p2, Lb/x/I;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    sget p2, Lb/x/I;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    sget p2, Lb/x/I;->Preference_shouldDisableView:I

    sget p3, Lb/x/I;->Preference_android_shouldDisableView:I

    .line 37
    invoke-static {p1, p2, p3, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->E:Z

    .line 38
    sget p2, Lb/x/I;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->B:Z

    .line 39
    iget-boolean p2, p0, Landroidx/preference/Preference;->B:Z

    if-eqz p2, :cond_2

    .line 40
    sget p2, Lb/x/I;->Preference_singleLineTitle:I

    sget p3, Lb/x/I;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->C:Z

    .line 41
    :cond_2
    sget p2, Lb/x/I;->Preference_iconSpaceReserved:I

    sget p3, Lb/x/I;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->D:Z

    .line 42
    sget p2, Lb/x/I;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Lb/i/b/a/i;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->y:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->H:Landroidx/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroidx/preference/Preference$a;->b(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->H:Landroidx/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroidx/preference/Preference$a;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->H()V

    return-void
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->K()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    return-void
.end method

.method public F()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->D()V

    .line 3
    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroidx/preference/Preference$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$c;->a(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()Lb/x/y;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lb/x/y;->d()Lb/x/y$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, p0}, Lb/x/y$c;->b(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Landroid/content/Context;

    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public final H()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public I()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final K()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->c(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public a(I)I
    .locals 2

    .line 83
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb/x/n;->a(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 86
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Landroidx/preference/Preference;)I
    .locals 2

    .line 57
    iget v0, p0, Landroidx/preference/Preference;->h:I

    iget v1, p1, Landroidx/preference/Preference;->h:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 59
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, p1}, Lb/x/y;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb/x/n;->a(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 82
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    return-void
.end method

.method public final a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 77
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 45
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 46
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroidx/preference/Preference;->l:I

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    .line 94
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 95
    iget-boolean p1, p0, Landroidx/preference/Preference;->L:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    .line 98
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 41
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/preference/Preference$a;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/preference/Preference;->H:Landroidx/preference/Preference$a;

    return-void
.end method

.method public a(Landroidx/preference/Preference$b;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$b;

    return-void
.end method

.method public a(Landroidx/preference/Preference$c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Landroidx/preference/Preference;->g:Landroidx/preference/Preference$c;

    return-void
.end method

.method public a(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 72
    iget-boolean p1, p0, Landroidx/preference/Preference;->w:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/preference/Preference;->w:Z

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Z)V

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_0
    return-void
.end method

.method public a(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroidx/preference/Preference;->J:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public a(Lb/i/k/a/d;)V
    .locals 0

    return-void
.end method

.method public a(Lb/x/B;)V
    .locals 6

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/Preference;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    iget v1, p0, Landroidx/preference/Preference;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v0, 0x1020016

    .line 4
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-boolean v3, p0, Landroidx/preference/Preference;->B:Z

    if-eqz v3, :cond_1

    .line 10
    iget-boolean v3, p0, Landroidx/preference/Preference;->C:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    const v0, 0x1020010

    .line 12
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Ljava/lang/CharSequence;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    const v0, 0x1020006

    .line 18
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v3, 0x4

    if-eqz v0, :cond_9

    .line 19
    iget v4, p0, Landroidx/preference/Preference;->l:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 20
    :cond_4
    iget-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_5

    .line 21
    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/preference/Preference;->l:I

    invoke-static {v4, v5}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    .line 22
    :cond_5
    iget-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 23
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_6
    iget-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 26
    :cond_7
    iget-boolean v4, p0, Landroidx/preference/Preference;->D:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x4

    goto :goto_2

    :cond_8
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_9
    :goto_3
    sget v0, Lb/x/E;->icon_frame:I

    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const v0, 0x102003e

    .line 28
    invoke-virtual {p1, v0}, Lb/x/B;->c(I)Landroid/view/View;

    move-result-object v0

    :cond_a
    if-eqz v0, :cond_d

    .line 29
    iget-object v4, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 31
    :cond_b
    iget-boolean v1, p0, Landroidx/preference/Preference;->D:Z

    if-eqz v1, :cond_c

    const/4 v2, 0x4

    :cond_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    :cond_d
    :goto_4
    iget-boolean v0, p0, Landroidx/preference/Preference;->E:Z

    if-eqz v0, :cond_e

    .line 33
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->w()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    goto :goto_5

    .line 34
    :cond_e
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    .line 35
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->y()Z

    move-result v0

    .line 36
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 37
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 38
    iget-boolean v0, p0, Landroidx/preference/Preference;->z:Z

    invoke-virtual {p1, v0}, Lb/x/B;->b(Z)V

    .line 39
    iget-boolean v0, p0, Landroidx/preference/Preference;->A:Z

    invoke-virtual {p1, v0}, Lb/x/B;->c(Z)V

    return-void
.end method

.method public a(Lb/x/y;)V
    .locals 2

    .line 61
    iput-object p1, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    .line 62
    iget-boolean v0, p0, Landroidx/preference/Preference;->e:Z

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lb/x/y;->b()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->d:J

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    return-void
.end method

.method public a(Lb/x/y;J)V
    .locals 0

    .line 65
    iput-wide p2, p0, Landroidx/preference/Preference;->d:J

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    const/4 p2, 0x0

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Lb/x/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 49
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_2
    return-void
.end method

.method public a(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Z)Z
    .locals 2

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb/x/n;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 90
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lb/x/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Landroidx/preference/Preference;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Landroidx/preference/Preference;->L:Z

    .line 35
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()Landroid/os/Parcelable;

    move-result-object v0

    .line 36
    iget-boolean v1, p0, Landroidx/preference/Preference;->L:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 37
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroidx/preference/Preference;)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->I:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->I:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public b(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 11
    iget-boolean p1, p0, Landroidx/preference/Preference;->x:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/preference/Preference;->x:Z

    .line 13
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Z)V

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 8
    iget-object v0, p0, Landroidx/preference/Preference;->I:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 3

    .line 26
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, -0x1

    .line 27
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lb/x/n;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public b(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lb/x/n;->b(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iput p1, p0, Landroidx/preference/Preference;->l:I

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Landroidx/preference/Preference;)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/preference/Preference;->I:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lb/x/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public c(Z)Z
    .locals 3

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 13
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lb/x/n;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 17
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->F:I

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->h:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/preference/Preference;->h:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->K:Z

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/preference/Preference;->d:J

    return-wide v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->J:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    return-object v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public j()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    return-object v0
.end method

.method public l()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->F:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->h:I

    return v0
.end method

.method public p()Lb/x/n;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->c:Lb/x/n;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lb/x/y;->f()Lb/x/n;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Lb/x/y;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    return-object v0
.end method

.method public r()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Lb/x/n;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->b:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->G:I

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->t:Z

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->s:Z

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->y:Z

    return v0
.end method
