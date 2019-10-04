.class public Lf/a/a/e/i;
.super Ljava/lang/Object;
.source "InlineErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/j;->a()Lb/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/j;


# direct methods
.method public constructor <init>(Lf/a/a/e/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/i;->a:Lf/a/a/e/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/e/i;->a:Lf/a/a/e/j;

    invoke-static {p1}, Lf/a/a/e/j;->a(Lf/a/a/e/j;)Lb/b/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
