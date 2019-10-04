.class public Lf/a/a/e/e;
.super Ljava/lang/Object;
.source "InlineActivity.java"

# interfaces
.implements Lf/a/a/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/InlineActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a/c/e<",
        "Lir/cafebazaar/inline/platform/InlineApplication;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lir/cafebazaar/inline/ui/InlineActivity;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/InlineActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    iput-object p2, p0, Lf/a/a/e/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    iget-object v0, v0, Lir/cafebazaar/inline/ui/InlineActivity;->r:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    .line 5
    iget-object v0, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    iget-object v0, v0, Lir/cafebazaar/inline/ui/InlineActivity;->r:Lf/a/a/e/m;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    sget p2, Lf/a/a/g;->update_bazaar_to_run_inline:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string p2, "bazaar://details?id=com.farsitel.bazaar"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 9
    iget-object p2, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    iget-object p1, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/InlineActivity;->finish()V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lf/a/a/e/j;

    iget-object v1, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    .line 12
    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lf/a/a/c/d;->b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    .line 13
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/InlineActivity;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lf/a/a/c/d;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, p2}, Lf/a/a/e/j;-><init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lf/a/a/g/c;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lir/cafebazaar/inline/platform/InlineApplication;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/a/a/e/e;->b:Lir/cafebazaar/inline/ui/InlineActivity;

    invoke-static {v0, p1}, Lir/cafebazaar/inline/ui/InlineActivity;->a(Lir/cafebazaar/inline/ui/InlineActivity;Lir/cafebazaar/inline/platform/InlineApplication;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {p0, p1}, Lf/a/a/e/e;->a(Lir/cafebazaar/inline/platform/InlineApplication;)V

    return-void
.end method
