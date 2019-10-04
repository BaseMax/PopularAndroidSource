.class public Lf/a/a/e/d;
.super Ljava/lang/Object;
.source "InlineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/InlineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lir/cafebazaar/inline/ui/InlineActivity;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/InlineActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/d;->a:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/e/d;->a:Lir/cafebazaar/inline/ui/InlineActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Z)V

    return-void
.end method
