.class public Landroidx/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 3
    sget v0, Lb/x/C;->preferenceCategoryStyle:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Lb/i/b/a/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->w()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lb/i/k/a/d;)V
    .locals 7

    .line 4
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Lb/i/k/a/d;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lb/i/k/a/d;->e()Lb/i/k/a/d$c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lb/i/k/a/d$c;->c()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Lb/i/k/a/d$c;->d()I

    move-result v2

    .line 9
    invoke-virtual {v0}, Lb/i/k/a/d$c;->a()I

    move-result v3

    .line 10
    invoke-virtual {v0}, Lb/i/k/a/d$c;->b()I

    move-result v4

    const/4 v5, 0x1

    .line 11
    invoke-virtual {v0}, Lb/i/k/a/d$c;->e()Z

    move-result v6

    .line 12
    invoke-static/range {v1 .. v6}, Lb/i/k/a/d$c;->a(IIIIZZ)Lb/i/k/a/d$c;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lb/i/k/a/d;->b(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lb/x/B;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->a(Lb/x/B;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
