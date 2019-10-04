.class public final Lc/c/a/n/x/h;
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

    iput-object p1, p0, Lc/c/a/n/x/h;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/x/h;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->db()Lc/c/a/n/x/a;

    move-result-object p1

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lc/c/a/n/x/a;->c(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
