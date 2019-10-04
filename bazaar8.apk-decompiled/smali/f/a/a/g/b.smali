.class public Lf/a/a/g/b;
.super Ljava/lang/Object;
.source "InlineDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/c;


# direct methods
.method public constructor <init>(Lf/a/a/g/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b;->a:Lf/a/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/g/b;->a:Lf/a/a/g/c;

    invoke-virtual {p1}, Lf/a/a/g/c;->e()V

    .line 2
    iget-object p1, p0, Lf/a/a/g/b;->a:Lf/a/a/g/c;

    invoke-virtual {p1}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/d/d;->a()V

    return-void
.end method
