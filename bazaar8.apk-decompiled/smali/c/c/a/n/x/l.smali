.class public final Lc/c/a/n/x/l;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/settings/SettingsFragment;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/settings/SettingsFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/x/l;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    iput-object p2, p0, Lc/c/a/n/x/l;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/x/l;->a:Lcom/farsitel/bazaar/ui/settings/SettingsFragment;

    invoke-static {p1}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    return-void
.end method
