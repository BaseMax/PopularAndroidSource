.class public final Lc/c/a/h/a/Ca$mb;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lc/c/a/h/b/Ga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "mb"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/h/a/Ca;


# direct methods
.method public constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$lb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lc/c/a/h/a/Ca$mb;->a:Lc/c/a/h/a/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$lb;Lc/c/a/h/a/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/h/a/Ca$mb;-><init>(Lc/c/a/h/a/Ca;Lc/c/a/h/a/Ca$lb;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$mb;->b(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-virtual {p0, p1}, Lc/c/a/h/a/Ca$mb;->a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;)Lcom/farsitel/bazaar/ui/settings/SettingsFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/h/a/Ca$mb;->a:Lc/c/a/h/a/Ca;

    .line 2
    invoke-static {v0}, Lc/c/a/h/a/Ca;->s(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/F$b;

    .line 3
    invoke-static {p1, v0}, Lc/c/a/n/x/m;->a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Lb/r/F$b;)V

    .line 4
    iget-object v0, p0, Lc/c/a/h/a/Ca$mb;->a:Lc/c/a/h/a/Ca;

    .line 5
    invoke-static {v0}, Lc/c/a/h/a/Ca;->t(Lc/c/a/h/a/Ca;)Lg/a/a;

    move-result-object v0

    invoke-interface {v0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/c;

    .line 6
    invoke-static {p1, v0}, Lc/c/a/n/x/m;->a(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Lc/c/a/d/d/c;)V

    return-object p1
.end method