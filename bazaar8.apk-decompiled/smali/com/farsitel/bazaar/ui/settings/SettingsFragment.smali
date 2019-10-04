.class public final Lcom/farsitel/bazaar/ui/settings/SettingsFragment;
.super Lb/x/r;
.source "SettingsFragment.kt"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/settings/SettingsFragment$a;
    }
.end annotation


# static fields
.field public static final ia:Lcom/farsitel/bazaar/ui/settings/SettingsFragment$a;


# instance fields
.field public ja:Lb/r/F$b;

.field public ka:Lc/c/a/d/d/c;

.field public la:Lc/c/a/n/x/a;

.field public ma:Lc/c/a/d/a/d;

.field public final na:Lc/c/a/n/x/k;

.field public final oa:Landroidx/preference/Preference$b;

.field public final pa:Lc/c/a/n/x/j;

.field public final qa:Lc/c/a/n/x/i;

.field public ra:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ia:Lcom/farsitel/bazaar/ui/settings/SettingsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/x/r;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/n/x/k;

    invoke-direct {v0, p0}, Lc/c/a/n/x/k;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->na:Lc/c/a/n/x/k;

    .line 3
    sget-object v0, Lc/c/a/n/x/c;->a:Lc/c/a/n/x/c;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->oa:Landroidx/preference/Preference$b;

    .line 4
    new-instance v0, Lc/c/a/n/x/j;

    invoke-direct {v0, p0}, Lc/c/a/n/x/j;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->pa:Lc/c/a/n/x/j;

    .line 5
    new-instance v0, Lc/c/a/n/x/i;

    invoke-direct {v0, p0}, Lc/c/a/n/x/i;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->qa:Lc/c/a/n/x/i;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lc/c/a/n/x/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->qa:Lc/c/a/n/x/i;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Ljava/util/Calendar;Lc/c/a/n/x/a/c$b;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->a(Ljava/util/Calendar;Lc/c/a/n/x/a/c$b;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lc/c/a/n/x/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->pa:Lc/c/a/n/x/j;

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lc/c/a/d/a/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ma:Lc/c/a/d/a/d;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "permissionManager"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Ljava/util/Calendar;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->bb()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Ljava/util/Calendar;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->cb()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Wa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ra:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Xa()V
    .locals 4

    const-string v0, "about_bazaar"

    .line 1
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "findPreference(KEY_ABOUT_BAZAAR)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "8.3.7"

    aput-object v3, v1, v2

    const v2, 0x7f10001c

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Ya()V
    .locals 4

    const-string v0, "client_id"

    .line 1
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "findPreference(KEY_DEVICE_IDENTIFIER)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 2
    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->d(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const v0, 0x7f10023e

    .line 4
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final Za()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ma:Lc/c/a/d/a/d;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/farsitel/bazaar/core/app/Permission;->WRITE_EXTERNAL_STORAGE:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-virtual {v0, v1, p0}, Lc/c/a/d/a/d;->a(Lcom/farsitel/bazaar/core/app/Permission;Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "keep_backup_of_apps"

    .line 2
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->d(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "permissionManager"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final _a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ma:Lc/c/a/d/a/d;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/farsitel/bazaar/core/app/Permission;->ACCESS_COARSE_LOCATION:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-virtual {v0, v1, p0}, Lc/c/a/d/a/d;->a(Lcom/farsitel/bazaar/core/app/Permission;Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "location_base_offer"

    .line 2
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->d(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "permissionManager"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/String;[I)V

    .line 39
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ma:Lc/c/a/d/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p0}, Lc/c/a/d/a/d;->a(I[Ljava/lang/String;[ILandroidx/fragment/app/Fragment;)V

    return-void

    :cond_0
    const-string p1, "permissionManager"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ld/a/a/a;->b(Landroidx/fragment/app/Fragment;)V

    .line 5
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lb/x/r;->Oa()Lb/x/y;

    move-result-object p1

    const-string p2, "preferenceManager"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/e/d/u/a;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/x/y;->a(Ljava/lang/String;)V

    const p1, 0x7f130002

    .line 23
    invoke-virtual {p0, p1}, Lb/x/r;->e(I)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->g(Z)V

    const-string p1, "locale"

    .line 25
    invoke-virtual {p0, p1}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const-string p2, "findPreference(KEY_LOCALE)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->c(Landroidx/preference/Preference;)V

    const-string p1, "update_network_type"

    .line 26
    invoke-virtual {p0, p1}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const-string p2, "findPreference(KEY_UPDATE_NETWORK_TYPE)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->c(Landroidx/preference/Preference;)V

    .line 27
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->Ya()V

    .line 28
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->Xa()V

    const-string p1, "keep_backup_of_apps"

    .line 29
    invoke-virtual {p0, p1}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/c/a/n/x/f;

    invoke-direct {p2, p0}, Lc/c/a/n/x/f;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    const-string p1, "location_base_offer"

    .line 30
    invoke-virtual {p0, p1}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/c/a/n/x/g;

    invoke-direct {p2, p0}, Lc/c/a/n/x/g;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    const-string p1, "bandwidth_optimization"

    .line 31
    invoke-virtual {p0, p1}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    new-instance p2, Lc/c/a/n/x/h;

    invoke-direct {p2, p0}, Lc/c/a/n/x/h;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lb/x/r;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ja:Lb/r/F$b;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p0, p2}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p2

    const-class v0, Lc/c/a/n/x/a;

    invoke-virtual {p2, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p2

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p2, Lc/c/a/n/x/a;

    .line 10
    invoke-virtual {p2}, Lc/c/a/n/x/a;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/settings/SettingsFragment$onViewCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 11
    iput-object p2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    .line 12
    new-instance p2, Lc/c/a/d/a/d;

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->na:Lc/c/a/n/x/k;

    invoke-direct {p2, v0}, Lc/c/a/d/a/d;-><init>(Lc/c/a/d/a/c;)V

    iput-object p2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ma:Lc/c/a/d/a/d;

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ab()V

    .line 14
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->Za()V

    .line 15
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->_a()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->b(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "viewModelFactory"

    .line 17
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "messageManager"

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ka:Lc/c/a/d/d/c;

    if-eqz p1, :cond_0

    const v0, 0x7f1001b2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 20
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ka:Lc/c/a/d/d/c;

    if-eqz p1, :cond_2

    const v0, 0x7f10005a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_3
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state of setting clear search state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Calendar;Lc/c/a/n/x/a/c$b;)V
    .locals 3

    const/16 v0, 0xb

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    .line 33
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 34
    sget-object v1, Lc/c/a/n/x/a/c;->ja:Lc/c/a/n/x/a/c$a;

    new-instance v2, Lc/c/a/n/x/a/c$c;

    invoke-direct {v2, v0, p1}, Lc/c/a/n/x/a/c$c;-><init>(II)V

    invoke-virtual {v1, v2}, Lc/c/a/n/x/a/c$a;->a(Lc/c/a/n/x/a/c$c;)Lc/c/a/n/x/a/c;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lc/c/a/n/x/a/c;->a(Lc/c/a/n/x/a/c$b;)V

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()Lb/o/a/n;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "update_scheduling"

    .line 37
    invoke-virtual {p1, p2, v0}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final ab()V
    .locals 2

    const-string v0, "update_scheduling"

    .line 1
    invoke-virtual {p0, v0}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->cb()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->b(Ljava/util/Calendar;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->bb()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Ljava/util/Calendar;)V

    .line 4
    new-instance v1, Lc/c/a/n/x/d;

    invoke-direct {v1, p0}, Lc/c/a/n/x/d;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->b(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;)V

    .line 5
    new-instance v1, Lc/c/a/n/x/e;

    invoke-direct {v1, p0}, Lc/c/a/n/x/e;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0089

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006b

    if-eqz p1, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0387

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f1001bc

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a00b2

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v4, Lc/c/a/n/x/l;

    invoke-direct {v4, p0, p1}, Lc/c/a/n/x/l;-><init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 9
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    const-class v1, Lcom/farsitel/bazaar/ui/home/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/preference/Preference;)Z
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "requireContext()"

    const-string v6, "viewModel"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "update_scheduling"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 12
    iget-object v7, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v7, :cond_3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lc/c/a/n/x/a;->a(Lc/c/a/n/x/a;IIIIILjava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/x/a;->f()V

    goto/16 :goto_1

    :cond_2
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    const-string v2, "copyright"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lc/c/a/n/x/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v0}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    const-string v0, "see_bazaar_in_system_setting"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18
    sget-object v0, Lc/c/a/c/h/e;->a:Lc/c/a/c/h/e;

    const-string v1, "com.farsitel.bazaar"

    invoke-virtual {v0, v1}, Lc/c/a/c/h/e;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "about_bazaar"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lc/c/a/n/x/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v0}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    const-string v2, "privacy"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lc/c/a/n/x/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v0}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    const-string v0, "release_notes"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/d;->a:Lc/c/a/d$l;

    invoke-virtual {v1}, Lc/c/a/d$l;->j()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "suggest"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.suggest_desc)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.suggest_subject)"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lc/c/a/c/g/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "client_id"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    invoke-virtual {p0, v2}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "findPreference(KEY_DEVICE_IDENTIFIER)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->d(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 30
    invoke-static {v1}, Lh/k/m;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    if-nez v4, :cond_d

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {v2, v1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_9
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ka:Lc/c/a/d/d/c;

    if-eqz v1, :cond_a

    const v0, 0x7f100082

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string p1, "messageManager"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    const-string v2, "terms_of_service"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lc/c/a/n/x/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v3, v0}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_b
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    const-string v2, "clear_search_history"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 36
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lc/c/a/n/x/a;->h()V

    goto :goto_1

    :cond_c
    invoke-static {v6}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Lb/x/r;->b(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ebe82d1 -> :sswitch_9
        -0x7c2da9fb -> :sswitch_8
        -0x717e19f1 -> :sswitch_7
        -0x6f10907c -> :sswitch_6
        -0x2fd28777 -> :sswitch_5
        -0x12bedc78 -> :sswitch_4
        -0x6c20cb7 -> :sswitch_3
        0x55c4091e -> :sswitch_2
        0x5ac573c7 -> :sswitch_1
        0x70925aca -> :sswitch_0
    .end sparse-switch
.end method

.method public final bb()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/x/a;->n()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Landroidx/preference/Preference;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->oa:Landroidx/preference/Preference$b;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference$b;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->oa:Landroidx/preference/Preference$b;

    .line 4
    invoke-virtual {p0}, Lb/x/r;->Oa()Lb/x/y;

    move-result-object v1

    const-string v2, "preferenceManager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method

.method public final cb()Ljava/util/Calendar;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/x/a;->m()Ljava/util/Calendar;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Oa()Lb/x/y;

    move-result-object v0

    const-string v1, "preferenceManager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/x/y;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->m()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final db()Lc/c/a/n/x/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->la:Lc/c/a/n/x/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4169f1a6

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "locale"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "fa"

    .line 2
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 3
    :goto_0
    sget-object p2, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Lc/c/a/d/g/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 4
    sget-object p1, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/app/BazaarApp;->a(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lb/x/r;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->Wa()V

    return-void
.end method

.method public sa()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->sa()V

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public ta()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ta()V

    .line 2
    invoke-virtual {p0}, Lb/x/r;->Pa()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
