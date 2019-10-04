.class public Lf/a/a/g/a/f;
.super Landroid/content/BroadcastReceiver;
.source "AddressPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/g/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/f;->a:Lf/a/a/g/a/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/g/a/f;->a:Lf/a/a/g/a/n;

    invoke-static {p1}, Lf/a/a/g/a/n;->c(Lf/a/a/g/a/n;)V

    return-void
.end method
