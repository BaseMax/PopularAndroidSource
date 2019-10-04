.class public final Lc/c/a/n/x/k;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Lc/c/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/settings/SettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/16 v0, 0x30a8

    const-string v1, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30a9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "location_base_offer"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/d;->a:Lc/c/a/d$l;

    .line 3
    iget-object v1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.enable_location_in_setting)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v1, v2, v3}, Lc/c/a/d$l;->a(Lc/c/a/d$l;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "keep_backup_of_apps"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .locals 3

    const/16 v0, 0x30a8

    const-string v1, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30a9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "location_base_offer"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "keep_backup_of_apps"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)V
    .locals 3

    const/16 v0, 0x30a8

    const-string v1, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x30a9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "location_base_offer"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_2
    iget-object p1, p0, Lc/c/a/n/x/k;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string v0, "keep_backup_of_apps"

    invoke-virtual {p1, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
