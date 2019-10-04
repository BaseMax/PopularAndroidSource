.class public Lb/x/k;
.super Lb/x/o;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"


# instance fields
.field public ra:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sa:Z

.field public ta:[Ljava/lang/CharSequence;

.field public ua:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/x/o;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/x/k;->ra:Ljava/util/Set;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lb/x/k;
    .locals 3

    .line 1
    new-instance v0, Lb/x/k;

    invoke-direct {v0}, Lb/x/k;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->m(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final Sa()Landroidx/preference/internal/AbstractMultiSelectListPreference;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/x/o;->Qa()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method

.method public a(Lb/b/a/l$a;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lb/x/o;->a(Lb/b/a/l$a;)V

    .line 2
    iget-object v0, p0, Lb/x/k;->ua:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 3
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    iget-object v3, p0, Lb/x/k;->ra:Ljava/util/Set;

    iget-object v4, p0, Lb/x/k;->ua:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/x/k;->ta:[Ljava/lang/CharSequence;

    new-instance v2, Lb/x/j;

    invoke-direct {v2, p0}, Lb/x/j;-><init>(Lb/x/k;)V

    invoke-virtual {p1, v0, v1, v2}, Lb/b/a/l$a;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lb/b/a/l$a;

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 3

    .line 5
    invoke-super {p0, p1}, Lb/x/o;->c(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lb/x/k;->Sa()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->R()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->S()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lb/x/k;->ra:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 9
    iget-object v1, p0, Lb/x/k;->ra:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->T()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    iput-boolean v0, p0, Lb/x/k;->sa:Z

    .line 11
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->R()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/x/k;->ta:[Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->S()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/x/k;->ua:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    iget-object v1, p0, Lb/x/k;->ra:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 15
    iget-object v1, p0, Lb/x/k;->ra:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lb/x/k;->sa:Z

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/x/k;->ta:[Ljava/lang/CharSequence;

    const-string v0, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/x/k;->ua:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/x/o;->e(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb/x/k;->ra:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.values"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3
    iget-boolean v0, p0, Lb/x/k;->sa:Z

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lb/x/k;->ta:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lb/x/k;->ua:[Ljava/lang/CharSequence;

    const-string v1, "MultiSelectListPreferenceDialogFragmentCompat.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public m(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/x/k;->Sa()Landroidx/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lb/x/k;->sa:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lb/x/k;->ra:Ljava/util/Set;

    .line 4
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/preference/internal/AbstractMultiSelectListPreference;->c(Ljava/util/Set;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lb/x/k;->sa:Z

    return-void
.end method
