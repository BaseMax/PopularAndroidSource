.class public abstract Lb/x/r;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Lb/x/y$c;
.implements Lb/x/y$a;
.implements Lb/x/y$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/x/r$a;,
        Lb/x/r$b;,
        Lb/x/r$d;,
        Lb/x/r$c;
    }
.end annotation


# instance fields
.field public Y:Lb/x/y;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public aa:Z

.field public ba:Z

.field public ca:Landroid/content/Context;

.field public da:I

.field public final ea:Lb/x/r$a;

.field public fa:Landroid/os/Handler;

.field public final ga:Ljava/lang/Runnable;

.field public ha:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    sget v0, Lb/x/F;->preference_list_fragment:I

    iput v0, p0, Lb/x/r;->da:I

    .line 3
    new-instance v0, Lb/x/r$a;

    invoke-direct {v0, p0}, Lb/x/r$a;-><init>(Lb/x/r;)V

    iput-object v0, p0, Lb/x/r;->ea:Lb/x/r$a;

    .line 4
    new-instance v0, Lb/x/p;

    invoke-direct {v0, p0}, Lb/x/p;-><init>(Lb/x/r;)V

    iput-object v0, p0, Lb/x/r;->fa:Landroid/os/Handler;

    .line 5
    new-instance v0, Lb/x/q;

    invoke-direct {v0, p0}, Lb/x/q;-><init>(Lb/x/r;)V

    iput-object v0, p0, Lb/x/r;->ga:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public La()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Na()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Lb/x/r;->b(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 3
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->C()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/x/r;->Qa()V

    return-void
.end method

.method public Ma()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Na()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/r;->Z:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public Oa()Lb/x/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    return-object v0
.end method

.method public Pa()Landroidx/preference/PreferenceScreen;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0}, Lb/x/y;->g()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public Qa()V
    .locals 0

    return-void
.end method

.method public Ra()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public Sa()V
    .locals 0

    return-void
.end method

