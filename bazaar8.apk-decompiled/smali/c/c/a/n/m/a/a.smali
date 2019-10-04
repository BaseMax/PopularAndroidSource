.class public final Lc/c/a/n/m/a/a;
.super Ljava/lang/Object;
.source "LocationPermissionDialog.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/m/a/a;->a:Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/m/a/a;->a:Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;

    sget v0, Lc/c/a/e;->commitButton:I

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/ui/home/location/LocationPermissionDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const-string v0, "commitButton"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
