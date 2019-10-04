.class public Lf/a/a/e/o;
.super Lf/a/a/g/c;
.source "InlineSpamConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/o$a;
    }
.end annotation


# instance fields
.field public c:Lf/a/a/e/o$a;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Lf/a/a/e/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/c;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/e/o;->c:Lf/a/a/e/o$a;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/o;)Lf/a/a/e/o$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/o;->c:Lf/a/a/e/o$a;

    return-object p0
.end method


# virtual methods
.method public a()Lb/b/a/l;
    .locals 3

    .line 2
    new-instance v0, Lb/b/a/l$a;

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/h;->DialogInline:I

    invoke-direct {v0, v1, v2}, Lb/b/a/l$a;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lf/a/a/g;->you_want_to_report_review:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/l$a;->a(Ljava/lang/CharSequence;)Lb/b/a/l$a;

    .line 4
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lf/a/a/g;->ok:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lf/a/a/e/n;

    invoke-direct {v2, p0}, Lf/a/a/e/n;-><init>(Lf/a/a/e/o;)V

    invoke-virtual {v0, v1, v2}, Lb/b/a/l$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lb/b/a/l$a;

    .line 5
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lf/a/a/g;->inline_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/b/a/l$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lb/b/a/l$a;

    .line 6
    invoke-virtual {v0}, Lb/b/a/l$a;->a()Lb/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->f()Z

    return-void
.end method
