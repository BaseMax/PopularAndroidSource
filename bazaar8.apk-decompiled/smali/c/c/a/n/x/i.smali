.class public final Lc/c/a/n/x/i;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Lc/c/a/n/x/a/c$b;


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
    iput-object p1, p0, Lc/c/a/n/x/i;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/i;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->db()Lc/c/a/n/x/a;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v1 .. v7}, Lc/c/a/n/x/a;->a(Lc/c/a/n/x/a;IIIIILjava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/x/i;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    const-string p2, "update_scheduling"

    invoke-virtual {p1, p2}, Lb/x/r;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    .line 3
    iget-object p2, p0, Lc/c/a/n/x/i;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {p2}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->d(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->a(Ljava/util/Calendar;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.farsitel.bazaar.ui.settings.scheduleupdate.ScheduleUpdatePreference"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
