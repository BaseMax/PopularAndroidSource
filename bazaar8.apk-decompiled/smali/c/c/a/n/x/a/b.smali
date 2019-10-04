.class public final Lc/c/a/n/x/a/b;
.super Ljava/lang/Object;
.source "ScheduleUpdatePreference.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->c(Lb/x/B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/x/a/b;->a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/x/a/b;->a:Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference;->O()Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/farsitel/bazaar/ui/settings/scheduleupdate/ScheduleUpdatePreference$b;->a()V

    :cond_0
    return-void
.end method
