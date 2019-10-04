.class public final Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;
.super Ljava/lang/Object;
.source "ScheduleUpdatePreference.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;->a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;->a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$a;->a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->d(Z)V

    .line 4
    sget-object p2, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    .line 5
    new-instance v0, Lc/c/a/a/a/a;

    .line 6
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/ScheduleUpdateItemClick;

    .line 7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 8
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-direct {v1, p1, v2}, Lcom/farsitel/bazaar/analytics/model/what/ScheduleUpdateItemClick;-><init>(ZLjava/lang/String;)V

    .line 10
    new-instance p1, Lcom/farsitel/bazaar/analytics/model/where/SettingsScreen;

    invoke-direct {p1}, Lcom/farsitel/bazaar/analytics/model/where/SettingsScreen;-><init>()V

    const-string v2, "user"

    .line 11
    invoke-direct {v0, v2, v1, p1}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    .line 12
    invoke-virtual {p2, v0}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void
.end method
