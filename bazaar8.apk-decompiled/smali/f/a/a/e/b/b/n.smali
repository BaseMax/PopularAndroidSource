.class public Lf/a/a/e/b/b/n;
.super Ljava/lang/Object;
.source "ChoicesPopup.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/e/b/b/o;->a(Landroid/view/LayoutInflater;Lf/a/a/e/g;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/e/b/b/o$a;

.field public final synthetic b:Lf/a/a/e/b/b/o;


# direct methods
.method public constructor <init>(Lf/a/a/e/b/b/o;Lf/a/a/e/b/b/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/n;->b:Lf/a/a/e/b/b/o;

    iput-object p2, p0, Lf/a/a/e/b/b/n;->a:Lf/a/a/e/b/b/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/a/a/e/b/b/n;->a:Lf/a/a/e/b/b/o$a;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lf/a/a/e/b/b/o$a;->a(Ljava/lang/String;)V

    return-void
.end method
