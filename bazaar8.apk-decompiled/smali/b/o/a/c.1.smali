.class public Lb/o/a/c;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/o/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/o/a/d;


# direct methods
.method public constructor <init>(Lb/o/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/o/a/c;->a:Lb/o/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/o/a/c;->a:Lb/o/a/d;

    iget-object v1, v0, Lb/o/a/d;->fa:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lb/o/a/d;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
