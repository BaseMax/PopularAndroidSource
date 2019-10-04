.class public final Lc/c/a/n/x/e;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->ab()V
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

    iput-object p1, p0, Lc/c/a/n/x/e;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/x/e;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->d(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/n/x/e;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {v2}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lc/c/a/n/x/i;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Ljava/util/Calendar;Lc/c/a/n/x/a/c$b;)V

    return-void
.end method