.method public final Ta()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/x/r;->fa:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/x/r;->fa:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final Ua()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Va()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->E()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/x/r;->Sa()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lb/x/r;->ca:Landroid/content/Context;

    sget-object v1, Lb/x/I;->PreferenceFragmentCompat:[I

    sget v2, Lb/x/C;->preferenceFragmentCompatStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lb/x/I;->PreferenceFragmentCompat_android_layout:I

    iget v2, p0, Lb/x/r;->da:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lb/x/r;->da:I

    .line 3
    sget v1, Lb/x/I;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    sget v2, Lb/x/I;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 5
    sget v5, Lb/x/I;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    iget-object v0, p0, Lb/x/r;->ca:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8
    iget v0, p0, Lb/x/r;->da:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x102003f

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lb/x/r;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iput-object p1, p0, Lb/x/r;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iget-object p3, p0, Lb/x/r;->ea:Lb/x/r$a;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 15
    invoke-virtual {p0, v1}, Lb/x/r;->a(Landroid/graphics/drawable/Drawable;)V

    if-eq v2, v4, :cond_0

    .line 16
    invoke-virtual {p0, v2}, Lb/x/r;->f(I)V

    .line 17
    :cond_0
    iget-object p1, p0, Lb/x/r;->ea:Lb/x/r$a;

    invoke-virtual {p1, v5}, Lb/x/r$a;->b(Z)V

    .line 18
    iget-object p1, p0, Lb/x/r;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 19
    iget-object p1, p0, Lb/x/r;->Z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lb/x/r;->fa:Landroid/os/Handler;

    iget-object p3, p0, Lb/x/r;->ga:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Could not create RecyclerView"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1

    .line 40
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {v0, p1}, Lb/x/y;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lb/x/r;->ea:Lb/x/r$a;

    invoke-virtual {v0, p1}, Lb/x/r$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 25
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->c(Landroid/os/Bundle;)V

    .line 28
    :cond_0
    iget-boolean p1, p0, Lb/x/r;->aa:Z

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lb/x/r;->La()V

    .line 30
    iget-object p1, p0, Lb/x/r;->ha:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lb/x/r;->ha:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lb/x/r;->ba:Z

    return-void
.end method

.method public a(Landroidx/preference/Preference;)V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lb/x/r$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lb/x/r$b;

    .line 44
    invoke-interface {v0, p0, p1}, Lb/x/r$b;->a(Lb/x/r;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v2

    instance-of v2, v2, Lb/x/r$b;

    if-eqz v2, :cond_1

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    check-cast v0, Lb/x/r$b;

    .line 47
    invoke-interface {v0, p0, p1}, Lb/x/r$b;->a(Lb/x/r;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Lb/o/a/n;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Lb/o/a/n;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 49
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 50
    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/x/e;->c(Ljava/lang/String;)Lb/x/e;

    move-result-object p1

    goto :goto_1

    .line 51
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/x/h;->c(Ljava/lang/String;)Lb/x/h;

    move-result-object p1

    goto :goto_1

    .line 53
    :cond_5
    instance-of v0, p1, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/x/k;->c(Ljava/lang/String;)Lb/x/k;

    move-result-object p1

    .line 55
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment;I)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Lb/o/a/n;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lb/x/r$d;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lb/x/r$d;

    .line 36
    invoke-interface {v0, p0, p1}, Lb/x/r$d;->a(Lb/x/r;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    instance-of v0, v0, Lb/x/r$d;

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    check-cast v0, Lb/x/r$d;

    .line 39
    invoke-interface {v0, p0, p1}, Lb/x/r$d;->a(Lb/x/r;Landroidx/preference/PreferenceScreen;)Z

    :cond_1
    return-void
.end method

.method public b(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$a;
    .locals 1

    .line 8
    new-instance v0, Lb/x/w;

    invoke-direct {v0, p1}, Lb/x/w;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public b(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lb/x/r$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/x/r;->Ma()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lb/x/r$c;

    .line 4
    invoke-interface {v0, p0, p1}, Lb/x/r$c;->a(Lb/x/r;Landroidx/preference/Preference;)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    instance-of v0, v0, Lb/x/r$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    check-cast v0, Lb/x/r$c;

    .line 7
    invoke-interface {v0, p0, p1}, Lb/x/r$c;->a(Lb/x/r;Landroidx/preference/Preference;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 17
    iget-object p3, p0, Lb/x/r;->ca:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 18
    sget p3, Lb/x/E;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 19
    :cond_0
    sget p3, Lb/x/F;->preference_recyclerview:I

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    invoke-virtual {p0}, Lb/x/r;->Ra()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 22
    new-instance p2, Lb/x/A;

    invoke-direct {p2, p1}, Lb/x/A;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lb/y/a/N;)V

    return-object p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/x/C;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 5
    sget v0, Lb/x/H;->PreferenceThemeOverlay:I

    .line 6
    :cond_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lb/x/r;->ca:Landroid/content/Context;

    .line 7
    new-instance v0, Lb/x/y;

    iget-object v1, p0, Lb/x/r;->ca:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/x/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    .line 8
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0, p0}, Lb/x/y;->a(Lb/x/y$b;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/x/r;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0, p1}, Lb/x/y;->a(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Lb/x/r;->Sa()V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lb/x/r;->aa:Z

    .line 15
    iget-boolean p1, p0, Lb/x/r;->ba:Z

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lb/x/r;->Ta()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lb/x/r;->Ua()V

    .line 7
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    iget-object v1, p0, Lb/x/r;->ca:Landroid/content/Context;

    .line 8
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lb/x/y;->a(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/x/r;->c(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->d(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/x/r;->ea:Lb/x/r$a;

    invoke-virtual {v0, p1}, Lb/x/r$a;->a(I)V

    return-void
.end method

.method public qa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/x/r;->fa:Landroid/os/Handler;

    iget-object v1, p0, Lb/x/r;->ga:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lb/x/r;->fa:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Lb/x/r;->aa:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/x/r;->Va()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/x/r;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->qa()V

    return-void
.end method

.method public ua()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ua()V

    .line 2
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0, p0}, Lb/x/y;->a(Lb/x/y$c;)V

    .line 3
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0, p0}, Lb/x/y;->a(Lb/x/y$a;)V

    return-void
.end method

.method public va()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->va()V

    .line 2
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/x/y;->a(Lb/x/y$c;)V

    .line 3
    iget-object v0, p0, Lb/x/r;->Y:Lb/x/y;

    invoke-virtual {v0, v1}, Lb/x/y;->a(Lb/x/y$a;)V

    return-void
.end method
