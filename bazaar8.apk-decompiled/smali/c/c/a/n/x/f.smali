.class public final Lc/c/a/n/x/f;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Landroidx/preference/Preference$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/x/f;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->N()Z

    move-result v0

    if-eqz p2, :cond_2

    .line 2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-eq v0, p2, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lc/c/a/n/x/f;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->c(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lc/c/a/d/a/d;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/farsitel/bazaar/core/app/Permission;->WRITE_EXTERNAL_STORAGE:Lcom/farsitel/bazaar/core/app/Permission;

    invoke-static {p2}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lc/c/a/n/x/f;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const/16 v1, 0x30a8

    .line 6
    invoke-virtual {p1, p2, v0, v1}, Lc/c/a/d/a/d;->a(Ljava/util/List;Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->d(Z)V

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 8
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type androidx.preference.CheckBoxPreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
