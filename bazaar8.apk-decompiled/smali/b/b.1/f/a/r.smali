.class public Lb/b/f/a/r;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/f/a/s;


# direct methods
.method public constructor <init>(Lb/b/f/a/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/a/r;->a:Lb/b/f/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/f/a/r;->a:Lb/b/f/a/s;

    invoke-virtual {v0}, Lb/b/f/a/s;->e()V

    return-void
.end method
