.class public Lf/a/a/e/n;
.super Ljava/lang/Object;
.source "InlineSpamConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/o;->a()Lb/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/o;


# direct methods
.method public constructor <init>(Lf/a/a/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/n;->a:Lf/a/a/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/e/n;->a:Lf/a/a/e/o;

    invoke-static {p1}, Lf/a/a/e/o;->a(Lf/a/a/e/o;)Lf/a/a/e/o$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf/a/a/e/n;->a:Lf/a/a/e/o;

    invoke-static {p1}, Lf/a/a/e/o;->a(Lf/a/a/e/o;)Lf/a/a/e/o$a;

    move-result-object p1

    invoke-interface {p1}, Lf/a/a/e/o$a;->a()V

    :cond_0
    return-void
.end method
